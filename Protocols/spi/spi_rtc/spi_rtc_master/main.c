#include "board.h"
#include "qcc74x_mtimer.h"
#include "qcc74x_i2c.h"
#include "qcc74x_gpio.h"
#include "qcc74x_spi.h"
#include <stdio.h>

// ================= PINS =================
#define SPI_CS_PIN      GPIO_PIN_12
#define SPI_SCK_PIN     GPIO_PIN_13
#define SPI_MISO_PIN    GPIO_PIN_14
#define SPI_MOSI_PIN    GPIO_PIN_15

// RTC on Pins 10 & 11
#define RTC_SCL_PIN     GPIO_PIN_10
#define RTC_SDA_PIN     GPIO_PIN_11
#define DS1307_ADDR     0x68

static struct qcc74x_device_s *spi0;
static struct qcc74x_device_s *gpio;
static struct qcc74x_device_s *i2c0;

// Util
static uint8_t bcd_to_dec(uint8_t v) { return ((v >> 4) * 10) + (v & 0x0F); }

void system_init(void) {
    gpio = qcc74x_device_get_by_name("gpio");
    
    // SPI PINS (12-15)
    qcc74x_gpio_init(gpio, SPI_SCK_PIN,  GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_MISO_PIN, GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_MOSI_PIN, GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_CS_PIN,   GPIO_OUTPUT | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_set(gpio, SPI_CS_PIN); // Set High

    // RTC PINS (10-11)
    qcc74x_gpio_init(gpio, RTC_SCL_PIN, GPIO_FUNC_I2C0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, RTC_SDA_PIN, GPIO_FUNC_I2C0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
}

void spi_init(void) {
    struct qcc74x_spi_config_s spi_cfg = {
        .freq = 500000, .role = SPI_ROLE_MASTER, .mode = SPI_MODE3,
        .data_width = SPI_DATA_WIDTH_8BIT, .bit_order = SPI_BIT_MSB, .byte_order = SPI_BYTE_LSB,
        .tx_fifo_threshold = 0, .rx_fifo_threshold = 0,
    };
    spi0 = qcc74x_device_get_by_name("spi0");
    qcc74x_spi_init(spi0, &spi_cfg);
}

int main(void) {
    board_init();
    system_init();
    
    i2c0 = qcc74x_device_get_by_name("i2c0");
    qcc74x_i2c_init(i2c0, 100000);
    spi_init();

    uint8_t h, m, s;
    uint8_t tx_buf[4];
    uint8_t rx_dummy[4];
    struct qcc74x_i2c_msg_s msg[2];
    uint8_t reg = 0x00;
    uint8_t i2c_buf[3];

    printf("MASTER: Ready. Sending SPI even if I2C fails.\r\n");

    while (1) {
        // 1. Try Read RTC
        msg[0].addr = DS1307_ADDR; msg[0].flags = I2C_M_NOSTOP; msg[0].buffer = &reg; msg[0].length = 1;
        msg[1].addr = DS1307_ADDR; msg[1].flags = I2C_M_READ;   msg[1].buffer = i2c_buf; msg[1].length = 3;

        if (qcc74x_i2c_transfer(i2c0, msg, 2) == 0) {
            s = bcd_to_dec(i2c_buf[0] & 0x7F);
            m = bcd_to_dec(i2c_buf[1]);
            h = bcd_to_dec(i2c_buf[2] & 0x3F);
        } else {
            // I2C FAILED - Send Dummy Data so SPI still works
            h = 99; m = 99; s = 99;
            printf("I2C Fail (Check RTC). Sending 99:99:99\r\n");
        }

        // 2. Prepare & Send SPI
        tx_buf[0] = 0xAA; // Sync
        tx_buf[1] = h;
        tx_buf[2] = m;
        tx_buf[3] = s;

        qcc74x_gpio_reset(gpio, SPI_CS_PIN); // CS Low
        qcc74x_spi_poll_exchange(spi0, tx_buf, rx_dummy, 4);
        qcc74x_gpio_set(gpio, SPI_CS_PIN);   // CS High

        if(h != 99) printf("Sent: %02d:%02d:%02d\r\n", h, m, s);
        
        qcc74x_mtimer_delay_ms(1000);
    }
}
