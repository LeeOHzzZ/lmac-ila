// ============================================================================
// Instruction-Level Abstraction of LeWiz Communications Ethernet MAC
//
// This Instruction-Level Abstraction (ILA) description is derived based on the
// LeWiz Communications Ethernet MAC (LMAC), which is licensed under GNU LGPL.
// Check "LICENSE" which comes with this distribution for more information.
// ============================================================================
//
// File Name: eqcheck_reg.cc

// Generate Verilog verification target for equivalence checking reg instr
//  - GenVerifTargetTX

#include <lmac/core2/eqcheck.h>
#include <ilang/util/log.h>
#include <ilang/util/fs.h>

namespace ilang {

void GenVerifTargetTX_FIFO(Ila& model, const std::string& design_path,
                       const std::string& instr_map, const std::string& var_map,
                       const std::string& output_path) {

  std::vector<std::string> design_files = {
      "LMAC_CORE_TOP.v",
      "asynch_fifo.v", // XXX change accordingly
      "tcore_fmac_core_LE2.v",
      "tx_10G_wrap.v",
      "tx_1G_wrap.v",
      "tx_encap.v",
      "tx_mac10g_crc32x64.v",
      "tx_xgmii_LE2.v",
      "txfifo_1024x64.v",
  };

  ILA_INFO << "before adding full path";
  for (auto i = 0; i < design_files.size(); i++) {
    auto full_path = os_portable_append_dir(design_path, design_files.at(i));
    design_files[i] = full_path;
  }

  ILA_INFO << "before setting VlgGenConfig";
  auto vlg_cfg = SetVlgGenConfig();
  ILA_INFO << "before setting verifGenConfig";
  auto vtg_cfg = SetVerifGenConfig();

  VerilogVerificationTargetGenerator vg(
      {},              // one include path
      design_files,    // designs
      "LMAC_CORE_TOP", // top_module_name
      var_map,         // variable mapping
      instr_map,       // conditions of start/ready
      output_path,     // output path
      model.get(),     // model
      VerilogVerificationTargetGenerator::backend_selector::COSA,
      //VerilogVerificationTargetGenerator::backend_selector::JASPERGOLD,
      vtg_cfg, // target generator configuration
      vlg_cfg  // verilog generator configuration
  );

  ILA_INFO << "before generating targets";
  vg.GenerateTargets();

  return;
};



void GenVerifTargetTX_FUNC(Ila& model, const std::string& design_path,
                       const std::string& instr_map, const std::string& var_map,
                       const std::string& output_path) {

  std::vector<std::string> design_files = {
      "LMAC_CORE_TOP.v",
      "asynch_fifo_sync_version.v", // XXX change accordingly
      "tcore_fmac_core_LE2.v",
      "tx_10G_wrap.v",
      "tx_1G_wrap.v",
      "tx_encap.v",
      "tx_mac10g_crc32x64.v",
      "tx_xgmii_LE2.v",
      "txfifo_1024x64_sync.v",
  };

  ILA_INFO << "before adding full path";
  for (auto i = 0; i < design_files.size(); i++) {
    auto full_path = os_portable_append_dir(design_path, design_files.at(i));
    design_files[i] = full_path;
  }

  ILA_INFO << "before setting VlgGenConfig";
  auto vlg_cfg = SetVlgGenConfig();
  ILA_INFO << "before setting verifGenConfig";
  auto vtg_cfg = SetVerifGenConfig();

  VerilogVerificationTargetGenerator vg(
      {},              // one include path
      design_files,    // designs
      "LMAC_CORE_TOP", // top_module_name
      var_map,         // variable mapping
      instr_map,       // conditions of start/ready
      output_path,     // output path
      model.get(),     // model
      VerilogVerificationTargetGenerator::backend_selector::COSA,
      //VerilogVerificationTargetGenerator::backend_selector::JASPERGOLD,
      vtg_cfg, // target generator configuration
      vlg_cfg  // verilog generator configuration
  );

  ILA_INFO << "before generating targets";
  vg.GenerateTargets();

  return;
};


void GenVerifTargetTX_FUNC_bug_hunting(Ila& model, const std::string& design_path,
                       const std::string& instr_map, const std::string& var_map,
                       const std::string& output_path) {

  std::vector<std::string> design_files = {
      "LMAC_CORE_TOP.v",
      "asynch_fifo.v", // XXX change accordingly
      "tcore_fmac_core_LE2.v",
      "tx_10G_wrap.v",
      "tx_1G_wrap.v",
      "tx_encap.v",
      "tx_mac10g_crc32x64.v",
      "tx_xgmii_LE2.v",
      "txfifo_1024x64_original.v",
  };

  ILA_INFO << "before adding full path";
  for (auto i = 0; i < design_files.size(); i++) {
    auto full_path = os_portable_append_dir(design_path, design_files.at(i));
    design_files[i] = full_path;
  }

  ILA_INFO << "before setting VlgGenConfig";
  auto vlg_cfg = SetVlgGenConfig();
  ILA_INFO << "before setting verifGenConfig";
  auto vtg_cfg = SetVerifGenConfig();

  VerilogVerificationTargetGenerator vg(
      {},              // one include path
      design_files,    // designs
      "LMAC_CORE_TOP", // top_module_name
      var_map,         // variable mapping
      instr_map,       // conditions of start/ready
      output_path,     // output path
      model.get(),     // model
      VerilogVerificationTargetGenerator::backend_selector::COSA,
      //VerilogVerificationTargetGenerator::backend_selector::JASPERGOLD,
      vtg_cfg, // target generator configuration
      vlg_cfg  // verilog generator configuration
  );

  ILA_INFO << "before generating targets";
  vg.GenerateTargets();

  return;
};

}; // namespace ilang
