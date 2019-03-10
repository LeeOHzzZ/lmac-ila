// config.h
//
// A collection of configurations, definitions, and macros.

#ifndef LMAC_CORE_2_CONFIG_H__
#define LMAC_CORE_2_CONFIG_H__

#define QWORD_BYTE_NUM 8
#define QWORD_BIT_WID (QWORD_BYTE_NUM * 8)
#define USER_INTERFACE_BIT_WID 64 // same between Tx and Ux
#define TX_FIFO_STATUS_BIT_WID 10 // to indicate the # of qwords

#define TX_FIFO_BUFF_BYTE_SIZE 64 // minimum Ethernet packet size is 64
#define TX_FIFO_BUFF_QWORD_NUM (TX_FIFO_BUFF_BYTE_SIZE / QWORD_BYTE_NUM)
#define TX_FIFO_BUFF_ADDR_BIT_WID TX_FIFO_STATUS_BIT_WID
#define TX_FIFO_BUFF_DATA_BIT_WID USER_INTERFACE_BIT_WID

#endif // LMAC_CORE_2_CONFIG_H__

