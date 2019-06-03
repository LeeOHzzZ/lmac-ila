// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: eqcheck.h

// Generate Verilog verification target for equivalence checking
//  - SetVerifConfigs
//  - GenVerifTarget

#ifndef LMAC_CORE2_EQCHECK_H__
#define LMAC_CORE2_EQCHECK_H__

#include <ilang/ilang++.h>
#include <ilang/vtarget-out/vtarget_gen.h>

namespace ilang {

// configure verification settings
VerilogVerificationTargetGenerator::vtg_config_t SetVerifConfig();

// generate Verilog verification target
void GenVerifTarget(Ila& model,
                    VerilogVerificationTargetGenerator::vtg_config_t vtg_cfg,
                    const std::vector<std::string>& design_files);

}; // namespace ilang

#endif // LMAC_CORE2_EQCHECK_H__
