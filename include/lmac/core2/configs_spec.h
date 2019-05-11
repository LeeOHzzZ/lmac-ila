// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: configs_spec.h

// specification
//  - hardware parameters documented in the specification/documentation
//  - behavior defined in the specification/documentation

#ifndef LMAC_CORE2_CONFIGS_SPEC_H__
#define LMAC_CORE2_CONFIGS_SPEC_H__

namespace ilang {

// ------------------------- TX FIFO Interface ------------------------------ //

// Write enable.  1 = data is valid on the TX_DATA bus. 0 = no data is on the
// data bus
#define TX_WE "TX_WE"
#define TX_WE_BWID 1
#define TX_WE_V_VALID 1

// 64-bit data bus
// The first qword sent by the user logic is the byte count of
// the packet as follows: Qwd0[15:0] = packet byte count (total number of bytes
// in the header and payload of the packet.  Example 16’h003C for smallest 64
// byte Ethernet packet.)
//
// Subsequent qwords after the packet byte count are the Ethernet packet header
// and the payload.
//
// The format of the packet follows the Ethernet packet format which is similar
// to what is shown by standard tools such as Wireshark.  The data on this
// TX_DATA however must be in big-endian for the packet data.  (See example of
// ARP packet below)
#define TX_DATA "TX_DATA"
#define TX_DATA_BWID 64
#define TX_DATA_PKT_BYTE_CNT_BEG 0
#define TX_DATA_PKT_BYTE_CNT_END 15

// (optional)
// Byte enable of the 64-bit data bus. 1 bit for each byte lane of the data bus.
// TX_BE[0] = if 1, means data is valid on TX_DATA[7:0] And TX_BE[7] = if 1,
// means data is valid on TX_DATA[63:56]
//
// The internal logic of the LMAC generates its own byte enable.
#define TX_BE "TX_BE"
#define TX_BE_BWID 8
#define TX_BE_V_ENABLE 1

// 1 = the internal TX FIFO is full and cannot accept any more packet.
#define TXFIFO_FULL "TXFIFO_FULL"
#define TXFIFO_FULL_BWID 1
#define TXFIFO_FULL_V_FULL 1

// Indicating the number of qwords the TX FIFO contained.  This value is dynamic
// and can change from clock to clock.  (Current implementation only uses bits
// [9:0] for FIFO size 1Kx64)
#define TXFIFO_WUSED_QWD "TXFIFO_WUSED_QWD"
#define TXFIFO_WUSED_QWD_BWID 13

// ------------------------- RX FIFO Interface ------------------------------ //
// 1. Receiving Bus - package byte count/size interface (IPCS)
// 2. Receiving Bus - package data interface. (after reading the byte count the
//    user can read out the packet's data - 1 entire packet at a time)

// Byte count FIFO’s empty signal.  0 = a byte count is available for reading. 1
// = no byte count is available
#define RX_IPCS_EMPTY "RX_IPCS_EMPTY"
#define RX_IPCS_EMPTY_BWID 1
#define RX_IPCS_EMPTY_V_READY 0
#define RX_IPCS_EMPTY_V_NONE 1

// Read enable for the byte count FIFO.
// User asserts 1 pulse to read 1 qword from the byte count FIFO for the size of
// 1 packet.
#define RX_IPCS_RDEN "RX_IPCS_RDEN"
#define RX_IPCS_RDEN_BWID 1
#define RX_IPCS_RDEN_V_READ 1

// 64-bit IPCS data bus
// The IPCS bus is only intended for reading 1 qword at a time.
// Currently:
// [63:48] = packet’s byte count
// [47:0] = reserve
#define RX_IPCS_DATA "RX_IPCS_DATA"
#define RX_IPCS_DATA_BWID 64
#define RX_IPCS_PKT_BYTE_CNT_BEG 48
#define RX_IPCS_PKT_BYTE_CNT_END 63

// Packet data FIFO’s empty signal.  0 = a packet is available for reading. 1 =
// no packet is available
#define RX_PKT_EMPTY "RX_PKT_EMPTY"
#define RX_PKT_EMPTY_BWID 1
#define RX_PKT_EMPTY_V_READY 0
#define RX_PKT_EMPTY_V_NONE 1

// Read enable for the packet data FIFO. User asserts 1 pulse to read 1 qword
// from the packet data FIFO.
#define RX_PKT_RDEN "RX_PKT_RDEN"
#define RX_PKT_RDEN_BWID 1
#define RX_PKT_RDEN_V_READ 1

// Indicates a user packet read cycle is in progress.  This signal is used to
// indicate to the LMAC that a user packet read cycle is in progress which can
// be lengthy depending on the size of the packet.  Asserts high to start the
// cycle and only negates when the user’s cycle is fully complete.
#define RX_PKT_RD_CYCLE "RX_PKT_RD_CYCLE"
#define RX_PKT_RD_CYCLE_BWID 1
#define RX_PKT_RD_CYCLE_BUSY 1
#define RX_PKT_RD_CYCLE_DONE 0

// Packet’s data bus.
// For each RDEN a qword is sent out to the user from the packet data FIFO.  The
// full qword is always provided.  Based on the packet’s byte count the user can
// determines how many bytes is available or remaining to be read from the
// packet. Similar to FPGA FIFO, it takes 1 clock for data to be available from
// the read enable.
#define RX_PKT_DATA "RX_PKT_DATA"
#define RX_PKT_DATA_BWID 64

}; // namespace ilang

#endif // LMAC_CORE2_CONFIGS_SPEC_H__

