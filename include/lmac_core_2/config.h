// config.h
//
// A collection of configurations, definitions, and macros.

#ifndef LMAC_CORE_2_CONFIG_H__
#define LMAC_CORE_2_CONFIG_H__

// fundamental
#define BYTE_BIT_WID 8
#define QWRD_BYTE_CNT 8
#define QWRD_BIT_WID (QWRD_BYTE_CNT * BYTE_BIT_WID)

// design spec.
#define USER_INTERFACE_BIT_WID 64 // same between Tx and Ux
#define TX_FIFO_STATUS_BIT_WID 10 // to indicate the # of qwords
#define USER_INTERFACE_BYTE_CNT (USER_INTERFACE_BIT_WID / BYTE_BIT_WID)

#define TX_BUFF_BYTE_CNT 64 // minimum Ethernet packet size is 64
#define TX_BUFF_QWRD_CNT (TX_BUFF_BYTE_CNT / QWORD_BYTE_CNT)
#define TX_BUFF_ADDR_BIT_WID USER_INTERFACE_BIT_WID // reduce operations
#define TX_BUFF_DATA_BIT_WID USER_INTERFACE_BIT_WID // reduce array size

#endif // LMAC_CORE_2_CONFIG_H__

