#include "qcc74x_mtimer.h"
#include "qcc74x_uart.h"
#include "board.h"

struct qcc74x_device_s *uart0;

static void uart_send_string(const char *str)
{
    while (*str) {
        qcc74x_uart_putchar(uart0, *str++);
    }
}

int main(void)
{
    board_init();
    board_uartx_gpio_init();

    uart0 = qcc74x_device_get_by_name("uart0");
    if (!uart0) {
        while (1);
    }

    struct qcc74x_uart_config_s cfg = {
        .baudrate = 115200,
        .data_bits = UART_DATA_BITS_8,
        .stop_bits = UART_STOP_BITS_1,
        .parity    = UART_PARITY_NONE,
        .flow_ctrl = UART_FLOWCTRL_NONE,
        .tx_fifo_threshold = 0,
        .rx_fifo_threshold = 0,
        .bit_order = UART_LSB_FIRST,
    };

    qcc74x_uart_init(uart0, &cfg);

    while (1) {
        uart_send_string("Hello\r\n");
        qcc74x_mtimer_delay_ms(1000);
    }
}
