// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: tx_internal.cc

// TX FIFO internal state variables
//  - non-interface
//  - implementation specific

#include <lmac/core2/lmac_core_top.h>

#include <lmac/core2/configs.h>
#include <lmac/utils.h>

namespace ilang {

  // Setup the internal states for the TX FIFO, these states are set at the parent level since they are shared by both FIFO and TX_FUNC
  void LmacCore2::SetupTxFIFOInternal(Ila& m) {
      // TX FIFO internal buffer
    auto tx_fifo_buff =
        m.NewMemState(TXFIFO_BUFF, TXFIFO_BUFF_ADDR_BWID, TXFIFO_BUFF_DATA_BWID);
    tx_fifo_buff.SetEntryNum(TXFIFO_BUFF_DEPTH);

    // read pointer
    NewState(m, TXFIFO_BUFF_RD_PTR, TXFIFO_BUFF_RD_PTR_BWID);

    // write pointer
    NewState(m, TXFIFO_BUFF_WR_PTR, TXFIFO_BUFF_WR_PTR_BWID);
  
    // read output
    NewState(m, TXFIFO_RD_OUTPUT, TXFIFO_RD_OUTPUT_BWID);

    return;
  }
  
  // Setup the the internal states for the TX func
  // These states are set at the child level, cm stands for child model.
  // These states are only used at the child modules.

  void LmacCore2::SetupTxFuncInternal(Ila& cm) {
    //////////////////////////////////
    // Internal Architectual States
    //////////////////////////////////
    // TX state machine
    NewState(cm, TX_STATE, TX_STATE_BWID);
    // TX state machine. auxiliary state machine. Mapping to the state machine at tx_encap
    NewState(cm, TX_STATE_ENCAP, TX_STATE_ENCAP_BWID);
    // TX B2B counter
    NewState(cm, TX_B2B_CNTR, TX_B2B_CNTR_BWID);
    // State holding the packet byte count, which is in the first Qword of the packet.
    NewState(cm, TX_PACKET_BYTE_CNT, TX_PACKET_BYTE_CNT_BWID);
    // State recording the frames needed to transmit the whole package in bytes. reg wcnt in xgmii
    NewState(cm, TX_WCNT, TX_WCNT_BWID);
    // register for result output, xgmii or gmii, for verification at the same cycle, this 
    // state is actually the txd in the design
    NewState(cm, XGMII_DOUT_REG, XGMII_DOUT_REG_BWID);
    // register for output control, bytes valid information, 8bits signal for 8bytes(64bit) output
    // corresponding to the txc in the design
    NewState(cm, XGMII_COUT_REG, XGMII_COUT_REG_BWID);
    // State for recording the packet count
    NewState(cm, TX_PKT_SENT, TX_PKT_SENT_BWID);
    // State for recording the bytes count
    NewState(cm, TX_BYTE_SENT, TX_BYTE_SENT_BWID);
    // register for CRC, store the 4byte CRC
    NewState(cm, CRC, CRC_BWID);
    // State for CRC data input
    NewState(cm, CRC_DAT_IN, CRC_DAT_IN_BWID);
    // State for previous crc code input
    NewState(cm, CRC_IN, CRC_IN_BWID);
    //////////////////////////////////
    // Internal Non Architectual States
    //////////////////////////////////
    // State holding the initial wcnt count, used for crc input
    NewState(cm, TX_WCNT_INI, TX_WCNT_INI_BWID);
    // Buffer for CRC Code generation
    NewState(cm, TX_BUF, TX_BUF_BWID);


    // State for recording current instruction
    NewState(cm, "TX_FUNC_INSTR", 3);

    return;

  }

}

