#include <stdio.h>
#include "qcc74x_mtimer.h"
#include "qcc74x_spi.h"
#include "qcc74x_gpio.h"
#include "qcc74x_uart.h"
#include "board.h"

#define SPI_CS_PIN      GPIO_PIN_12
#define SPI_SCK_PIN     GPIO_PIN_13
#define SPI_MISO_PIN    GPIO_PIN_14
#define SPI_MOSI_PIN    GPIO_PIN_15

static struct qcc74x_device_s *spi0;
static struct qcc74x_device_s *console_uart;
static struct qcc74x_device_s *gpio;

// INTERNAL CONSOLE INIT
static void console_init(void) {
    board_uartx_gpio_init();
    console_uart = qcc74x_device_get_by_name(DEFAULT_TEST_UART);
    struct qcc74x_uart_config_s cfg = {
        .baudrate = 115200, .data_bits = UART_DATA_BITS_8, .stop_bits = UART_STOP_BITS_1,
        .parity = UART_PARITY_NONE, .flow_ctrl = UART_FLOWCTRL_NONE,
        .tx_fifo_threshold = 0, .rx_fifo_threshold = 0, .bit_order = UART_LSB_FIRST
    };
    qcc74x_uart_init(console_uart, &cfg);
}

void spi_slave_init(void) {
    gpio = qcc74x_device_get_by_name("gpio");
    qcc74x_gpio_init(gpio, SPI_CS_PIN,   GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_SCK_PIN,  GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_MISO_PIN, GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_MOSI_PIN, GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);

    struct qcc74x_spi_config_s spi_cfg = {
        .freq = 1000000, .role = SPI_ROLE_SLAVE, .mode = SPI_MODE3,
        .data_width = SPI_DATA_WIDTH_8BIT, .bit_order = SPI_BIT_MSB, .byte_order = SPI_BYTE_LSB,
        .tx_fifo_threshold = 0, .rx_fifo_threshold = 0,
    };
    spi0 = qcc74x_device_get_by_name("spi0");
    qcc74x_spi_init(spi0, &spi_cfg);
}

int main(void) {
    board_init();
    console_init();
    spi_slave_init();

    printf("\r\n=== SLAVE READY ===\r\n");

    uint8_t rx_buf[4];
    uint8_t tx_dummy[4] = {0,0,0,0};

    while (1) {
        // Wait for data
        qcc74x_spi_poll_exchange(spi0, tx_dummy, rx_buf, 4);

        if (rx_buf[0] == 0xAA) {
            printf("RX TIME: %02d:%02d:%02d\r\n", rx_buf[1], rx_buf[2], rx_buf[3]);
        } else {
            // Print raw if sync fails, helps debugging
            printf("RX ERROR: %02X %02X %02X %02X\r\n", rx_buf[0], rx_buf[1], rx_buf[2], rx_buf[3]);
            qcc74x_spi_feature_control(spi0, SPI_CMD_CLEAR_RX_FIFO, 0);
        }
    }
}
