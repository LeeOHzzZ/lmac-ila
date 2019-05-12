// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: main.cc

// entry point of the application
//  - create a new ila of LMAC CORE 2
//  - perform sanity check (optional)
//  - export ila portable

#include <lmac/core2/lmac_core_top.h>

using namespace ilang;

int main() {

  LogToErr(true);

  auto core2 = LmacCore2::New();

  return 0;
}
