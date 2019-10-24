analyze -sva  \
  LMAC_CORE_TOP.v \
  asynch_fifo.v \
  br_sfifo4x32.v \
  bsh32_dn_88.v \
  bsh8_dn_64.v \
  byte_reordering.v \
  crc32_d16s.v \
  crc32_d24s.v \
  crc32_d64.v \
  crc32_d8s.v \
  ctrl_2G_5G.v \
  eth_crc32_gen.v \
  fmac_fifo4Kx64.v \
  fmac_fifo4Kx8.v \
  fmac_fifo512x64_2clk.v \
  fmac_register_if_LE2.v \
  g2x_ctrl.v \
  gige_crc32x64.v \
  gige_s2p.v \
  gige_tx_encap.v \
  gige_tx_gmii.v \
  gigerx_bcnt_fifo256x16.v \
  gigerx_fifo256x64_2clk.v \
  gigerx_fifo256x8.v \
  rx_5G.v \
  rx_decap_LE2.v \
  rx_xgmii_LE2.v \
  tcore_fmac_core_LE2.v \
  tx_10G_wrap.v \
  tx_1G_wrap.v \
  tx_encap.v \
  tx_mac10g_crc32x64.v \
  tx_xgmii_LE2.v \
  txfifo_1024x64.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume1 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume2 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume3 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume4 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume5 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume6 {(~ __START__ )|| (__m5__)}
assume -name additional_mapping_control_assume7 {(m1.TCORE_MODE == 1)}
assume -name additional_mapping_control_assume8 {(m1.SYS_ADDR == 1)}
assume -name additional_mapping_control_assume9 {(m1.mode_10G == 1)}
assume -name additional_mapping_control_assume10 {(m1.mode_5G == 0)}
assume -name additional_mapping_control_assume11 {(m1.mode_2p5G == 0)}
assume -name additional_mapping_control_assume12 {(m1.mode_1G == 0)}
assume -name additional_mapping_control_assume13 {(m1.core.txfifo_rd_en == 0)}
assume -name issue_decode14 {(~ __START__) || (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__)}
assume -name issue_valid15 {(~ __START__) || (__ILA_TX_FIFO_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (__m6__)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m7__)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m8__)}
assert -name variable_map_assert3 {(~ __IEND__) || (__m9__)}
