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

#include <fstream>

using namespace ilang;

int main() {
  // configure debug log
  LogToErr(true);
  EnableDebug("LMAC");

  // create LMac Core 2 ILA
  auto core2 = LmacCore2::New();

  // export json target (ILA Portable)
  ExportIlaPortable(core2, "LmacCore2.json");

  // export verilog target (w/o child program)
  std::string verilog_file_name = "LmacCore2.v";
  std::ofstream fw_verilog(verilog_file_name);
  core2.ExportToVerilog(fw_verilog);

  // reset debug config.
  DisableDebug("LMAC");

  return 0;
}
