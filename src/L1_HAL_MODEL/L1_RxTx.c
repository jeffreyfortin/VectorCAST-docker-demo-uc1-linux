#include "stdio.h"
#include "L1_RxTx.h"

int rx_cnt=0;
int tx_cnt=0;

void comm_isr(void)
{
	unsigned int sts_reg;

	sts_reg = *COMM_STATUS_REG;
	if (sts_reg & TX_COMPLETE)
	{
		*COMM_COMMAND_REG = *COMM_COMMAND_REG | TX_ACK;
		led_ctrl(TX_LED, GREEN );
		tx_cnt++;
	}
	else if (sts_reg & TX_ERROR)
	{
		*COMM_COMMAND_REG = *COMM_COMMAND_REG | TX_ACK;
		led_ctrl(TX_LED, RED );
	}

	else if (sts_reg & RX_DATA_RDY)
	{
		post_msg(COMM_RX_BUFFER);
		*COMM_COMMAND_REG = *COMM_COMMAND_REG | RX_ACK;
		led_ctrl(RX_LED, GREEN );
		rx_cnt++;
	}
	else if (sts_reg & RX_ERROR)
	{
		*COMM_COMMAND_REG = *COMM_COMMAND_REG | RX_ACK;
		led_ctrl(RX_LED, RED );
	}

	else if (sts_reg & GENERAL_ERROR)
	{
		*COMM_COMMAND_REG = *COMM_COMMAND_REG | DEVICE_RESET;
		led_ctrl(RESET_LED, RED );
	}

	return;
}
