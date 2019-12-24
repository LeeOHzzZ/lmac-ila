// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: lmac_core_top.cc

// LmacCore2 top level entry points
//  - TX FIFO
//  - RX FIFO
//  - Register interface and configuration
//  - PHY

#include <lmac/core2/lmac_core_top.h>

#include <ilang/util/log.h>
#include <lmac/core2/configs.h>
#include <lmac/utils.h>

namespace ilang {

LmacCore2::LmacCore2() {}

LmacCore2::~LmacCore2() {}

Ila LmacCore2::New(const std::string& name) {
  auto m = Ila(name);

  // state vars
  SetArchStateVar(m);
  SetImplStateVar(m);

  // model hierarchy
  ILA_INFO << " before setting up child models";

  SetChild(m);

  ILA_INFO << "before setting up instructions";
  // instruction decode & updates
  SetInstr(m);
  
  ILA_INFO << "before setting up initial condition";
  // initial condition
  SetInit(m);

  { // valid
    // TX FIFO
    // auto tx_valid = (m.input(TX_WE) == TX_WE_V_VALID) &
    //                 (m.state(TXFIFO_FULL) != TXFIFO_FULL_V_FULL);

    /* When using the TX_WE as valid function would have a problem. Writing FIFO and transimiting the packet is at
    different time. In other words, when the TX path is actually transmitting the packet, the TX in ILA may not be valid */

    // TX FIFO
    // Set the TX valid to always true.
    auto tx_valid = BoolConst(true);

    // RX FIFO
    auto rx_valid = BoolConst(true);

    // Reg interface
//    auto reg_itf_valid = (m.input(REG_RD_START) == REG_RD_START_V_BUSY) &
//                         (m.input(HOST_ADDR) >= FMAC_TX_PKT_CNT_ADDR) &
//                         (m.input(HOST_ADDR) <= FMAC_RX_PKT_CNT1518_HI_ADDR);
    auto reg_itf_valid = BoolConst(true);
    // PHY
    auto phy_valid = BoolConst(true);

    auto valid = reg_itf_valid | tx_valid | rx_valid | phy_valid;
    ILA_INFO << "before setting valid function";
    m.SetValid(valid);
  }

  { // fetch
    // TX FIFO
    auto tx_fetch = BoolConst(true);

    // RX FIFO
    auto rx_fetch = BoolConst(true);

   // Reg interface
    auto reg_fetch = BoolConst(true);

    // PHY
    auto phy_fetch = BoolConst(true);

    auto fetch =
        Concat(tx_fetch, Concat(rx_fetch, Concat(reg_fetch, phy_fetch)));
    ILA_INFO << "before setting fetch function";
    m.SetFetch(fetch);
  }

  ILA_DLOG("LMAC") << "Done";
  ILA_INFO << "creating LMAC model done";
  return m;
}


void LmacCore2::SetArchStateVar(Ila& m) {
  ILA_DLOG("LMAC") << "Setup state variables from spec.";

  // top module signals
  SetupTopInterface(m);

  // TX interface signals
  SetupTxInterface(m);
  // TX FIFO states should be set at the parent level.
  SetupTxFIFOInternal(m);

  // RX interface signals
//  SetupRxInterface(m);

  // Register interface and configuration
//  SetupRegInterface(m);
//  SetupMmioRegs(m);

  // PHY interface signals

  return;
}

void LmacCore2::SetImplStateVar(Ila& m) {
  ILA_DLOG("LMAC") << "Setup state variables (impl. specific)";

  // TX FIFO internal states
#if 0 // TODO
  SetupTxInternal(m);
#endif

  // RX FIFO internal states

  // Register and configuration

  // PHY internal states

  return;
}

// Hierachy of the LMAC model
// ************************************
// |             LMAC                 |    
// | ***************  *************** |
// | |     TX      |  |      RX     | |
// | | *********** |  | *********** | |
// | | | TX_FIFO | |  | | RX_FIFO | | |
// | | *********** |  | *********** | |
// | |             |  |             | |
// | | *********** |  | *********** | |
// | | | TX_FUNC | |  | | RX_FUNC | | |
// | | *********** |  | *********** | |
// | |             |  |             | |
// | ***************  *************** |
// ************************************

void LmacCore2::SetChild(Ila& m) {
  ILA_DLOG("LMAC") << "Setup child ILAs";
  SetupTxChild(m);

  ILA_DLOG("LMAC") << "Setup one clock fifo test";
  SetupFIFOTEST(m);
  

  return;
}

void LmacCore2::SetInstr(Ila& m) {
  ILA_DLOG("LMAC") << "Setup instructions";

  // TX FIFO instructions
  SetupTxInstr(m);

  // RX FIFO instructions

  // Register and configuration instructions
  // SetupRegInstr(m);

  // PHY instructions

  return;
}

void LmacCore2::SetInit(Ila& m) {
  ILA_DLOG("LMAC") << "Setup initial condition";

  return;
}

}; // namespace ilang
