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

#include <ilang/util/log.h>
#include <lmac/core2/lmac_core_top.h>

namespace ilang {

LmacCore2::LmacCore2() {}

LmacCore2::~LmacCore2() {}

Ila LmacCore2::New(const std::string& name) {
  ILA_INFO << "Create ILA with name " << name;
  auto m = Ila(name);

  // state vars
  SetArchStateVar(m);
  SetImplStateVar(m);

  // model hierarchy
  SetChild(m);

  // instruction decode & updates
  SetInstr(m);

  // initial condition
  SetInit(m);

  // valid

  // fetch

  return m;
}

void LmacCore2::SetArchStateVar(Ila& m) {
  ILA_INFO << "Setup state variables from spec.";

  // TX interface signals
  SetupTxInterface(m);

  // RX interface signals
  SetupRxInterface(m);

  // Register interface and configuration
  SetupRegInterface(m);
  SetupMmioRegs(m);

  // PHY interface signals

  return;
}

void LmacCore2::SetImplStateVar(Ila& m) {
  ILA_INFO << "Setup state variables (impl. specific)";

  // TX FIFO internal states
  // SetupTxInternal(m);

  // RX interface signals

  // Register interface and configuration

  // PHY interface signals

  return;
}

void LmacCore2::SetChild(Ila& m) {
  ILA_INFO << "Setup child ILAs";

  return;
}

void LmacCore2::SetInstr(Ila& M) {
  ILA_INFO << "Setup instructions";

  return;
}

void LmacCore2::SetInit(Ila& m) {
  ILA_INFO << "Setup initial condition";

  return;
}

}; // namespace ilang
