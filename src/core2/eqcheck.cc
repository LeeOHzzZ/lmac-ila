// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: eqcheck.cc

//

#include <lmac/core2/eqcheck.h>

namespace ilang {

VerilogVerificationTargetGenerator::vtg_config_t SetVerifConfig() {
  auto config = VerilogVerificationTargetGenerator::vtg_config_t();

  //

  return config;
}

void GenVerifTarget(Ila& model,
                    VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg,
                    const std::vector<std::string>& design_files) {
  return;
}

}; // namespace ilang
