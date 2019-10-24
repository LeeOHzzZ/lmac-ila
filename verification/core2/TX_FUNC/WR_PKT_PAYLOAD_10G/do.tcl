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
assume -name variable_map_assume5 {(~ __START__ )|| (__ILA_SO_TXFIFO_BUFF_RD_PTR[10:0] == m1.core.txfifo.tx_f.rd_ptr[10:0])}
assume -name variable_map_assume6 {(~ __START__ )|| (__ILA_SO_TXFIFO_BUFF_WR_PTR[10:0] == m1.core.txfifo.tx_f.wr_ptr[10:0])}
assume -name variable_map_assume7 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume8 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume9 {(~ __START__ )|| (__m6__)}
assume -name variable_map_assume10 {(~ __START__ )|| (__m7__)}
assume -name variable_map_assume11 {(~ __START__ )|| (__m8__)}
assume -name variable_map_assume12 {(~ __START__ )|| (__m9__)}
assume -name variable_map_assume13 {(~ __START__ )|| (__m10__)}
assume -name variable_map_assume14 {(~ __START__ )|| (__m11__)}
assume -name variable_map_assume15 {(~ __START__ )|| (__m12__)}
assume -name variable_map_assume16 {(~ __START__ )|| (__m13__)}
assume -name variable_map_assume17 {(~ __START__ )|| (__m14__)}
assume -name variable_map_assume18 {(~ __START__ )|| (__m15__)}
assume -name variable_map_assume19 {(~ __START__ )|| (__m16__)}
assume -name variable_map_assume20 {(~ __START__ )|| (__m17__)}
assume -name additional_mapping_control_assume21 {(m1.TCORE_MODE == 1)}
assume -name additional_mapping_control_assume22 {(m1.SYS_ADDR == 1)}
assume -name additional_mapping_control_assume23 {(m1.mode_10G == 1)}
assume -name additional_mapping_control_assume24 {(m1.mode_5G == 0)}
assume -name additional_mapping_control_assume25 {(m1.mode_2p5G == 0)}
assume -name additional_mapping_control_assume26 {(m1.mode_1G == 0)}
assume -name additional_mapping_control_assume27 {(m1.core.tx_b2b_dly == 2)}
assume -name additional_mapping_control_assume28 {(m1.core.tx_10G_wrap.tx_encap.tx_rdy == 1)}
assume -name additional_mapping_control_assume29 {(m1.core.txfifo_wr_en == 0)}
assume -name issue_decode30 {(~ __START__) || (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__)}
assume -name issue_valid31 {(~ __START__) || (__ILA_TX_FUNC_valid__)}
assume -name post_value_holder32 {(~(__CYCLE_CNT__ == 1) || ((b2b_counter_LastOne_end) == (m1.core.tx_10G_wrap.tx_encap.b2b_counter)))}
assume -name post_value_holder33 {(~(__CYCLE_CNT__ == 5) || ((b2b_counter_RdByteCnt_end) == (m1.core.tx_10G_wrap.tx_encap.b2b_counter)))}
assume -name post_value_holder34 {(~(__CYCLE_CNT__ == 1) || ((b2b_counter_WrPktPayload_end) == (m1.core.tx_10G_wrap.tx_encap.b2b_counter)))}
assume -name post_value_holder35 {(~(__CYCLE_CNT__ == 4) || ((tx_pkt_byte_cnt_RdByteCnt_end) == (m1.core.tx_10G_wrap.tx_xgmii.rbytes_reg)))}
assume -name post_value_holder36 {(~(__CYCLE_CNT__ == 4) || ((tx_st_encap_RdByteCnt_end) == (m1.core.tx_10G_wrap.tx_encap.state)))}
assume -name post_value_holder37 {(~(__CYCLE_CNT__ == 1) || ((tx_st_encap_WrPktPayload_end) == (m1.core.tx_10G_wrap.tx_encap.state)))}
assume -name post_value_holder38 {(~(__CYCLE_CNT__ == 1) || ((tx_state_LastOne_end) == (m1.core.tx_10G_wrap.tx_xgmii.state)))}
assume -name post_value_holder39 {(~(__CYCLE_CNT__ == 5) || ((tx_state_RdByteCnt_end) == (m1.core.tx_10G_wrap.tx_xgmii.state)))}
assume -name post_value_holder40 {(~(__CYCLE_CNT__ == 1) || ((tx_state_WrPktPayload_end) == (m1.core.tx_10G_wrap.tx_xgmii.state)))}
assume -name post_value_holder41 {(~(__CYCLE_CNT__ == 5) || ((tx_wcnt_RdByteCnt_end) == (m1.core.tx_10G_wrap.tx_xgmii.wcnt)))}
assume -name post_value_holder42 {(~(__CYCLE_CNT__ == 1) || ((tx_wcnt_WrPktPaylaod_end) == (m1.core.tx_10G_wrap.tx_xgmii.wcnt)))}
assert -name variable_map_assert0 {(~ __IEND__) || (__m18__)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m19__)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m20__)}
assert -name variable_map_assert3 {(~ __IEND__) || (__ILA_SO_TXFIFO_BUFF_RD_PTR[10:0] == m1.core.txfifo.tx_f.rd_ptr[10:0])}
assert -name variable_map_assert4 {(~ __IEND__) || (__m22__)}
assert -name variable_map_assert5 {(~ __IEND__) || (__m23__)}
assert -name variable_map_assert6 {(~ __IEND__) || (__m24__)}
assert -name variable_map_assert7 {(~ __IEND__) || (__m25__)}
assert -name variable_map_assert8 {(~ __IEND__) || (__m26__)}
assert -name variable_map_assert9 {(~ __IEND__) || (__m27__)}
assert -name variable_map_assert10 {(~ __IEND__) || (__m28__)}
assert -name variable_map_assert11 {(~ __IEND__) || (__m29__)}
assert -name variable_map_assert12 {(~ __IEND__) || (__m30__)}
