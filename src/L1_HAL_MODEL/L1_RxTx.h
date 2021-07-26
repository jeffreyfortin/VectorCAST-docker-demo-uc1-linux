#ifndef _RXTX_H
#define _RXTX_H

/*
 *  Memory Mapped Device Addresses
 */
#define COMM_DEVICE_MEMORY_BASE  ((unsigned int *)(0x8000000))
#define COMM_STATUS_REG          ((unsigned int *)(COMM_DEVICE_MEMORY_BASE + 0x100))
#define COMM_COMMAND_REG         ((unsigned int *)(COMM_DEVICE_MEMORY_BASE + 0x200))
#define COMM_TX_BUFFER           ((unsigned int *)(COMM_DEVICE_MEMORY_BASE + 0x400))
#define COMM_RX_BUFFER           ((unsigned int *)(COMM_DEVICE_MEMORY_BASE + 0x800))

/*
 * Status Register Bits.
 */
#define GENERAL_ERROR	0x00000001
#define TX_ERROR	0x00000002
#define RX_ERROR	0x00000004
#define TX_COMPLETE	0x00000008
#define RX_DATA_RDY	0x00000010

/*
 * Command Register Bits.
 */
#define DEVICE_RESET	0x00000001
#define TX_ACK  	0x00000002
#define RX_ACK  	0x00000005



enum e_led_color
{
  RED,
  GREEN,
  OFF
}
  ;
typedef enum e_led_color t_led_color;

#define RX_LED 1
#define TX_LED 2
#define RESET_LED 3

void led_ctrl(int led_num, t_led_color color);
int post_msg(void *msg_ptr);

#endif
