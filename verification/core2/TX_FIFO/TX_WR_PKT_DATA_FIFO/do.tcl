analyze -sva  \
  LMAC_CORE_TOP.v \
  asynch_fifo.v \
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
assume -name variable_map_assume2 {(~ __START__ )|| (__ILA_SO_TXFIFO_BUFF_RD_PTR[10:0] == m1.core.txfifo.tx_f.rd_ptr[10:0])}
assume -name variable_map_assume3 {(~ __START__ )|| (__ILA_SO_TXFIFO_BUFF_WR_PTR[10:0] == m1.core.txfifo.tx_f.wr_ptr[10:0])}
assume -name variable_map_assume4 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume5 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume6 {(~ __START__ )|| (__m3__)}
assume -name additional_mapping_control_assume7 {(m1.TCORE_MODE == 1)}
assume -name additional_mapping_control_assume8 {(m1.SYS_ADDR == 1)}
assume -name additional_mapping_control_assume9 {(m1.mode_10G == 1)}
assume -name additional_mapping_control_assume10 {(m1.mode_5G == 0)}
assume -name additional_mapping_control_assume11 {(m1.mode_2p5G == 0)}
assume -name additional_mapping_control_assume12 {(m1.mode_1G == 0)}
assume -name additional_mapping_control_assume13 {(m1.core.txfifo_rd_en == 0)}
assume -name issue_decode14 {(~ __START__) || (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__)}
assume -name issue_valid15 {(~ __START__) || (__ILA_TX_FIFO_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (__m4__)}
assert -name variable_map_assert1 {(~ __IEND__) || (__ILA_SO_TXFIFO_BUFF_WR_PTR[10:0] == m1.core.txfifo.tx_f.wr_ptr[10:0])}
assert -name variable_map_assert2 {(~ __IEND__) || (__m5__)}
assert -name variable_map_assert3 {(~ __IEND__) || (__m6__)}
