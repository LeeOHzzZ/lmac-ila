/* PREHEADER */

`define true  1'b1

`define false 1'b0

/* END OF PREHEADER */
module wrapper(
__ILA_I_MODE_10G,
__ILA_I_MODE_1G,
__ILA_I_MODE_2P5G,
__ILA_I_MODE_5G,
__ILA_I_RESETN,
__ILA_I_TX_DATA,
__ILA_I_TX_WE,
__VLG_I_SYS_ADDR,
__VLG_I_TCORE_MODE,
__VLG_I_cs_fifo_rd_en,
__VLG_I_fail_over,
__VLG_I_fmac_ctrl,
__VLG_I_fmac_ctrl1,
__VLG_I_fmac_rxd_en,
__VLG_I_host_addr_reg,
__VLG_I_mac_addr0,
__VLG_I_mac_pause_value,
__VLG_I_reg_rd_start,
__VLG_I_rx_mac_rd,
__VLG_I_rx_mac_rd_cycle,
__VLG_I_tx_mac_data,
__VLG_I_tx_mac_wr,
__VLG_I_xgmii_led_,
__VLG_I_xgmii_reset_,
__VLG_I_xgmii_rxc,
__VLG_I_xgmii_rxd,
__b2b_counter_LastOne_end_init__,
__b2b_counter_RdByteCnt_end_init__,
__b2b_counter_WrPktPayload_end_init__,
__crc_RdByteCnt_end_init__,
__crc_WrPktPaylaod_end_init__,
__crc_in_RdByteCnt_end_init__,
__crc_in_WrPktPaylaod_end_init__,
__tx_pkt_byte_cnt_RdByteCnt_end_init__,
__tx_st_encap_RdByteCnt_end_init__,
__tx_st_encap_WrPktPayload_end_init__,
__tx_state_LastOne_end_init__,
__tx_state_RdByteCnt_end_init__,
__tx_state_WrPktPayload_end_init__,
__tx_wcnt_RdByteCnt_end_init__,
__tx_wcnt_WrPktPaylaod_end_init__,
__txfifo_buff_rd_output_RdByteCnt_end_init__,
__txfifo_buff_rd_output_normal_end_init__,
__txfifo_buff_rd_ptr_RdByteCnt_end_init__,
__txfifo_buff_rd_ptr_normal_end_init__,
__txfifo_buff_wr_ptr_RdByteCnt_end_init__,
__txfifo_buff_wr_ptr_normal_end_init__,
__txfifo_full_end_init__,
__txfifo_rd_en_end_init__,
__txfifo_wused_RdByte_end_init__,
__txfifo_wused_normal_end_init__,
clk,
dummy_reset,
rst,
__ILA_SO_CRC,
__ILA_SO_CRC_DAT_IN,
__ILA_SO_CRC_IN,
__ILA_SO_TXFIFO_BUFF_RD_PTR,
__ILA_SO_TXFIFO_BUFF_WR_PTR,
__ILA_SO_TXFIFO_FULL,
__ILA_SO_TXFIFO_RD_EN,
__ILA_SO_TXFIFO_RD_OUTPUT,
__ILA_SO_TXFIFO_WUSED_QWD,
__ILA_SO_TX_B2B_CNTR,
__ILA_SO_TX_B2B_OK,
__ILA_SO_TX_BUF,
__ILA_SO_TX_BYTE_SENT,
__ILA_SO_TX_FUNC_INSTR,
__ILA_SO_TX_PACKET_BYTE_CNT,
__ILA_SO_TX_PKT_SENT,
__ILA_SO_TX_STATE,
__ILA_SO_TX_STATE_ENCAP,
__ILA_SO_TX_WCNT,
__ILA_SO_TX_WCNT_INI,
__ILA_SO_XGMII_COUT_REG,
__ILA_SO_XGMII_DOUT_REG,
__VLG_O_FIFO_OV_IPEND,
__VLG_O_FMAC_REGDOUT,
__VLG_O_cs_fifo_empty,
__VLG_O_ipcs_fifo_dout,
__VLG_O_reg_rd_done_out,
__VLG_O_rx_mac_ctrl,
__VLG_O_rx_mac_data,
__VLG_O_rx_mac_empty,
__VLG_O_xauiA_linkup,
__VLG_O_xgmii_txc,
__VLG_O_xgmii_txd,
__m100__,
__m102__,
__m103__,
__m104__,
__m106__,
__m108__,
__m10__,
__m11__,
__m12__,
__m14__,
__m15__,
__m16__,
__m17__,
__m19__,
__m1__,
__m20__,
__m22__,
__m23__,
__m25__,
__m26__,
__m27__,
__m28__,
__m30__,
__m32__,
__m33__,
__m34__,
__m35__,
__m37__,
__m39__,
__m3__,
__m41__,
__m43__,
__m44__,
__m46__,
__m48__,
__m49__,
__m50__,
__m51__,
__m53__,
__m54__,
__m55__,
__m57__,
__m58__,
__m59__,
__m5__,
__m61__,
__m63__,
__m65__,
__m67__,
__m69__,
__m71__,
__m73__,
__m74__,
__m75__,
__m76__,
__m77__,
__m79__,
__m7__,
__m80__,
__m81__,
__m82__,
__m84__,
__m86__,
__m87__,
__m88__,
__m89__,
__m91__,
__m93__,
__m94__,
__m95__,
__m96__,
__m98__,
__m99__,
__m9__,
additional_mapping_control_assume__m133__,
additional_mapping_control_assume__m134__,
additional_mapping_control_assume__m135__,
additional_mapping_control_assume__m136__,
additional_mapping_control_assume__m137__,
additional_mapping_control_assume__m138__,
additional_mapping_control_assume__m139__,
additional_mapping_control_assume__m140__,
additional_mapping_control_assume__m141__,
additional_mapping_control_assume__m142__,
additional_mapping_control_assume__m143__,
additional_mapping_control_assume__m144__,
invariant_assume__m110__,
invariant_assume__m111__,
invariant_assume__m112__,
invariant_assume__m113__,
invariant_assume__m114__,
invariant_assume__m115__,
invariant_assume__m116__,
invariant_assume__m117__,
invariant_assume__m118__,
invariant_assume__m119__,
invariant_assume__m120__,
invariant_assume__m121__,
invariant_assume__m122__,
invariant_assume__m123__,
invariant_assume__m124__,
invariant_assume__m125__,
invariant_assume__m126__,
invariant_assume__m127__,
invariant_assume__m128__,
invariant_assume__m129__,
invariant_assume__m130__,
invariant_assume__m131__,
invariant_assume__m132__,
issue_decode__m145__,
issue_valid__m146__,
m1__DOT__SYS_ADDR,
m1__DOT__TCORE_MODE,
m1__DOT__core__DOT__mode_10G,
m1__DOT__core__DOT__mode_1G,
m1__DOT__core__DOT__mode_2p5G,
m1__DOT__core__DOT__mode_5G,
m1__DOT__core__DOT__rx_pause,
m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt,
m1__DOT__core__DOT__txfifo__DOT__rdreq,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren,
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull,
m1__DOT__core__DOT__txfifo__DOT__wrfull,
m1__DOT__core__DOT__txfifo_usedw,
m1__DOT__mode_10G,
m1__DOT__mode_1G,
m1__DOT__mode_2p5G,
m1__DOT__mode_5G,
noreset__m0__,
post_value_holder__m147__,
post_value_holder__m148__,
post_value_holder__m149__,
post_value_holder__m150__,
post_value_holder__m151__,
post_value_holder__m152__,
post_value_holder__m153__,
post_value_holder__m154__,
post_value_holder__m155__,
post_value_holder__m156__,
post_value_holder__m157__,
post_value_holder__m158__,
post_value_holder__m159__,
post_value_holder__m160__,
post_value_holder__m161__,
post_value_holder__m162__,
post_value_holder__m163__,
post_value_holder__m164__,
post_value_holder__m165__,
post_value_holder__m166__,
post_value_holder__m167__,
post_value_holder__m168__,
post_value_holder__m169__,
post_value_holder__m170__,
post_value_holder__m171__,
tx_mac_full,
tx_mac_usedw,
variable_map_assert__p101__,
variable_map_assert__p105__,
variable_map_assert__p107__,
variable_map_assert__p109__,
variable_map_assert__p68__,
variable_map_assert__p70__,
variable_map_assert__p72__,
variable_map_assert__p78__,
variable_map_assert__p83__,
variable_map_assert__p85__,
variable_map_assert__p90__,
variable_map_assert__p92__,
variable_map_assert__p97__,
variable_map_assume__m13__,
variable_map_assume__m18__,
variable_map_assume__m21__,
variable_map_assume__m24__,
variable_map_assume__m29__,
variable_map_assume__m2__,
variable_map_assume__m31__,
variable_map_assume__m36__,
variable_map_assume__m38__,
variable_map_assume__m40__,
variable_map_assume__m42__,
variable_map_assume__m45__,
variable_map_assume__m47__,
variable_map_assume__m4__,
variable_map_assume__m52__,
variable_map_assume__m56__,
variable_map_assume__m60__,
variable_map_assume__m62__,
variable_map_assume__m64__,
variable_map_assume__m66__,
variable_map_assume__m6__,
variable_map_assume__m8__,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
b2b_counter_LastOne_end,
b2b_counter_RdByteCnt_end,
b2b_counter_WrPktPayload_end,
crc_RdByteCnt_end,
crc_WrPktPaylaod_end,
crc_in_RdByteCnt_end,
crc_in_WrPktPaylaod_end,
tx_pkt_byte_cnt_RdByteCnt_end,
tx_st_encap_RdByteCnt_end,
tx_st_encap_WrPktPayload_end,
tx_state_LastOne_end,
tx_state_RdByteCnt_end,
tx_state_WrPktPayload_end,
tx_wcnt_RdByteCnt_end,
tx_wcnt_WrPktPaylaod_end,
txfifo_buff_rd_output_RdByteCnt_end,
txfifo_buff_rd_output_normal_end,
txfifo_buff_rd_ptr_RdByteCnt_end,
txfifo_buff_rd_ptr_normal_end,
txfifo_buff_wr_ptr_RdByteCnt_end,
txfifo_buff_wr_ptr_normal_end,
txfifo_full_end,
txfifo_rd_en_end,
txfifo_wused_RdByte_end,
txfifo_wused_normal_end
);
input            __ILA_I_MODE_10G;
input            __ILA_I_MODE_1G;
input            __ILA_I_MODE_2P5G;
input            __ILA_I_MODE_5G;
input            __ILA_I_RESETN;
input     [63:0] __ILA_I_TX_DATA;
input            __ILA_I_TX_WE;
input      [3:0] __VLG_I_SYS_ADDR;
input            __VLG_I_TCORE_MODE;
input            __VLG_I_cs_fifo_rd_en;
input            __VLG_I_fail_over;
input     [31:0] __VLG_I_fmac_ctrl;
input     [31:0] __VLG_I_fmac_ctrl1;
input            __VLG_I_fmac_rxd_en;
input     [15:0] __VLG_I_host_addr_reg;
input     [47:0] __VLG_I_mac_addr0;
input     [31:0] __VLG_I_mac_pause_value;
input            __VLG_I_reg_rd_start;
input            __VLG_I_rx_mac_rd;
input            __VLG_I_rx_mac_rd_cycle;
input     [63:0] __VLG_I_tx_mac_data;
input            __VLG_I_tx_mac_wr;
input      [1:0] __VLG_I_xgmii_led_;
input            __VLG_I_xgmii_reset_;
input      [7:0] __VLG_I_xgmii_rxc;
input     [63:0] __VLG_I_xgmii_rxd;
input      [5:0] __b2b_counter_LastOne_end_init__;
input      [5:0] __b2b_counter_RdByteCnt_end_init__;
input      [5:0] __b2b_counter_WrPktPayload_end_init__;
input     [31:0] __crc_RdByteCnt_end_init__;
input     [31:0] __crc_WrPktPaylaod_end_init__;
input     [31:0] __crc_in_RdByteCnt_end_init__;
input     [31:0] __crc_in_WrPktPaylaod_end_init__;
input     [15:0] __tx_pkt_byte_cnt_RdByteCnt_end_init__;
input      [7:0] __tx_st_encap_RdByteCnt_end_init__;
input      [7:0] __tx_st_encap_WrPktPayload_end_init__;
input      [7:0] __tx_state_LastOne_end_init__;
input      [7:0] __tx_state_RdByteCnt_end_init__;
input      [7:0] __tx_state_WrPktPayload_end_init__;
input     [15:0] __tx_wcnt_RdByteCnt_end_init__;
input     [15:0] __tx_wcnt_WrPktPaylaod_end_init__;
input     [63:0] __txfifo_buff_rd_output_RdByteCnt_end_init__;
input     [63:0] __txfifo_buff_rd_output_normal_end_init__;
input      [4:0] __txfifo_buff_rd_ptr_RdByteCnt_end_init__;
input      [4:0] __txfifo_buff_rd_ptr_normal_end_init__;
input      [4:0] __txfifo_buff_wr_ptr_RdByteCnt_end_init__;
input      [4:0] __txfifo_buff_wr_ptr_normal_end_init__;
input            __txfifo_full_end_init__;
input            __txfifo_rd_en_end_init__;
input     [12:0] __txfifo_wused_RdByte_end_init__;
input     [12:0] __txfifo_wused_normal_end_init__;
input            clk;
input            dummy_reset;
input            rst;
output     [31:0] __ILA_SO_CRC;
output     [63:0] __ILA_SO_CRC_DAT_IN;
output     [31:0] __ILA_SO_CRC_IN;
output      [4:0] __ILA_SO_TXFIFO_BUFF_RD_PTR;
output      [4:0] __ILA_SO_TXFIFO_BUFF_WR_PTR;
output            __ILA_SO_TXFIFO_FULL;
output            __ILA_SO_TXFIFO_RD_EN;
output     [63:0] __ILA_SO_TXFIFO_RD_OUTPUT;
output     [12:0] __ILA_SO_TXFIFO_WUSED_QWD;
output      [5:0] __ILA_SO_TX_B2B_CNTR;
output            __ILA_SO_TX_B2B_OK;
output     [63:0] __ILA_SO_TX_BUF;
output     [31:0] __ILA_SO_TX_BYTE_SENT;
output      [2:0] __ILA_SO_TX_FUNC_INSTR;
output     [15:0] __ILA_SO_TX_PACKET_BYTE_CNT;
output     [31:0] __ILA_SO_TX_PKT_SENT;
output      [4:0] __ILA_SO_TX_STATE;
output      [7:0] __ILA_SO_TX_STATE_ENCAP;
output     [15:0] __ILA_SO_TX_WCNT;
output     [15:0] __ILA_SO_TX_WCNT_INI;
output      [7:0] __ILA_SO_XGMII_COUT_REG;
output     [63:0] __ILA_SO_XGMII_DOUT_REG;
output            __VLG_O_FIFO_OV_IPEND;
output     [31:0] __VLG_O_FMAC_REGDOUT;
output            __VLG_O_cs_fifo_empty;
output     [63:0] __VLG_O_ipcs_fifo_dout;
output            __VLG_O_reg_rd_done_out;
output      [7:0] __VLG_O_rx_mac_ctrl;
output     [63:0] __VLG_O_rx_mac_data;
output            __VLG_O_rx_mac_empty;
output            __VLG_O_xauiA_linkup;
output      [7:0] __VLG_O_xgmii_txc;
output     [63:0] __VLG_O_xgmii_txd;
output            __m100__;
output            __m102__;
output            __m103__;
output            __m104__;
output            __m106__;
output            __m108__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m14__;
output            __m15__;
output            __m16__;
output            __m17__;
output            __m19__;
output            __m1__;
output            __m20__;
output            __m22__;
output            __m23__;
output            __m25__;
output            __m26__;
output            __m27__;
output            __m28__;
output            __m30__;
output            __m32__;
output            __m33__;
output            __m34__;
output            __m35__;
output            __m37__;
output            __m39__;
output            __m3__;
output            __m41__;
output            __m43__;
output            __m44__;
output            __m46__;
output            __m48__;
output            __m49__;
output            __m50__;
output            __m51__;
output            __m53__;
output            __m54__;
output            __m55__;
output            __m57__;
output            __m58__;
output            __m59__;
output            __m5__;
output            __m61__;
output            __m63__;
output            __m65__;
output            __m67__;
output            __m69__;
output            __m71__;
output            __m73__;
output            __m74__;
output            __m75__;
output            __m76__;
output            __m77__;
output            __m79__;
output            __m7__;
output            __m80__;
output            __m81__;
output            __m82__;
output            __m84__;
output            __m86__;
output            __m87__;
output            __m88__;
output            __m89__;
output            __m91__;
output            __m93__;
output            __m94__;
output            __m95__;
output            __m96__;
output            __m98__;
output            __m99__;
output            __m9__;
output            additional_mapping_control_assume__m133__;
output            additional_mapping_control_assume__m134__;
output            additional_mapping_control_assume__m135__;
output            additional_mapping_control_assume__m136__;
output            additional_mapping_control_assume__m137__;
output            additional_mapping_control_assume__m138__;
output            additional_mapping_control_assume__m139__;
output            additional_mapping_control_assume__m140__;
output            additional_mapping_control_assume__m141__;
output            additional_mapping_control_assume__m142__;
output            additional_mapping_control_assume__m143__;
output            additional_mapping_control_assume__m144__;
output            invariant_assume__m110__;
output            invariant_assume__m111__;
output            invariant_assume__m112__;
output            invariant_assume__m113__;
output            invariant_assume__m114__;
output            invariant_assume__m115__;
output            invariant_assume__m116__;
output            invariant_assume__m117__;
output            invariant_assume__m118__;
output            invariant_assume__m119__;
output            invariant_assume__m120__;
output            invariant_assume__m121__;
output            invariant_assume__m122__;
output            invariant_assume__m123__;
output            invariant_assume__m124__;
output            invariant_assume__m125__;
output            invariant_assume__m126__;
output            invariant_assume__m127__;
output            invariant_assume__m128__;
output            invariant_assume__m129__;
output            invariant_assume__m130__;
output            invariant_assume__m131__;
output            invariant_assume__m132__;
output            issue_decode__m145__;
output            issue_valid__m146__;
output      [3:0] m1__DOT__SYS_ADDR;
output            m1__DOT__TCORE_MODE;
output            m1__DOT__core__DOT__mode_10G;
output            m1__DOT__core__DOT__mode_1G;
output            m1__DOT__core__DOT__mode_2p5G;
output            m1__DOT__core__DOT__mode_5G;
output            m1__DOT__core__DOT__rx_pause;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G;
output      [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val;
output      [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync;
output      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
output      [1:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
output      [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
output      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
output      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
output            m1__DOT__core__DOT__txfifo__DOT__rdreq;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
output     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
output      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
output      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i;
output      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
output            m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren;
output            m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull;
output            m1__DOT__core__DOT__txfifo__DOT__wrfull;
output     [12:0] m1__DOT__core__DOT__txfifo_usedw;
output            m1__DOT__mode_10G;
output            m1__DOT__mode_1G;
output            m1__DOT__mode_2p5G;
output            m1__DOT__mode_5G;
output            noreset__m0__;
output            post_value_holder__m147__;
output            post_value_holder__m148__;
output            post_value_holder__m149__;
output            post_value_holder__m150__;
output            post_value_holder__m151__;
output            post_value_holder__m152__;
output            post_value_holder__m153__;
output            post_value_holder__m154__;
output            post_value_holder__m155__;
output            post_value_holder__m156__;
output            post_value_holder__m157__;
output            post_value_holder__m158__;
output            post_value_holder__m159__;
output            post_value_holder__m160__;
output            post_value_holder__m161__;
output            post_value_holder__m162__;
output            post_value_holder__m163__;
output            post_value_holder__m164__;
output            post_value_holder__m165__;
output            post_value_holder__m166__;
output            post_value_holder__m167__;
output            post_value_holder__m168__;
output            post_value_holder__m169__;
output            post_value_holder__m170__;
output            post_value_holder__m171__;
output            tx_mac_full;
output     [12:0] tx_mac_usedw;
output            variable_map_assert__p101__;
output            variable_map_assert__p105__;
output            variable_map_assert__p107__;
output            variable_map_assert__p109__;
output            variable_map_assert__p68__;
output            variable_map_assert__p70__;
output            variable_map_assert__p72__;
output            variable_map_assert__p78__;
output            variable_map_assert__p83__;
output            variable_map_assert__p85__;
output            variable_map_assert__p90__;
output            variable_map_assert__p92__;
output            variable_map_assert__p97__;
output            variable_map_assume__m13__;
output            variable_map_assume__m18__;
output            variable_map_assume__m21__;
output            variable_map_assume__m24__;
output            variable_map_assume__m29__;
output            variable_map_assume__m2__;
output            variable_map_assume__m31__;
output            variable_map_assume__m36__;
output            variable_map_assume__m38__;
output            variable_map_assume__m40__;
output            variable_map_assume__m42__;
output            variable_map_assume__m45__;
output            variable_map_assume__m47__;
output            variable_map_assume__m4__;
output            variable_map_assume__m52__;
output            variable_map_assume__m56__;
output            variable_map_assume__m60__;
output            variable_map_assume__m62__;
output            variable_map_assume__m64__;
output            variable_map_assume__m66__;
output            variable_map_assume__m6__;
output            variable_map_assume__m8__;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg      [5:0] b2b_counter_LastOne_end;
output reg      [5:0] b2b_counter_RdByteCnt_end;
output reg      [5:0] b2b_counter_WrPktPayload_end;
output reg     [31:0] crc_RdByteCnt_end;
output reg     [31:0] crc_WrPktPaylaod_end;
output reg     [31:0] crc_in_RdByteCnt_end;
output reg     [31:0] crc_in_WrPktPaylaod_end;
output reg     [15:0] tx_pkt_byte_cnt_RdByteCnt_end;
output reg      [7:0] tx_st_encap_RdByteCnt_end;
output reg      [7:0] tx_st_encap_WrPktPayload_end;
output reg      [7:0] tx_state_LastOne_end;
output reg      [7:0] tx_state_RdByteCnt_end;
output reg      [7:0] tx_state_WrPktPayload_end;
output reg     [15:0] tx_wcnt_RdByteCnt_end;
output reg     [15:0] tx_wcnt_WrPktPaylaod_end;
output reg     [63:0] txfifo_buff_rd_output_RdByteCnt_end;
output reg     [63:0] txfifo_buff_rd_output_normal_end;
output reg      [4:0] txfifo_buff_rd_ptr_RdByteCnt_end;
output reg      [4:0] txfifo_buff_rd_ptr_normal_end;
output reg      [4:0] txfifo_buff_wr_ptr_RdByteCnt_end;
output reg      [4:0] txfifo_buff_wr_ptr_normal_end;
output reg            txfifo_full_end;
output reg            txfifo_rd_en_end;
output reg     [12:0] txfifo_wused_RdByte_end;
output reg     [12:0] txfifo_wused_normal_end;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_I_MODE_10G;
(* keep *) wire            __ILA_I_MODE_1G;
(* keep *) wire            __ILA_I_MODE_2P5G;
(* keep *) wire            __ILA_I_MODE_5G;
(* keep *) wire            __ILA_I_RESETN;
(* keep *) wire     [63:0] __ILA_I_TX_DATA;
(* keep *) wire            __ILA_I_TX_WE;
(* keep *) wire     [31:0] __ILA_SO_CRC;
(* keep *) wire     [63:0] __ILA_SO_CRC_DAT_IN;
(* keep *) wire     [31:0] __ILA_SO_CRC_IN;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_0;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_1;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_10;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_11;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_12;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_13;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_14;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_15;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_16;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_17;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_18;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_19;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_2;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_20;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_21;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_22;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_23;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_24;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_25;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_26;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_27;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_28;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_29;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_3;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_30;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_31;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_4;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_5;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_6;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_7;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_8;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_BUFF_9;
(* keep *) wire      [4:0] __ILA_SO_TXFIFO_BUFF_RD_PTR;
(* keep *) wire      [4:0] __ILA_SO_TXFIFO_BUFF_WR_PTR;
(* keep *) wire            __ILA_SO_TXFIFO_FULL;
(* keep *) wire            __ILA_SO_TXFIFO_RD_EN;
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_RD_OUTPUT;
(* keep *) wire     [12:0] __ILA_SO_TXFIFO_WUSED_QWD;
(* keep *) wire      [5:0] __ILA_SO_TX_B2B_CNTR;
(* keep *) wire            __ILA_SO_TX_B2B_OK;
(* keep *) wire     [63:0] __ILA_SO_TX_BUF;
(* keep *) wire     [31:0] __ILA_SO_TX_BYTE_SENT;
(* keep *) wire      [2:0] __ILA_SO_TX_FUNC_INSTR;
(* keep *) wire     [15:0] __ILA_SO_TX_PACKET_BYTE_CNT;
(* keep *) wire     [31:0] __ILA_SO_TX_PKT_SENT;
(* keep *) wire      [4:0] __ILA_SO_TX_STATE;
(* keep *) wire      [7:0] __ILA_SO_TX_STATE_ENCAP;
(* keep *) wire     [15:0] __ILA_SO_TX_WCNT;
(* keep *) wire     [15:0] __ILA_SO_TX_WCNT_INI;
(* keep *) wire      [7:0] __ILA_SO_XGMII_COUT_REG;
(* keep *) wire     [63:0] __ILA_SO_XGMII_DOUT_REG;
(* keep *) wire            __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__;
(* keep *) wire            __ILA_TX_FUNC_valid__;
(* keep *) wire            __ISSUE__;
(* keep *) wire      [3:0] __VLG_I_SYS_ADDR;
(* keep *) wire            __VLG_I_TCORE_MODE;
(* keep *) wire            __VLG_I_cs_fifo_rd_en;
(* keep *) wire            __VLG_I_fail_over;
(* keep *) wire     [31:0] __VLG_I_fmac_ctrl;
(* keep *) wire     [31:0] __VLG_I_fmac_ctrl1;
(* keep *) wire            __VLG_I_fmac_rxd_en;
(* keep *) wire     [15:0] __VLG_I_host_addr_reg;
(* keep *) wire     [47:0] __VLG_I_mac_addr0;
(* keep *) wire     [31:0] __VLG_I_mac_pause_value;
(* keep *) wire            __VLG_I_reg_rd_start;
(* keep *) wire            __VLG_I_rx_mac_rd;
(* keep *) wire            __VLG_I_rx_mac_rd_cycle;
(* keep *) wire     [63:0] __VLG_I_tx_mac_data;
(* keep *) wire            __VLG_I_tx_mac_wr;
(* keep *) wire      [1:0] __VLG_I_xgmii_led_;
(* keep *) wire            __VLG_I_xgmii_reset_;
(* keep *) wire      [7:0] __VLG_I_xgmii_rxc;
(* keep *) wire     [63:0] __VLG_I_xgmii_rxd;
(* keep *) wire            __VLG_O_FIFO_OV_IPEND;
(* keep *) wire     [31:0] __VLG_O_FMAC_REGDOUT;
(* keep *) wire            __VLG_O_cs_fifo_empty;
(* keep *) wire     [63:0] __VLG_O_ipcs_fifo_dout;
(* keep *) wire            __VLG_O_reg_rd_done_out;
(* keep *) wire      [7:0] __VLG_O_rx_mac_ctrl;
(* keep *) wire     [63:0] __VLG_O_rx_mac_data;
(* keep *) wire            __VLG_O_rx_mac_empty;
(* keep *) wire            __VLG_O_xauiA_linkup;
(* keep *) wire      [7:0] __VLG_O_xgmii_txc;
(* keep *) wire     [63:0] __VLG_O_xgmii_txd;
wire      [5:0] __b2b_counter_LastOne_end_init__;
wire      [5:0] __b2b_counter_RdByteCnt_end_init__;
wire      [5:0] __b2b_counter_WrPktPayload_end_init__;
wire     [31:0] __crc_RdByteCnt_end_init__;
wire     [31:0] __crc_WrPktPaylaod_end_init__;
wire     [31:0] __crc_in_RdByteCnt_end_init__;
wire     [31:0] __crc_in_WrPktPaylaod_end_init__;
(* keep *) wire            __m100__;
(* keep *) wire            __m102__;
(* keep *) wire            __m103__;
(* keep *) wire            __m104__;
(* keep *) wire            __m106__;
(* keep *) wire            __m108__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m14__;
(* keep *) wire            __m15__;
(* keep *) wire            __m16__;
(* keep *) wire            __m17__;
(* keep *) wire            __m19__;
(* keep *) wire            __m1__;
(* keep *) wire            __m20__;
(* keep *) wire            __m22__;
(* keep *) wire            __m23__;
(* keep *) wire            __m25__;
(* keep *) wire            __m26__;
(* keep *) wire            __m27__;
(* keep *) wire            __m28__;
(* keep *) wire            __m30__;
(* keep *) wire            __m32__;
(* keep *) wire            __m33__;
(* keep *) wire            __m34__;
(* keep *) wire            __m35__;
(* keep *) wire            __m37__;
(* keep *) wire            __m39__;
(* keep *) wire            __m3__;
(* keep *) wire            __m41__;
(* keep *) wire            __m43__;
(* keep *) wire            __m44__;
(* keep *) wire            __m46__;
(* keep *) wire            __m48__;
(* keep *) wire            __m49__;
(* keep *) wire            __m50__;
(* keep *) wire            __m51__;
(* keep *) wire            __m53__;
(* keep *) wire            __m54__;
(* keep *) wire            __m55__;
(* keep *) wire            __m57__;
(* keep *) wire            __m58__;
(* keep *) wire            __m59__;
(* keep *) wire            __m5__;
(* keep *) wire            __m61__;
(* keep *) wire            __m63__;
(* keep *) wire            __m65__;
(* keep *) wire            __m67__;
(* keep *) wire            __m69__;
(* keep *) wire            __m71__;
(* keep *) wire            __m73__;
(* keep *) wire            __m74__;
(* keep *) wire            __m75__;
(* keep *) wire            __m76__;
(* keep *) wire            __m77__;
(* keep *) wire            __m79__;
(* keep *) wire            __m7__;
(* keep *) wire            __m80__;
(* keep *) wire            __m81__;
(* keep *) wire            __m82__;
(* keep *) wire            __m84__;
(* keep *) wire            __m86__;
(* keep *) wire            __m87__;
(* keep *) wire            __m88__;
(* keep *) wire            __m89__;
(* keep *) wire            __m91__;
(* keep *) wire            __m93__;
(* keep *) wire            __m94__;
(* keep *) wire            __m95__;
(* keep *) wire            __m96__;
(* keep *) wire            __m98__;
(* keep *) wire            __m99__;
(* keep *) wire            __m9__;
wire     [15:0] __tx_pkt_byte_cnt_RdByteCnt_end_init__;
wire      [7:0] __tx_st_encap_RdByteCnt_end_init__;
wire      [7:0] __tx_st_encap_WrPktPayload_end_init__;
wire      [7:0] __tx_state_LastOne_end_init__;
wire      [7:0] __tx_state_RdByteCnt_end_init__;
wire      [7:0] __tx_state_WrPktPayload_end_init__;
wire     [15:0] __tx_wcnt_RdByteCnt_end_init__;
wire     [15:0] __tx_wcnt_WrPktPaylaod_end_init__;
wire     [63:0] __txfifo_buff_rd_output_RdByteCnt_end_init__;
wire     [63:0] __txfifo_buff_rd_output_normal_end_init__;
wire      [4:0] __txfifo_buff_rd_ptr_RdByteCnt_end_init__;
wire      [4:0] __txfifo_buff_rd_ptr_normal_end_init__;
wire      [4:0] __txfifo_buff_wr_ptr_RdByteCnt_end_init__;
wire      [4:0] __txfifo_buff_wr_ptr_normal_end_init__;
wire            __txfifo_full_end_init__;
wire            __txfifo_rd_en_end_init__;
wire     [12:0] __txfifo_wused_RdByte_end_init__;
wire     [12:0] __txfifo_wused_normal_end_init__;
(* keep *) wire            additional_mapping_control_assume__m133__;
(* keep *) wire            additional_mapping_control_assume__m134__;
(* keep *) wire            additional_mapping_control_assume__m135__;
(* keep *) wire            additional_mapping_control_assume__m136__;
(* keep *) wire            additional_mapping_control_assume__m137__;
(* keep *) wire            additional_mapping_control_assume__m138__;
(* keep *) wire            additional_mapping_control_assume__m139__;
(* keep *) wire            additional_mapping_control_assume__m140__;
(* keep *) wire            additional_mapping_control_assume__m141__;
(* keep *) wire            additional_mapping_control_assume__m142__;
(* keep *) wire            additional_mapping_control_assume__m143__;
(* keep *) wire            additional_mapping_control_assume__m144__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire            invariant_assume__m110__;
(* keep *) wire            invariant_assume__m111__;
(* keep *) wire            invariant_assume__m112__;
(* keep *) wire            invariant_assume__m113__;
(* keep *) wire            invariant_assume__m114__;
(* keep *) wire            invariant_assume__m115__;
(* keep *) wire            invariant_assume__m116__;
(* keep *) wire            invariant_assume__m117__;
(* keep *) wire            invariant_assume__m118__;
(* keep *) wire            invariant_assume__m119__;
(* keep *) wire            invariant_assume__m120__;
(* keep *) wire            invariant_assume__m121__;
(* keep *) wire            invariant_assume__m122__;
(* keep *) wire            invariant_assume__m123__;
(* keep *) wire            invariant_assume__m124__;
(* keep *) wire            invariant_assume__m125__;
(* keep *) wire            invariant_assume__m126__;
(* keep *) wire            invariant_assume__m127__;
(* keep *) wire            invariant_assume__m128__;
(* keep *) wire            invariant_assume__m129__;
(* keep *) wire            invariant_assume__m130__;
(* keep *) wire            invariant_assume__m131__;
(* keep *) wire            invariant_assume__m132__;
(* keep *) wire            issue_decode__m145__;
(* keep *) wire            issue_valid__m146__;
(* keep *) wire      [3:0] m1__DOT__SYS_ADDR;
(* keep *) wire            m1__DOT__TCORE_MODE;
(* keep *) wire            m1__DOT__core__DOT__mode_10G;
(* keep *) wire            m1__DOT__core__DOT__mode_1G;
(* keep *) wire            m1__DOT__core__DOT__mode_2p5G;
(* keep *) wire            m1__DOT__core__DOT__mode_5G;
(* keep *) wire            m1__DOT__core__DOT__rx_pause;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G;
(* keep *) wire      [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val;
(* keep *) wire      [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync;
(* keep *) wire      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
(* keep *) wire      [1:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
(* keep *) wire      [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
(* keep *) wire      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
(* keep *) wire      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
(* keep *) wire            m1__DOT__core__DOT__txfifo__DOT__rdreq;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
(* keep *) wire     [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
(* keep *) wire      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
(* keep *) wire      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i;
(* keep *) wire      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
(* keep *) wire            m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren;
(* keep *) wire            m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull;
(* keep *) wire            m1__DOT__core__DOT__txfifo__DOT__wrfull;
(* keep *) wire     [12:0] m1__DOT__core__DOT__txfifo_usedw;
(* keep *) wire            m1__DOT__mode_10G;
(* keep *) wire            m1__DOT__mode_1G;
(* keep *) wire            m1__DOT__mode_2p5G;
(* keep *) wire            m1__DOT__mode_5G;
(* keep *) wire            noreset__m0__;
(* keep *) wire            post_value_holder__m147__;
(* keep *) wire            post_value_holder__m148__;
(* keep *) wire            post_value_holder__m149__;
(* keep *) wire            post_value_holder__m150__;
(* keep *) wire            post_value_holder__m151__;
(* keep *) wire            post_value_holder__m152__;
(* keep *) wire            post_value_holder__m153__;
(* keep *) wire            post_value_holder__m154__;
(* keep *) wire            post_value_holder__m155__;
(* keep *) wire            post_value_holder__m156__;
(* keep *) wire            post_value_holder__m157__;
(* keep *) wire            post_value_holder__m158__;
(* keep *) wire            post_value_holder__m159__;
(* keep *) wire            post_value_holder__m160__;
(* keep *) wire            post_value_holder__m161__;
(* keep *) wire            post_value_holder__m162__;
(* keep *) wire            post_value_holder__m163__;
(* keep *) wire            post_value_holder__m164__;
(* keep *) wire            post_value_holder__m165__;
(* keep *) wire            post_value_holder__m166__;
(* keep *) wire            post_value_holder__m167__;
(* keep *) wire            post_value_holder__m168__;
(* keep *) wire            post_value_holder__m169__;
(* keep *) wire            post_value_holder__m170__;
(* keep *) wire            post_value_holder__m171__;
wire            rst;
(* keep *) wire            tx_mac_full;
(* keep *) wire     [12:0] tx_mac_usedw;
(* keep *) wire            variable_map_assert__p101__;
(* keep *) wire            variable_map_assert__p105__;
(* keep *) wire            variable_map_assert__p107__;
(* keep *) wire            variable_map_assert__p109__;
(* keep *) wire            variable_map_assert__p68__;
(* keep *) wire            variable_map_assert__p70__;
(* keep *) wire            variable_map_assert__p72__;
(* keep *) wire            variable_map_assert__p78__;
(* keep *) wire            variable_map_assert__p83__;
(* keep *) wire            variable_map_assert__p85__;
(* keep *) wire            variable_map_assert__p90__;
(* keep *) wire            variable_map_assert__p92__;
(* keep *) wire            variable_map_assert__p97__;
(* keep *) wire            variable_map_assume__m13__;
(* keep *) wire            variable_map_assume__m18__;
(* keep *) wire            variable_map_assume__m21__;
(* keep *) wire            variable_map_assume__m24__;
(* keep *) wire            variable_map_assume__m29__;
(* keep *) wire            variable_map_assume__m2__;
(* keep *) wire            variable_map_assume__m31__;
(* keep *) wire            variable_map_assume__m36__;
(* keep *) wire            variable_map_assume__m38__;
(* keep *) wire            variable_map_assume__m40__;
(* keep *) wire            variable_map_assume__m42__;
(* keep *) wire            variable_map_assume__m45__;
(* keep *) wire            variable_map_assume__m47__;
(* keep *) wire            variable_map_assume__m4__;
(* keep *) wire            variable_map_assume__m52__;
(* keep *) wire            variable_map_assume__m56__;
(* keep *) wire            variable_map_assume__m60__;
(* keep *) wire            variable_map_assume__m62__;
(* keep *) wire            variable_map_assume__m64__;
(* keep *) wire            variable_map_assume__m66__;
(* keep *) wire            variable_map_assume__m6__;
(* keep *) wire            variable_map_assume__m8__;
assign noreset__m0__ =  (~__RESETED__) || (dummy_reset == 0)  ;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 7) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m1__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32 == __ILA_SO_CRC ;
assign variable_map_assume__m2__ = (~ __START__ )|| ((~ ((__START__) ) || (__m1__))) ;
assign __m3__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin == __ILA_SO_CRC_DAT_IN ;
assign variable_map_assume__m4__ = (~ __START__ )|| ((~ ((__START__) ) || (__m3__))) ;
assign __m5__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in == __ILA_SO_CRC_IN ;
assign variable_map_assume__m6__ = (~ __START__ )|| ((~ ((__START__) ) || (__m5__))) ;
assign __m7__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_)&&( __ILA_SO_TXFIFO_BUFF_1 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_)&&( __ILA_SO_TXFIFO_BUFF_2 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_)&&( __ILA_SO_TXFIFO_BUFF_3 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_)&&( __ILA_SO_TXFIFO_BUFF_4 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_)&&( __ILA_SO_TXFIFO_BUFF_5 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_)&&( __ILA_SO_TXFIFO_BUFF_6 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_)&&( __ILA_SO_TXFIFO_BUFF_7 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_)&&( __ILA_SO_TXFIFO_BUFF_8 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_)&&( __ILA_SO_TXFIFO_BUFF_9 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_)&&( __ILA_SO_TXFIFO_BUFF_10 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_)&&( __ILA_SO_TXFIFO_BUFF_11 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_)&&( __ILA_SO_TXFIFO_BUFF_12 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_)&&( __ILA_SO_TXFIFO_BUFF_13 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_)&&( __ILA_SO_TXFIFO_BUFF_14 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_)&&( __ILA_SO_TXFIFO_BUFF_15 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ;
assign variable_map_assume__m8__ = (~ __START__ )|| (__m7__) ;
assign __m9__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign __m10__ = txfifo_buff_rd_ptr_RdByteCnt_end == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign __m11__ = txfifo_buff_rd_ptr_normal_end == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign __m12__ = txfifo_buff_rd_ptr_normal_end == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign variable_map_assume__m13__ = (~ __START__ )|| ((~ ((__START__) ) || (__m9__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m10__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m11__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m12__))) ;
assign __m14__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr == __ILA_SO_TXFIFO_BUFF_WR_PTR ;
assign __m15__ = txfifo_buff_wr_ptr_RdByteCnt_end == __ILA_SO_TXFIFO_BUFF_WR_PTR ;
assign __m16__ = txfifo_buff_wr_ptr_normal_end == __ILA_SO_TXFIFO_BUFF_WR_PTR ;
assign __m17__ = txfifo_buff_wr_ptr_normal_end == __ILA_SO_TXFIFO_BUFF_WR_PTR ;
assign variable_map_assume__m18__ = (~ __START__ )|| ((~ ((__START__) ) || (__m14__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m15__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m16__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m17__))) ;
assign __m19__ = m1__DOT__core__DOT__txfifo__DOT__wrfull == __ILA_SO_TXFIFO_FULL ;
assign __m20__ = txfifo_full_end == __ILA_SO_TXFIFO_FULL ;
assign variable_map_assume__m21__ = (~ __START__ )|| ((~ ((__START__) ) || (__m19__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m20__))) ;
assign __m22__ = m1__DOT__core__DOT__txfifo__DOT__rdreq == __ILA_SO_TXFIFO_RD_EN ;
assign __m23__ = txfifo_rd_en_end == __ILA_SO_TXFIFO_RD_EN ;
assign variable_map_assume__m24__ = (~ __START__ )|| ((~ ((__START__) ) || (__m22__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m23__))) ;
assign __m25__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m26__ = txfifo_buff_rd_output_RdByteCnt_end == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m27__ = txfifo_buff_rd_output_normal_end == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m28__ = txfifo_buff_rd_output_normal_end == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign variable_map_assume__m29__ = (~ __START__ )|| ((~ ((__START__) ) || (__m25__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m26__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m27__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m28__))) ;
assign __m30__ = m1__DOT__core__DOT__txfifo_usedw == __ILA_SO_TXFIFO_WUSED_QWD ;
assign variable_map_assume__m31__ = (~ __START__ )|| ((~ ((__START__) ) || (__m30__))) ;
assign __m32__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign __m33__ = b2b_counter_RdByteCnt_end == __ILA_SO_TX_B2B_CNTR ;
assign __m34__ = b2b_counter_WrPktPayload_end == __ILA_SO_TX_B2B_CNTR ;
assign __m35__ = b2b_counter_LastOne_end == __ILA_SO_TX_B2B_CNTR ;
assign variable_map_assume__m36__ = (~ __START__ )|| ((~ ((__START__) ) || (__m32__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m33__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m34__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m35__))) ;
assign __m37__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok == __ILA_SO_TX_B2B_OK ;
assign variable_map_assume__m38__ = (~ __START__ )|| (__m37__) ;
assign __m39__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 == __ILA_SO_TX_BUF ;
assign variable_map_assume__m40__ = (~ __START__ )|| ((~ ((__START__) ) || (__m39__))) ;
assign __m41__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt == __ILA_SO_TX_BYTE_SENT ;
assign variable_map_assume__m42__ = (~ __START__ )|| (__m41__) ;
assign __m43__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg == __ILA_SO_TX_PACKET_BYTE_CNT ;
assign __m44__ = tx_pkt_byte_cnt_RdByteCnt_end == __ILA_SO_TX_PACKET_BYTE_CNT ;
assign variable_map_assume__m45__ = (~ __START__ )|| ((~ ((__START__) ) || (__m43__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m44__))) ;
assign __m46__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted == __ILA_SO_TX_PKT_SENT ;
assign variable_map_assume__m47__ = (~ __START__ )|| (__m46__) ;
assign __m48__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == __ILA_SO_TX_STATE ;
assign __m49__ = tx_state_RdByteCnt_end == __ILA_SO_TX_STATE ;
assign __m50__ = tx_state_WrPktPayload_end == __ILA_SO_TX_STATE ;
assign __m51__ = tx_state_LastOne_end == __ILA_SO_TX_STATE ;
assign variable_map_assume__m52__ = (~ __START__ )|| ((~ ((__START__) ) || (__m48__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m49__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m50__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m51__))) ;
assign __m53__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == __ILA_SO_TX_STATE_ENCAP ;
assign __m54__ = tx_st_encap_RdByteCnt_end == __ILA_SO_TX_STATE_ENCAP ;
assign __m55__ = tx_st_encap_WrPktPayload_end == __ILA_SO_TX_STATE_ENCAP ;
assign variable_map_assume__m56__ = (~ __START__ )|| ((~ ((__START__) ) || (__m53__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m54__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m55__))) ;
assign __m57__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt == __ILA_SO_TX_WCNT ;
assign __m58__ = tx_wcnt_RdByteCnt_end == __ILA_SO_TX_WCNT ;
assign __m59__ = tx_wcnt_WrPktPaylaod_end == __ILA_SO_TX_WCNT ;
assign variable_map_assume__m60__ = (~ __START__ )|| ((~ ((__START__) ) || (__m57__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m58__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m59__))) ;
assign __m61__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini == __ILA_SO_TX_WCNT_INI ;
assign variable_map_assume__m62__ = (~ __START__ )|| (__m61__) ;
assign __m63__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == __ILA_SO_XGMII_COUT_REG ;
assign variable_map_assume__m64__ = (~ __START__ )|| (__m63__) ;
assign __m65__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == __ILA_SO_XGMII_DOUT_REG ;
assign variable_map_assume__m66__ = (~ __START__ )|| (__m65__) ;
assign __m67__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32 == __ILA_SO_CRC ;
assign variable_map_assert__p68__ = (~ __IEND__) || ((~ ((__START__) ) || (__m67__))) ;
assign __m69__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin == __ILA_SO_CRC_DAT_IN ;
assign variable_map_assert__p70__ = (~ __IEND__) || ((~ ((__START__) ) || (__m69__))) ;
assign __m71__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in == __ILA_SO_CRC_IN ;
assign variable_map_assert__p72__ = (~ __IEND__) || ((~ ((__START__) ) || (__m71__))) ;
assign __m73__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_)&&( __ILA_SO_TXFIFO_BUFF_1 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_)&&( __ILA_SO_TXFIFO_BUFF_2 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_)&&( __ILA_SO_TXFIFO_BUFF_3 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_)&&( __ILA_SO_TXFIFO_BUFF_4 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_)&&( __ILA_SO_TXFIFO_BUFF_5 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_)&&( __ILA_SO_TXFIFO_BUFF_6 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_)&&( __ILA_SO_TXFIFO_BUFF_7 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_)&&( __ILA_SO_TXFIFO_BUFF_8 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_)&&( __ILA_SO_TXFIFO_BUFF_9 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_)&&( __ILA_SO_TXFIFO_BUFF_10 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_)&&( __ILA_SO_TXFIFO_BUFF_11 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_)&&( __ILA_SO_TXFIFO_BUFF_12 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_)&&( __ILA_SO_TXFIFO_BUFF_13 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_)&&( __ILA_SO_TXFIFO_BUFF_14 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_)&&( __ILA_SO_TXFIFO_BUFF_15 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ;
assign __m74__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign __m75__ = txfifo_buff_rd_ptr_RdByteCnt_end == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign __m76__ = txfifo_buff_rd_ptr_normal_end == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign __m77__ = txfifo_buff_rd_ptr_normal_end == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign variable_map_assert__p78__ = (~ __IEND__) || ((~ ((__START__) ) || (__m74__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m75__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m76__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m77__))) ;
assign __m79__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m80__ = txfifo_buff_rd_output_RdByteCnt_end == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m81__ = txfifo_buff_rd_output_normal_end == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign __m82__ = txfifo_buff_rd_output_normal_end == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign variable_map_assert__p83__ = (~ __IEND__) || ((~ ((__START__) ) || (__m79__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m80__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m81__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m82__))) ;
assign __m84__ = m1__DOT__core__DOT__txfifo_usedw == __ILA_SO_TXFIFO_WUSED_QWD ;
assign variable_map_assert__p85__ = (~ __IEND__) || ((~ ((__START__) ) || (__m84__))) ;
assign __m86__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign __m87__ = b2b_counter_RdByteCnt_end == __ILA_SO_TX_B2B_CNTR ;
assign __m88__ = b2b_counter_WrPktPayload_end == __ILA_SO_TX_B2B_CNTR ;
assign __m89__ = b2b_counter_LastOne_end == __ILA_SO_TX_B2B_CNTR ;
assign variable_map_assert__p90__ = (~ __IEND__) || ((~ ((__START__) ) || (__m86__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m87__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m88__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m89__))) ;
assign __m91__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 == __ILA_SO_TX_BUF ;
assign variable_map_assert__p92__ = (~ __IEND__) || ((~ ((__START__) ) || (__m91__))) ;
assign __m93__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == __ILA_SO_TX_STATE ;
assign __m94__ = tx_state_RdByteCnt_end == __ILA_SO_TX_STATE ;
assign __m95__ = tx_state_WrPktPayload_end == __ILA_SO_TX_STATE ;
assign __m96__ = tx_state_LastOne_end == __ILA_SO_TX_STATE ;
assign variable_map_assert__p97__ = (~ __IEND__) || ((~ ((__START__) ) || (__m93__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m94__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m95__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m96__))) ;
assign __m98__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == __ILA_SO_TX_STATE_ENCAP ;
assign __m99__ = tx_st_encap_RdByteCnt_end == __ILA_SO_TX_STATE_ENCAP ;
assign __m100__ = tx_st_encap_WrPktPayload_end == __ILA_SO_TX_STATE_ENCAP ;
assign variable_map_assert__p101__ = (~ __IEND__) || ((~ ((__START__) ) || (__m98__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m99__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m100__))) ;
assign __m102__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt == __ILA_SO_TX_WCNT ;
assign __m103__ = tx_wcnt_RdByteCnt_end == __ILA_SO_TX_WCNT ;
assign __m104__ = tx_wcnt_WrPktPaylaod_end == __ILA_SO_TX_WCNT ;
assign variable_map_assert__p105__ = (~ __IEND__) || ((~ ((__START__) ) || (__m102__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m103__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m104__))) ;
assign __m106__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == __ILA_SO_XGMII_COUT_REG ;
assign variable_map_assert__p107__ = (~ __IEND__) || (__m106__) ;
assign __m108__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == __ILA_SO_XGMII_DOUT_REG ;
assign variable_map_assert__p109__ = (~ __IEND__) || (__m108__) ;
assign invariant_assume__m110__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state <= 8'h10) ;
assign invariant_assume__m111__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h01) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h02) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04) || ( m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h10) ;
assign invariant_assume__m112__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h01) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h02) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h10) ;
assign invariant_assume__m113__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 1) || ((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 1) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 8) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 16)) ;
assign invariant_assume__m114__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h02) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 1) ;
assign invariant_assume__m115__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 1) ;
assign invariant_assume__m116__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 2) ;
assign invariant_assume__m117__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h10) || ((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h08)) ;
assign invariant_assume__m118__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts == 0)) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts == 1) ;
assign invariant_assume__m119__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel == 0) || (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04) && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel == 1) ;
assign invariant_assume__m120__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h05 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc == 1) || ( ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h05) && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc == 0) ;
assign invariant_assume__m121__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int == 8'hff) ;
assign invariant_assume__m122__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == 8'hff) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == 64'h0707070707070707) ;
assign invariant_assume__m123__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 == 64'hd5555555555555fb) ;
assign invariant_assume__m124__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt <= 104) ;
assign invariant_assume__m125__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes <= 104) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg <= 104) ;
assign invariant_assume__m126__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h10) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes == m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ;
assign invariant_assume__m127__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter < 6) ;
assign invariant_assume__m128__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state > 8'h01) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val == 5) ;
assign invariant_assume__m129__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h10 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == 5) ;
assign invariant_assume__m130__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state >= 5'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter > 0) ;
assign invariant_assume__m131__ = ~((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter <= 4) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter > 0)) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok == 0) ;
assign invariant_assume__m132__ = ~((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h10)) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel == 1) ;
assign additional_mapping_control_assume__m133__ = (m1__DOT__TCORE_MODE == 1) ;
assign additional_mapping_control_assume__m134__ = (m1__DOT__SYS_ADDR == 1) ;
assign additional_mapping_control_assume__m135__ = (m1__DOT__mode_10G == 1) && (m1__DOT__core__DOT__mode_10G == 1) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G == 1) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G == 1) ;
assign additional_mapping_control_assume__m136__ = (m1__DOT__mode_5G == 0 ) && (m1__DOT__core__DOT__mode_5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G == 0) ;
assign additional_mapping_control_assume__m137__ = (m1__DOT__mode_2p5G == 0) && (m1__DOT__core__DOT__mode_2p5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G == 0) ;
assign additional_mapping_control_assume__m138__ = (m1__DOT__mode_1G == 0) && (m1__DOT__core__DOT__mode_1G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G == 0) ;
assign additional_mapping_control_assume__m139__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state > 1) || (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i > 0)) ;
assign additional_mapping_control_assume__m140__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state > 1) || (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren == 0)) ;
assign additional_mapping_control_assume__m141__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 4) || ((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout[15:0] > 60) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout[15:0] < 100))) ;
assign additional_mapping_control_assume__m142__ = (m1__DOT__core__DOT__rx_pause == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync == 0) ;
assign additional_mapping_control_assume__m143__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly == 2) ;
assign additional_mapping_control_assume__m144__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en == 0) ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign issue_decode__m145__ = (~ __START__) || (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) ;
assign issue_valid__m146__ = (~ __START__) || (__ILA_TX_FUNC_valid__) ;
assign __ISSUE__ = 1 ;
assign post_value_holder__m147__ = (~(__CYCLE_CNT__ == 1) || ((b2b_counter_LastOne_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m148__ = (~(__CYCLE_CNT__ == 5) || ((b2b_counter_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m149__ = (~(__CYCLE_CNT__ == 1) || ((b2b_counter_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m150__ = (~(__CYCLE_CNT__ == 2) || ((crc_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32))) ;
assign post_value_holder__m151__ = (~(__CYCLE_CNT__ == 1) || ((crc_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32))) ;
assign post_value_holder__m152__ = (~(__CYCLE_CNT__ == 2) || ((crc_in_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in))) ;
assign post_value_holder__m153__ = (~(__CYCLE_CNT__ == 1) || ((crc_in_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in))) ;
assign post_value_holder__m154__ = (~(__CYCLE_CNT__ == 4) || ((tx_pkt_byte_cnt_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg))) ;
assign post_value_holder__m155__ = (~(__CYCLE_CNT__ == 4) || ((tx_st_encap_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state))) ;
assign post_value_holder__m156__ = (~(__CYCLE_CNT__ == 1) || ((tx_st_encap_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state))) ;
assign post_value_holder__m157__ = (~(__CYCLE_CNT__ == 1) || ((tx_state_LastOne_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m158__ = (~(__CYCLE_CNT__ == 5) || ((tx_state_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m159__ = (~(__CYCLE_CNT__ == 1) || ((tx_state_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m160__ = (~(__CYCLE_CNT__ == 5) || ((tx_wcnt_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt))) ;
assign post_value_holder__m161__ = (~(__CYCLE_CNT__ == 1) || ((tx_wcnt_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt))) ;
assign post_value_holder__m162__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_buff_rd_output_RdByteCnt_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout))) ;
assign post_value_holder__m163__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_buff_rd_output_normal_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout))) ;
assign post_value_holder__m164__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_buff_rd_ptr_RdByteCnt_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr))) ;
assign post_value_holder__m165__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_buff_rd_ptr_normal_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr))) ;
assign post_value_holder__m166__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_buff_wr_ptr_RdByteCnt_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr))) ;
assign post_value_holder__m167__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_buff_wr_ptr_normal_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr))) ;
assign post_value_holder__m168__ = (~(__START__ == 1) || ((txfifo_full_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull))) ;
assign post_value_holder__m169__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_rd_en_end) == (m1__DOT__core__DOT__txfifo__DOT__rdreq))) ;
assign post_value_holder__m170__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_wused_RdByte_end) == (m1__DOT__core__DOT__txfifo_usedw))) ;
assign post_value_holder__m171__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_wused_normal_end) == (m1__DOT__core__DOT__txfifo_usedw))) ;

TX_FUNC__DOT__WR_PKT_PAYLOAD_10G m0 (
   .MODE_10G(__ILA_I_MODE_10G),
   .MODE_1G(__ILA_I_MODE_1G),
   .MODE_2P5G(__ILA_I_MODE_2P5G),
   .MODE_5G(__ILA_I_MODE_5G),
   .RESETN(__ILA_I_RESETN),
   .TX_DATA(__ILA_I_TX_DATA),
   .TX_WE(__ILA_I_TX_WE),
   .__START__(__START__),
   .clk(clk),
   .rst(rst),
   .__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__(__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__),
   .__ILA_TX_FUNC_valid__(__ILA_TX_FUNC_valid__),
   .TXFIFO_BUFF_0(__ILA_SO_TXFIFO_BUFF_0),
   .TXFIFO_BUFF_1(__ILA_SO_TXFIFO_BUFF_1),
   .TXFIFO_BUFF_2(__ILA_SO_TXFIFO_BUFF_2),
   .TXFIFO_BUFF_3(__ILA_SO_TXFIFO_BUFF_3),
   .TXFIFO_BUFF_4(__ILA_SO_TXFIFO_BUFF_4),
   .TXFIFO_BUFF_5(__ILA_SO_TXFIFO_BUFF_5),
   .TXFIFO_BUFF_6(__ILA_SO_TXFIFO_BUFF_6),
   .TXFIFO_BUFF_7(__ILA_SO_TXFIFO_BUFF_7),
   .TXFIFO_BUFF_8(__ILA_SO_TXFIFO_BUFF_8),
   .TXFIFO_BUFF_9(__ILA_SO_TXFIFO_BUFF_9),
   .TXFIFO_BUFF_10(__ILA_SO_TXFIFO_BUFF_10),
   .TXFIFO_BUFF_11(__ILA_SO_TXFIFO_BUFF_11),
   .TXFIFO_BUFF_12(__ILA_SO_TXFIFO_BUFF_12),
   .TXFIFO_BUFF_13(__ILA_SO_TXFIFO_BUFF_13),
   .TXFIFO_BUFF_14(__ILA_SO_TXFIFO_BUFF_14),
   .TXFIFO_BUFF_15(__ILA_SO_TXFIFO_BUFF_15),
   .TXFIFO_BUFF_16(__ILA_SO_TXFIFO_BUFF_16),
   .TXFIFO_BUFF_17(__ILA_SO_TXFIFO_BUFF_17),
   .TXFIFO_BUFF_18(__ILA_SO_TXFIFO_BUFF_18),
   .TXFIFO_BUFF_19(__ILA_SO_TXFIFO_BUFF_19),
   .TXFIFO_BUFF_20(__ILA_SO_TXFIFO_BUFF_20),
   .TXFIFO_BUFF_21(__ILA_SO_TXFIFO_BUFF_21),
   .TXFIFO_BUFF_22(__ILA_SO_TXFIFO_BUFF_22),
   .TXFIFO_BUFF_23(__ILA_SO_TXFIFO_BUFF_23),
   .TXFIFO_BUFF_24(__ILA_SO_TXFIFO_BUFF_24),
   .TXFIFO_BUFF_25(__ILA_SO_TXFIFO_BUFF_25),
   .TXFIFO_BUFF_26(__ILA_SO_TXFIFO_BUFF_26),
   .TXFIFO_BUFF_27(__ILA_SO_TXFIFO_BUFF_27),
   .TXFIFO_BUFF_28(__ILA_SO_TXFIFO_BUFF_28),
   .TXFIFO_BUFF_29(__ILA_SO_TXFIFO_BUFF_29),
   .TXFIFO_BUFF_30(__ILA_SO_TXFIFO_BUFF_30),
   .TXFIFO_BUFF_31(__ILA_SO_TXFIFO_BUFF_31),
   .TXFIFO_FULL(__ILA_SO_TXFIFO_FULL),
   .TXFIFO_WUSED_QWD(__ILA_SO_TXFIFO_WUSED_QWD),
   .TXFIFO_BUFF_RD_PTR(__ILA_SO_TXFIFO_BUFF_RD_PTR),
   .TXFIFO_BUFF_WR_PTR(__ILA_SO_TXFIFO_BUFF_WR_PTR),
   .TXFIFO_RD_OUTPUT(__ILA_SO_TXFIFO_RD_OUTPUT),
   .TXFIFO_RD_EN(__ILA_SO_TXFIFO_RD_EN),
   .TX_STATE(__ILA_SO_TX_STATE),
   .TX_STATE_ENCAP(__ILA_SO_TX_STATE_ENCAP),
   .TX_B2B_CNTR(__ILA_SO_TX_B2B_CNTR),
   .TX_B2B_OK(__ILA_SO_TX_B2B_OK),
   .TX_PACKET_BYTE_CNT(__ILA_SO_TX_PACKET_BYTE_CNT),
   .TX_WCNT(__ILA_SO_TX_WCNT),
   .XGMII_DOUT_REG(__ILA_SO_XGMII_DOUT_REG),
   .XGMII_COUT_REG(__ILA_SO_XGMII_COUT_REG),
   .TX_PKT_SENT(__ILA_SO_TX_PKT_SENT),
   .TX_BYTE_SENT(__ILA_SO_TX_BYTE_SENT),
   .CRC(__ILA_SO_CRC),
   .CRC_DAT_IN(__ILA_SO_CRC_DAT_IN),
   .CRC_IN(__ILA_SO_CRC_IN),
   .TX_WCNT_INI(__ILA_SO_TX_WCNT_INI),
   .TX_BUF(__ILA_SO_TX_BUF),
   .TX_FUNC_INSTR(__ILA_SO_TX_FUNC_INSTR),
   .__COUNTER_start__n3()
);
LMAC_CORE_TOP m1(
    .FIFO_OV_IPEND(__VLG_O_FIFO_OV_IPEND),
    .FMAC_REGDOUT(__VLG_O_FMAC_REGDOUT),
    .SYS_ADDR(__VLG_I_SYS_ADDR),
    .TCORE_MODE(__VLG_I_TCORE_MODE),
    .clk(clk),
    .cs_fifo_empty(__VLG_O_cs_fifo_empty),
    .cs_fifo_rd_en(__VLG_I_cs_fifo_rd_en),
    .fail_over(__VLG_I_fail_over),
    .fmac_ctrl(__VLG_I_fmac_ctrl),
    .fmac_ctrl1(__VLG_I_fmac_ctrl1),
    .fmac_rxd_en(__VLG_I_fmac_rxd_en),
    .host_addr_reg(__VLG_I_host_addr_reg),
    .ipcs_fifo_dout(__VLG_O_ipcs_fifo_dout),
    .m1__DOT__SYS_ADDR(m1__DOT__SYS_ADDR),
    .m1__DOT__TCORE_MODE(m1__DOT__TCORE_MODE),
    .m1__DOT__core__DOT__mode_10G(m1__DOT__core__DOT__mode_10G),
    .m1__DOT__core__DOT__mode_1G(m1__DOT__core__DOT__mode_1G),
    .m1__DOT__core__DOT__mode_2p5G(m1__DOT__core__DOT__mode_2p5G),
    .m1__DOT__core__DOT__mode_5G(m1__DOT__core__DOT__mode_5G),
    .m1__DOT__core__DOT__rx_pause(m1__DOT__core__DOT__rx_pause),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt),
    .m1__DOT__core__DOT__txfifo__DOT__rdreq(m1__DOT__core__DOT__txfifo__DOT__rdreq),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren),
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull),
    .m1__DOT__core__DOT__txfifo__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__wrfull),
    .m1__DOT__core__DOT__txfifo_usedw(m1__DOT__core__DOT__txfifo_usedw),
    .m1__DOT__mode_10G(m1__DOT__mode_10G),
    .m1__DOT__mode_1G(m1__DOT__mode_1G),
    .m1__DOT__mode_2p5G(m1__DOT__mode_2p5G),
    .m1__DOT__mode_5G(m1__DOT__mode_5G),
    .mac_addr0(__VLG_I_mac_addr0),
    .mac_pause_value(__VLG_I_mac_pause_value),
    .mode_10G(__ILA_I_MODE_10G),
    .mode_1G(__ILA_I_MODE_1G),
    .mode_2p5G(__ILA_I_MODE_2P5G),
    .mode_5G(__ILA_I_MODE_5G),
    .reg_rd_done_out(__VLG_O_reg_rd_done_out),
    .reg_rd_start(__VLG_I_reg_rd_start),
    .reset_(~dummy_reset),
    .rx_mac_ctrl(__VLG_O_rx_mac_ctrl),
    .rx_mac_data(__VLG_O_rx_mac_data),
    .rx_mac_empty(__VLG_O_rx_mac_empty),
    .rx_mac_full_dbg(),
    .rx_mac_rd(__VLG_I_rx_mac_rd),
    .rx_mac_rd_cycle(__VLG_I_rx_mac_rd_cycle),
    .rx_mac_usedw_dbg(),
    .tx_mac_data(__VLG_I_tx_mac_data),
    .tx_mac_full(tx_mac_full),
    .tx_mac_usedw(tx_mac_usedw),
    .tx_mac_wr(__VLG_I_tx_mac_wr),
    .xA_clk(clk),
    .xauiA_linkup(__VLG_O_xauiA_linkup),
    .xgmii_led_(__VLG_I_xgmii_led_),
    .xgmii_reset_(__VLG_I_xgmii_reset_),
    .xgmii_rxc(__VLG_I_xgmii_rxc),
    .xgmii_rxd(__VLG_I_xgmii_rxd),
    .xgmii_txc(__VLG_O_xgmii_txc),
    .xgmii_txd(__VLG_O_xgmii_txd)
);
always @(posedge clk) begin
   if(rst) begin
       b2b_counter_LastOne_end <= __b2b_counter_LastOne_end_init__;
       b2b_counter_RdByteCnt_end <= __b2b_counter_RdByteCnt_end_init__;
       b2b_counter_WrPktPayload_end <= __b2b_counter_WrPktPayload_end_init__;
       crc_RdByteCnt_end <= __crc_RdByteCnt_end_init__;
       crc_WrPktPaylaod_end <= __crc_WrPktPaylaod_end_init__;
       crc_in_RdByteCnt_end <= __crc_in_RdByteCnt_end_init__;
       crc_in_WrPktPaylaod_end <= __crc_in_WrPktPaylaod_end_init__;
       tx_pkt_byte_cnt_RdByteCnt_end <= __tx_pkt_byte_cnt_RdByteCnt_end_init__;
       tx_st_encap_RdByteCnt_end <= __tx_st_encap_RdByteCnt_end_init__;
       tx_st_encap_WrPktPayload_end <= __tx_st_encap_WrPktPayload_end_init__;
       tx_state_LastOne_end <= __tx_state_LastOne_end_init__;
       tx_state_RdByteCnt_end <= __tx_state_RdByteCnt_end_init__;
       tx_state_WrPktPayload_end <= __tx_state_WrPktPayload_end_init__;
       tx_wcnt_RdByteCnt_end <= __tx_wcnt_RdByteCnt_end_init__;
       tx_wcnt_WrPktPaylaod_end <= __tx_wcnt_WrPktPaylaod_end_init__;
       txfifo_buff_rd_output_RdByteCnt_end <= __txfifo_buff_rd_output_RdByteCnt_end_init__;
       txfifo_buff_rd_output_normal_end <= __txfifo_buff_rd_output_normal_end_init__;
       txfifo_buff_rd_ptr_RdByteCnt_end <= __txfifo_buff_rd_ptr_RdByteCnt_end_init__;
       txfifo_buff_rd_ptr_normal_end <= __txfifo_buff_rd_ptr_normal_end_init__;
       txfifo_buff_wr_ptr_RdByteCnt_end <= __txfifo_buff_wr_ptr_RdByteCnt_end_init__;
       txfifo_buff_wr_ptr_normal_end <= __txfifo_buff_wr_ptr_normal_end_init__;
       txfifo_full_end <= __txfifo_full_end_init__;
       txfifo_rd_en_end <= __txfifo_rd_en_end_init__;
       txfifo_wused_RdByte_end <= __txfifo_wused_RdByte_end_init__;
       txfifo_wused_normal_end <= __txfifo_wused_normal_end_init__;
   end
   else if(1) begin
       b2b_counter_LastOne_end <= b2b_counter_LastOne_end;
       b2b_counter_RdByteCnt_end <= b2b_counter_RdByteCnt_end;
       b2b_counter_WrPktPayload_end <= b2b_counter_WrPktPayload_end;
       crc_RdByteCnt_end <= crc_RdByteCnt_end;
       crc_WrPktPaylaod_end <= crc_WrPktPaylaod_end;
       crc_in_RdByteCnt_end <= crc_in_RdByteCnt_end;
       crc_in_WrPktPaylaod_end <= crc_in_WrPktPaylaod_end;
       tx_pkt_byte_cnt_RdByteCnt_end <= tx_pkt_byte_cnt_RdByteCnt_end;
       tx_st_encap_RdByteCnt_end <= tx_st_encap_RdByteCnt_end;
       tx_st_encap_WrPktPayload_end <= tx_st_encap_WrPktPayload_end;
       tx_state_LastOne_end <= tx_state_LastOne_end;
       tx_state_RdByteCnt_end <= tx_state_RdByteCnt_end;
       tx_state_WrPktPayload_end <= tx_state_WrPktPayload_end;
       tx_wcnt_RdByteCnt_end <= tx_wcnt_RdByteCnt_end;
       tx_wcnt_WrPktPaylaod_end <= tx_wcnt_WrPktPaylaod_end;
       txfifo_buff_rd_output_RdByteCnt_end <= txfifo_buff_rd_output_RdByteCnt_end;
       txfifo_buff_rd_output_normal_end <= txfifo_buff_rd_output_normal_end;
       txfifo_buff_rd_ptr_RdByteCnt_end <= txfifo_buff_rd_ptr_RdByteCnt_end;
       txfifo_buff_rd_ptr_normal_end <= txfifo_buff_rd_ptr_normal_end;
       txfifo_buff_wr_ptr_RdByteCnt_end <= txfifo_buff_wr_ptr_RdByteCnt_end;
       txfifo_buff_wr_ptr_normal_end <= txfifo_buff_wr_ptr_normal_end;
       txfifo_full_end <= txfifo_full_end;
       txfifo_rd_en_end <= txfifo_rd_en_end;
       txfifo_wused_RdByte_end <= txfifo_wused_RdByte_end;
       txfifo_wused_normal_end <= txfifo_wused_normal_end;
   end
end
endmodule
module TX_FUNC__DOT__WR_PKT_PAYLOAD_10G(
MODE_10G,
MODE_1G,
MODE_2P5G,
MODE_5G,
RESETN,
TX_DATA,
TX_WE,
__START__,
clk,
rst,
__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__,
__ILA_TX_FUNC_valid__,
TXFIFO_BUFF_0,
TXFIFO_BUFF_1,
TXFIFO_BUFF_2,
TXFIFO_BUFF_3,
TXFIFO_BUFF_4,
TXFIFO_BUFF_5,
TXFIFO_BUFF_6,
TXFIFO_BUFF_7,
TXFIFO_BUFF_8,
TXFIFO_BUFF_9,
TXFIFO_BUFF_10,
TXFIFO_BUFF_11,
TXFIFO_BUFF_12,
TXFIFO_BUFF_13,
TXFIFO_BUFF_14,
TXFIFO_BUFF_15,
TXFIFO_BUFF_16,
TXFIFO_BUFF_17,
TXFIFO_BUFF_18,
TXFIFO_BUFF_19,
TXFIFO_BUFF_20,
TXFIFO_BUFF_21,
TXFIFO_BUFF_22,
TXFIFO_BUFF_23,
TXFIFO_BUFF_24,
TXFIFO_BUFF_25,
TXFIFO_BUFF_26,
TXFIFO_BUFF_27,
TXFIFO_BUFF_28,
TXFIFO_BUFF_29,
TXFIFO_BUFF_30,
TXFIFO_BUFF_31,
TXFIFO_FULL,
TXFIFO_WUSED_QWD,
TXFIFO_BUFF_RD_PTR,
TXFIFO_BUFF_WR_PTR,
TXFIFO_RD_OUTPUT,
TXFIFO_RD_EN,
TX_STATE,
TX_STATE_ENCAP,
TX_B2B_CNTR,
TX_B2B_OK,
TX_PACKET_BYTE_CNT,
TX_WCNT,
XGMII_DOUT_REG,
XGMII_COUT_REG,
TX_PKT_SENT,
TX_BYTE_SENT,
CRC,
CRC_DAT_IN,
CRC_IN,
TX_WCNT_INI,
TX_BUF,
TX_FUNC_INSTR,
__COUNTER_start__n3
);
input            MODE_10G;
input            MODE_1G;
input            MODE_2P5G;
input            MODE_5G;
input            RESETN;
input     [63:0] TX_DATA;
input            TX_WE;
input            __START__;
input            clk;
input            rst;
output            __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__;
output            __ILA_TX_FUNC_valid__;
output     [63:0] TXFIFO_BUFF_0;
output     [63:0] TXFIFO_BUFF_1;
output     [63:0] TXFIFO_BUFF_2;
output     [63:0] TXFIFO_BUFF_3;
output     [63:0] TXFIFO_BUFF_4;
output     [63:0] TXFIFO_BUFF_5;
output     [63:0] TXFIFO_BUFF_6;
output     [63:0] TXFIFO_BUFF_7;
output     [63:0] TXFIFO_BUFF_8;
output     [63:0] TXFIFO_BUFF_9;
output     [63:0] TXFIFO_BUFF_10;
output     [63:0] TXFIFO_BUFF_11;
output     [63:0] TXFIFO_BUFF_12;
output     [63:0] TXFIFO_BUFF_13;
output     [63:0] TXFIFO_BUFF_14;
output     [63:0] TXFIFO_BUFF_15;
output     [63:0] TXFIFO_BUFF_16;
output     [63:0] TXFIFO_BUFF_17;
output     [63:0] TXFIFO_BUFF_18;
output     [63:0] TXFIFO_BUFF_19;
output     [63:0] TXFIFO_BUFF_20;
output     [63:0] TXFIFO_BUFF_21;
output     [63:0] TXFIFO_BUFF_22;
output     [63:0] TXFIFO_BUFF_23;
output     [63:0] TXFIFO_BUFF_24;
output     [63:0] TXFIFO_BUFF_25;
output     [63:0] TXFIFO_BUFF_26;
output     [63:0] TXFIFO_BUFF_27;
output     [63:0] TXFIFO_BUFF_28;
output     [63:0] TXFIFO_BUFF_29;
output     [63:0] TXFIFO_BUFF_30;
output     [63:0] TXFIFO_BUFF_31;
output reg            TXFIFO_FULL;
output reg     [12:0] TXFIFO_WUSED_QWD;
output reg      [4:0] TXFIFO_BUFF_RD_PTR;
output reg      [4:0] TXFIFO_BUFF_WR_PTR;
output reg     [63:0] TXFIFO_RD_OUTPUT;
output reg            TXFIFO_RD_EN;
output reg      [4:0] TX_STATE;
output reg      [7:0] TX_STATE_ENCAP;
output reg      [5:0] TX_B2B_CNTR;
output reg            TX_B2B_OK;
output reg     [15:0] TX_PACKET_BYTE_CNT;
output reg     [15:0] TX_WCNT;
output reg     [63:0] XGMII_DOUT_REG;
output reg      [7:0] XGMII_COUT_REG;
output reg     [31:0] TX_PKT_SENT;
output reg     [31:0] TX_BYTE_SENT;
output reg     [31:0] CRC;
output reg     [63:0] CRC_DAT_IN;
output reg     [31:0] CRC_IN;
output reg     [15:0] TX_WCNT_INI;
output reg     [63:0] TX_BUF;
output reg      [2:0] TX_FUNC_INSTR;
output reg      [7:0] __COUNTER_start__n3;
(* keep *) wire     [63:0] CRC_DAT_IN_randinit;
(* keep *) wire     [31:0] CRC_IN_randinit;
(* keep *) wire     [31:0] CRC_randinit;
wire            MODE_10G;
wire            MODE_1G;
wire            MODE_2P5G;
wire            MODE_5G;
wire            RESETN;
wire     [63:0] TXFIFO_BUFF_0;
wire     [63:0] TXFIFO_BUFF_1;
wire     [63:0] TXFIFO_BUFF_10;
wire     [63:0] TXFIFO_BUFF_11;
wire     [63:0] TXFIFO_BUFF_12;
wire     [63:0] TXFIFO_BUFF_13;
wire     [63:0] TXFIFO_BUFF_14;
wire     [63:0] TXFIFO_BUFF_15;
wire     [63:0] TXFIFO_BUFF_16;
wire     [63:0] TXFIFO_BUFF_17;
wire     [63:0] TXFIFO_BUFF_18;
wire     [63:0] TXFIFO_BUFF_19;
wire     [63:0] TXFIFO_BUFF_2;
wire     [63:0] TXFIFO_BUFF_20;
wire     [63:0] TXFIFO_BUFF_21;
wire     [63:0] TXFIFO_BUFF_22;
wire     [63:0] TXFIFO_BUFF_23;
wire     [63:0] TXFIFO_BUFF_24;
wire     [63:0] TXFIFO_BUFF_25;
wire     [63:0] TXFIFO_BUFF_26;
wire     [63:0] TXFIFO_BUFF_27;
wire     [63:0] TXFIFO_BUFF_28;
wire     [63:0] TXFIFO_BUFF_29;
wire     [63:0] TXFIFO_BUFF_3;
wire     [63:0] TXFIFO_BUFF_30;
wire     [63:0] TXFIFO_BUFF_31;
wire     [63:0] TXFIFO_BUFF_4;
wire     [63:0] TXFIFO_BUFF_5;
wire     [63:0] TXFIFO_BUFF_6;
wire     [63:0] TXFIFO_BUFF_7;
wire     [63:0] TXFIFO_BUFF_8;
wire     [63:0] TXFIFO_BUFF_9;
(* keep *) wire      [4:0] TXFIFO_BUFF_RD_PTR_randinit;
(* keep *) wire      [4:0] TXFIFO_BUFF_WR_PTR_randinit;
(* keep *) wire            TXFIFO_FULL_randinit;
(* keep *) wire            TXFIFO_RD_EN_randinit;
(* keep *) wire     [63:0] TXFIFO_RD_OUTPUT_randinit;
(* keep *) wire     [12:0] TXFIFO_WUSED_QWD_randinit;
(* keep *) wire      [5:0] TX_B2B_CNTR_randinit;
(* keep *) wire            TX_B2B_OK_randinit;
(* keep *) wire     [63:0] TX_BUF_randinit;
(* keep *) wire     [31:0] TX_BYTE_SENT_randinit;
wire     [63:0] TX_DATA;
(* keep *) wire      [2:0] TX_FUNC_INSTR_randinit;
(* keep *) wire     [15:0] TX_PACKET_BYTE_CNT_randinit;
(* keep *) wire     [31:0] TX_PKT_SENT_randinit;
(* keep *) wire      [7:0] TX_STATE_ENCAP_randinit;
(* keep *) wire      [4:0] TX_STATE_randinit;
(* keep *) wire     [15:0] TX_WCNT_INI_randinit;
(* keep *) wire     [15:0] TX_WCNT_randinit;
wire            TX_WE;
(* keep *) wire      [7:0] XGMII_COUT_REG_randinit;
(* keep *) wire     [63:0] XGMII_DOUT_REG_randinit;
wire            __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__;
wire            __ILA_TX_FUNC_valid__;
wire            __START__;
wire            clk;
wire            n0____DOLLAR__563;
wire            n1000____DOLLAR__5072;
wire            n1001____DOLLAR__5080;
wire            n1002____DOLLAR__5063;
wire            n1003____DOLLAR__5056;
wire            n1004____DOLLAR__5049;
wire            n1005____DOLLAR__5042;
wire            n1006____DOLLAR__5035;
wire            n1007____DOLLAR__5028;
wire            n1008____DOLLAR__5021;
wire      [7:0] n1009____DOLLAR__5023;
wire            n100____DOLLAR__988;
wire      [7:0] n1010____DOLLAR__5030;
wire      [7:0] n1011____DOLLAR__5037;
wire      [7:0] n1012____DOLLAR__5044;
wire      [7:0] n1013____DOLLAR__5051;
wire      [7:0] n1014____DOLLAR__5058;
wire      [7:0] n1015____DOLLAR__5065;
wire            n1016____DOLLAR__5012;
wire            n1017____DOLLAR__5007;
wire            n1018____DOLLAR__5000;
wire            n1019____DOLLAR__4993;
wire     [31:0] n101____DOLLAR__984;
wire            n1020____DOLLAR__4986;
wire            n1021____DOLLAR__4979;
wire            n1022____DOLLAR__4972;
wire            n1023____DOLLAR__4965;
wire      [7:0] n1024____DOLLAR__4967;
wire      [7:0] n1025____DOLLAR__4974;
wire      [7:0] n1026____DOLLAR__4981;
wire      [7:0] n1027____DOLLAR__4988;
wire      [7:0] n1028____DOLLAR__4995;
wire      [7:0] n1029____DOLLAR__5002;
wire            n102____DOLLAR__973;
wire      [7:0] n1030____DOLLAR__5009;
wire      [7:0] n1031____DOLLAR__5014;
wire      [7:0] n1032____DOLLAR__5081;
wire      [7:0] n1033____DOLLAR__5088;
wire            n1034____DOLLAR__685;
wire            n1035____DOLLAR__920;
wire            n1036____DOLLAR__915;
wire      [7:0] n1037____DOLLAR__905;
wire     [55:0] n1038____DOLLAR__903;
wire     [63:0] n1039____DOLLAR__911;
wire     [31:0] n103____DOLLAR__969;
wire            n1040____DOLLAR__892;
wire     [15:0] n1041____DOLLAR__882;
wire     [47:0] n1042____DOLLAR__880;
wire     [63:0] n1043____DOLLAR__888;
wire            n1044____DOLLAR__869;
wire     [23:0] n1045____DOLLAR__859;
wire     [39:0] n1046____DOLLAR__857;
wire     [63:0] n1047____DOLLAR__865;
wire            n1048____DOLLAR__846;
wire     [31:0] n1049____DOLLAR__836;
wire            n104____DOLLAR__958;
wire     [63:0] n1050____DOLLAR__842;
wire            n1051____DOLLAR__831;
wire     [39:0] n1052____DOLLAR__821;
wire     [63:0] n1053____DOLLAR__827;
wire            n1054____DOLLAR__816;
wire     [47:0] n1055____DOLLAR__806;
wire     [63:0] n1056____DOLLAR__812;
wire     [55:0] n1057____DOLLAR__796;
wire     [63:0] n1058____DOLLAR__802;
wire     [63:0] n1059____DOLLAR__818;
wire     [31:0] n105____DOLLAR__954;
wire     [63:0] n1060____DOLLAR__833;
wire     [63:0] n1061____DOLLAR__848;
wire     [63:0] n1062____DOLLAR__871;
wire     [63:0] n1063____DOLLAR__894;
wire     [63:0] n1064____DOLLAR__917;
wire     [63:0] n1065____DOLLAR__922;
wire            n1066____DOLLAR__791;
wire            n1067____DOLLAR__786;
wire      [7:0] n1068____DOLLAR__776;
wire     [55:0] n1069____DOLLAR__774;
wire     [31:0] n106____DOLLAR__944;
wire     [63:0] n1070____DOLLAR__782;
wire            n1071____DOLLAR__771;
wire     [15:0] n1072____DOLLAR__761;
wire     [47:0] n1073____DOLLAR__759;
wire     [63:0] n1074____DOLLAR__767;
wire            n1075____DOLLAR__756;
wire     [23:0] n1076____DOLLAR__746;
wire     [39:0] n1077____DOLLAR__744;
wire     [63:0] n1078____DOLLAR__752;
wire            n1079____DOLLAR__741;
wire     [31:0] n107____DOLLAR__960;
wire     [31:0] n1080____DOLLAR__731;
wire     [31:0] n1081____DOLLAR__729;
wire     [63:0] n1082____DOLLAR__737;
wire            n1083____DOLLAR__726;
wire     [39:0] n1084____DOLLAR__716;
wire     [23:0] n1085____DOLLAR__714;
wire     [63:0] n1086____DOLLAR__722;
wire            n1087____DOLLAR__711;
wire     [47:0] n1088____DOLLAR__701;
wire     [15:0] n1089____DOLLAR__699;
wire     [31:0] n108____DOLLAR__975;
wire     [63:0] n1090____DOLLAR__707;
wire     [55:0] n1091____DOLLAR__691;
wire      [7:0] n1092____DOLLAR__689;
wire     [63:0] n1093____DOLLAR__697;
wire     [63:0] n1094____DOLLAR__713;
wire     [63:0] n1095____DOLLAR__728;
wire     [63:0] n1096____DOLLAR__743;
wire     [63:0] n1097____DOLLAR__758;
wire     [63:0] n1098____DOLLAR__773;
wire     [63:0] n1099____DOLLAR__788;
wire     [31:0] n109____DOLLAR__990;
wire      [4:0] n10____DOLLAR__670;
wire     [63:0] n1100____DOLLAR__793;
wire     [63:0] n1101____DOLLAR__923;
wire     [31:0] n110____DOLLAR__1005;
wire     [31:0] n111____DOLLAR__1020;
wire     [31:0] n112____DOLLAR__1035;
wire     [31:0] n113____DOLLAR__1050;
wire     [31:0] n114____DOLLAR__1065;
wire     [31:0] n115____DOLLAR__1080;
wire     [31:0] n116____DOLLAR__1095;
wire     [31:0] n117____DOLLAR__1110;
wire     [31:0] n118____DOLLAR__1125;
wire     [31:0] n119____DOLLAR__1140;
wire      [4:0] n11____DOLLAR__675;
wire     [31:0] n120____DOLLAR__1155;
wire     [31:0] n121____DOLLAR__1170;
wire     [31:0] n122____DOLLAR__929;
wire     [31:0] n123____DOLLAR__1171;
wire      [7:0] n124____DOLLAR__1180;
wire      [7:0] n125____DOLLAR__1179;
wire      [7:0] n126____DOLLAR__1182;
wire      [7:0] n127____DOLLAR__1183;
wire            n128____DOLLAR__1416;
wire     [31:0] n129____DOLLAR__1412;
wire            n12____DOLLAR__658;
wire            n130____DOLLAR__1401;
wire     [31:0] n131____DOLLAR__1397;
wire            n132____DOLLAR__1386;
wire     [31:0] n133____DOLLAR__1382;
wire            n134____DOLLAR__1371;
wire     [31:0] n135____DOLLAR__1367;
wire            n136____DOLLAR__1356;
wire     [31:0] n137____DOLLAR__1352;
wire            n138____DOLLAR__1341;
wire     [31:0] n139____DOLLAR__1337;
wire            n13____DOLLAR__649;
wire            n140____DOLLAR__1326;
wire     [31:0] n141____DOLLAR__1322;
wire            n142____DOLLAR__1311;
wire     [31:0] n143____DOLLAR__1307;
wire            n144____DOLLAR__1296;
wire     [31:0] n145____DOLLAR__1292;
wire            n146____DOLLAR__1281;
wire     [31:0] n147____DOLLAR__1277;
wire            n148____DOLLAR__1266;
wire     [31:0] n149____DOLLAR__1262;
wire      [4:0] n14____DOLLAR__651;
wire            n150____DOLLAR__1251;
wire     [31:0] n151____DOLLAR__1247;
wire            n152____DOLLAR__1236;
wire     [31:0] n153____DOLLAR__1232;
wire            n154____DOLLAR__1221;
wire     [31:0] n155____DOLLAR__1217;
wire            n156____DOLLAR__1206;
wire     [31:0] n157____DOLLAR__1202;
wire     [31:0] n158____DOLLAR__1192;
wire     [31:0] n159____DOLLAR__1208;
wire     [63:0] n15____DOLLAR__652;
wire     [31:0] n160____DOLLAR__1223;
wire     [31:0] n161____DOLLAR__1238;
wire     [31:0] n162____DOLLAR__1253;
wire     [31:0] n163____DOLLAR__1268;
wire     [31:0] n164____DOLLAR__1283;
wire     [31:0] n165____DOLLAR__1298;
wire     [31:0] n166____DOLLAR__1313;
wire     [31:0] n167____DOLLAR__1328;
wire     [31:0] n168____DOLLAR__1343;
wire     [31:0] n169____DOLLAR__1358;
wire     [63:0] n16____DOLLAR__660;
wire     [31:0] n170____DOLLAR__1373;
wire     [31:0] n171____DOLLAR__1388;
wire     [31:0] n172____DOLLAR__1403;
wire     [31:0] n173____DOLLAR__1418;
wire     [31:0] n174____DOLLAR__1174;
wire     [31:0] n175____DOLLAR__1419;
wire      [7:0] n176____DOLLAR__1427;
wire      [7:0] n177____DOLLAR__1420;
wire      [7:0] n178____DOLLAR__1429;
wire      [7:0] n179____DOLLAR__1430;
wire            n17____DOLLAR__5402;
wire            n180____DOLLAR__1663;
wire     [31:0] n181____DOLLAR__1659;
wire            n182____DOLLAR__1648;
wire     [31:0] n183____DOLLAR__1644;
wire            n184____DOLLAR__1633;
wire     [31:0] n185____DOLLAR__1629;
wire            n186____DOLLAR__1618;
wire     [31:0] n187____DOLLAR__1614;
wire            n188____DOLLAR__1603;
wire     [31:0] n189____DOLLAR__1599;
wire            n18____DOLLAR__5404;
wire            n190____DOLLAR__1588;
wire     [31:0] n191____DOLLAR__1584;
wire            n192____DOLLAR__1573;
wire     [31:0] n193____DOLLAR__1569;
wire            n194____DOLLAR__1558;
wire     [31:0] n195____DOLLAR__1554;
wire            n196____DOLLAR__1543;
wire     [31:0] n197____DOLLAR__1539;
wire            n198____DOLLAR__1528;
wire     [31:0] n199____DOLLAR__1524;
wire            n19____DOLLAR__5406;
wire            n1____DOLLAR__568;
wire            n200____DOLLAR__1513;
wire     [31:0] n201____DOLLAR__1509;
wire            n202____DOLLAR__1498;
wire     [31:0] n203____DOLLAR__1494;
wire            n204____DOLLAR__1483;
wire     [31:0] n205____DOLLAR__1479;
wire            n206____DOLLAR__1468;
wire     [31:0] n207____DOLLAR__1464;
wire            n208____DOLLAR__1453;
wire     [31:0] n209____DOLLAR__1449;
wire      [4:0] n20____DOLLAR__5407;
wire     [31:0] n210____DOLLAR__1439;
wire     [31:0] n211____DOLLAR__1455;
wire     [31:0] n212____DOLLAR__1470;
wire     [31:0] n213____DOLLAR__1485;
wire     [31:0] n214____DOLLAR__1500;
wire     [31:0] n215____DOLLAR__1515;
wire     [31:0] n216____DOLLAR__1530;
wire     [31:0] n217____DOLLAR__1545;
wire     [31:0] n218____DOLLAR__1560;
wire     [31:0] n219____DOLLAR__1575;
wire            n21____DOLLAR__5412;
wire     [31:0] n220____DOLLAR__1590;
wire     [31:0] n221____DOLLAR__1605;
wire     [31:0] n222____DOLLAR__1620;
wire     [31:0] n223____DOLLAR__1635;
wire     [31:0] n224____DOLLAR__1650;
wire     [31:0] n225____DOLLAR__1665;
wire     [31:0] n226____DOLLAR__1424;
wire     [31:0] n227____DOLLAR__1666;
wire      [7:0] n228____DOLLAR__1675;
wire      [7:0] n229____DOLLAR__1674;
wire      [7:0] n22____DOLLAR__5414;
wire      [7:0] n230____DOLLAR__1677;
wire      [7:0] n231____DOLLAR__1678;
wire            n232____DOLLAR__1911;
wire     [31:0] n233____DOLLAR__1907;
wire            n234____DOLLAR__1896;
wire     [31:0] n235____DOLLAR__1892;
wire            n236____DOLLAR__1881;
wire     [31:0] n237____DOLLAR__1877;
wire            n238____DOLLAR__1866;
wire     [31:0] n239____DOLLAR__1862;
wire            n23____DOLLAR__5392;
wire            n240____DOLLAR__1851;
wire     [31:0] n241____DOLLAR__1847;
wire            n242____DOLLAR__1836;
wire     [31:0] n243____DOLLAR__1832;
wire            n244____DOLLAR__1821;
wire     [31:0] n245____DOLLAR__1817;
wire            n246____DOLLAR__1806;
wire     [31:0] n247____DOLLAR__1802;
wire            n248____DOLLAR__1791;
wire     [31:0] n249____DOLLAR__1787;
wire            n24____DOLLAR__5388;
wire            n250____DOLLAR__1776;
wire     [31:0] n251____DOLLAR__1772;
wire            n252____DOLLAR__1761;
wire     [31:0] n253____DOLLAR__1757;
wire            n254____DOLLAR__1746;
wire     [31:0] n255____DOLLAR__1742;
wire            n256____DOLLAR__1731;
wire     [31:0] n257____DOLLAR__1727;
wire            n258____DOLLAR__1716;
wire     [31:0] n259____DOLLAR__1712;
wire            n25____DOLLAR__5394;
wire            n260____DOLLAR__1701;
wire     [31:0] n261____DOLLAR__1697;
wire     [31:0] n262____DOLLAR__1687;
wire     [31:0] n263____DOLLAR__1703;
wire     [31:0] n264____DOLLAR__1718;
wire     [31:0] n265____DOLLAR__1733;
wire     [31:0] n266____DOLLAR__1748;
wire     [31:0] n267____DOLLAR__1763;
wire     [31:0] n268____DOLLAR__1778;
wire     [31:0] n269____DOLLAR__1793;
wire      [5:0] n26____DOLLAR__5385;
wire     [31:0] n270____DOLLAR__1808;
wire     [31:0] n271____DOLLAR__1823;
wire     [31:0] n272____DOLLAR__1838;
wire     [31:0] n273____DOLLAR__1853;
wire     [31:0] n274____DOLLAR__1868;
wire     [31:0] n275____DOLLAR__1883;
wire     [31:0] n276____DOLLAR__1898;
wire     [31:0] n277____DOLLAR__1913;
wire     [31:0] n278____DOLLAR__1669;
wire     [31:0] n279____DOLLAR__1914;
wire      [5:0] n27____DOLLAR__5395;
wire      [7:0] n280____DOLLAR__1922;
wire      [7:0] n281____DOLLAR__1915;
wire      [7:0] n282____DOLLAR__1924;
wire      [7:0] n283____DOLLAR__1925;
wire            n284____DOLLAR__2158;
wire     [31:0] n285____DOLLAR__2154;
wire            n286____DOLLAR__2143;
wire     [31:0] n287____DOLLAR__2139;
wire            n288____DOLLAR__2128;
wire     [31:0] n289____DOLLAR__2124;
wire     [15:0] n28____DOLLAR__5417;
wire            n290____DOLLAR__2113;
wire     [31:0] n291____DOLLAR__2109;
wire            n292____DOLLAR__2098;
wire     [31:0] n293____DOLLAR__2094;
wire            n294____DOLLAR__2083;
wire     [31:0] n295____DOLLAR__2079;
wire            n296____DOLLAR__2068;
wire     [31:0] n297____DOLLAR__2064;
wire            n298____DOLLAR__2053;
wire     [31:0] n299____DOLLAR__2049;
wire            n29____DOLLAR__5380;
wire            n2____DOLLAR__570;
wire            n300____DOLLAR__2038;
wire     [31:0] n301____DOLLAR__2034;
wire            n302____DOLLAR__2023;
wire     [31:0] n303____DOLLAR__2019;
wire            n304____DOLLAR__2008;
wire     [31:0] n305____DOLLAR__2004;
wire            n306____DOLLAR__1993;
wire     [31:0] n307____DOLLAR__1989;
wire            n308____DOLLAR__1978;
wire     [31:0] n309____DOLLAR__1974;
wire            n30____DOLLAR__642;
wire            n310____DOLLAR__1963;
wire     [31:0] n311____DOLLAR__1959;
wire            n312____DOLLAR__1948;
wire     [31:0] n313____DOLLAR__1944;
wire     [31:0] n314____DOLLAR__1934;
wire     [31:0] n315____DOLLAR__1950;
wire     [31:0] n316____DOLLAR__1965;
wire     [31:0] n317____DOLLAR__1980;
wire     [31:0] n318____DOLLAR__1995;
wire     [31:0] n319____DOLLAR__2010;
wire            n31____DOLLAR__634;
wire     [31:0] n320____DOLLAR__2025;
wire     [31:0] n321____DOLLAR__2040;
wire     [31:0] n322____DOLLAR__2055;
wire     [31:0] n323____DOLLAR__2070;
wire     [31:0] n324____DOLLAR__2085;
wire     [31:0] n325____DOLLAR__2100;
wire     [31:0] n326____DOLLAR__2115;
wire     [31:0] n327____DOLLAR__2130;
wire     [31:0] n328____DOLLAR__2145;
wire     [31:0] n329____DOLLAR__2160;
wire            n32____DOLLAR__636;
wire     [31:0] n330____DOLLAR__1919;
wire     [31:0] n331____DOLLAR__2161;
wire      [7:0] n332____DOLLAR__2170;
wire      [7:0] n333____DOLLAR__2169;
wire      [7:0] n334____DOLLAR__2172;
wire      [7:0] n335____DOLLAR__2173;
wire            n336____DOLLAR__2406;
wire     [31:0] n337____DOLLAR__2402;
wire            n338____DOLLAR__2391;
wire     [31:0] n339____DOLLAR__2387;
wire            n33____DOLLAR__638;
wire            n340____DOLLAR__2376;
wire     [31:0] n341____DOLLAR__2372;
wire            n342____DOLLAR__2361;
wire     [31:0] n343____DOLLAR__2357;
wire            n344____DOLLAR__2346;
wire     [31:0] n345____DOLLAR__2342;
wire            n346____DOLLAR__2331;
wire     [31:0] n347____DOLLAR__2327;
wire            n348____DOLLAR__2316;
wire     [31:0] n349____DOLLAR__2312;
wire      [4:0] n34____DOLLAR__631;
wire            n350____DOLLAR__2301;
wire     [31:0] n351____DOLLAR__2297;
wire            n352____DOLLAR__2286;
wire     [31:0] n353____DOLLAR__2282;
wire            n354____DOLLAR__2271;
wire     [31:0] n355____DOLLAR__2267;
wire            n356____DOLLAR__2256;
wire     [31:0] n357____DOLLAR__2252;
wire            n358____DOLLAR__2241;
wire     [31:0] n359____DOLLAR__2237;
wire      [4:0] n35____DOLLAR__625;
wire            n360____DOLLAR__2226;
wire     [31:0] n361____DOLLAR__2222;
wire            n362____DOLLAR__2211;
wire     [31:0] n363____DOLLAR__2207;
wire            n364____DOLLAR__2196;
wire     [31:0] n365____DOLLAR__2192;
wire     [31:0] n366____DOLLAR__2182;
wire     [31:0] n367____DOLLAR__2198;
wire     [31:0] n368____DOLLAR__2213;
wire     [31:0] n369____DOLLAR__2228;
wire      [4:0] n36____DOLLAR__628;
wire     [31:0] n370____DOLLAR__2243;
wire     [31:0] n371____DOLLAR__2258;
wire     [31:0] n372____DOLLAR__2273;
wire     [31:0] n373____DOLLAR__2288;
wire     [31:0] n374____DOLLAR__2303;
wire     [31:0] n375____DOLLAR__2318;
wire     [31:0] n376____DOLLAR__2333;
wire     [31:0] n377____DOLLAR__2348;
wire     [31:0] n378____DOLLAR__2363;
wire     [31:0] n379____DOLLAR__2378;
wire      [4:0] n37____DOLLAR__639;
wire     [31:0] n380____DOLLAR__2393;
wire     [31:0] n381____DOLLAR__2408;
wire     [31:0] n382____DOLLAR__2164;
wire     [31:0] n383____DOLLAR__2409;
wire      [7:0] n384____DOLLAR__2417;
wire      [7:0] n385____DOLLAR__2410;
wire      [7:0] n386____DOLLAR__2419;
wire      [7:0] n387____DOLLAR__2420;
wire            n388____DOLLAR__2653;
wire     [31:0] n389____DOLLAR__2649;
wire            n38____DOLLAR__616;
wire            n390____DOLLAR__2638;
wire     [31:0] n391____DOLLAR__2634;
wire            n392____DOLLAR__2623;
wire     [31:0] n393____DOLLAR__2619;
wire            n394____DOLLAR__2608;
wire     [31:0] n395____DOLLAR__2604;
wire            n396____DOLLAR__2593;
wire     [31:0] n397____DOLLAR__2589;
wire            n398____DOLLAR__2578;
wire     [31:0] n399____DOLLAR__2574;
wire            n39____DOLLAR__618;
wire            n400____DOLLAR__2563;
wire     [31:0] n401____DOLLAR__2559;
wire            n402____DOLLAR__2548;
wire     [31:0] n403____DOLLAR__2544;
wire            n404____DOLLAR__2533;
wire     [31:0] n405____DOLLAR__2529;
wire            n406____DOLLAR__2518;
wire     [31:0] n407____DOLLAR__2514;
wire            n408____DOLLAR__2503;
wire     [31:0] n409____DOLLAR__2499;
wire            n40____DOLLAR__620;
wire            n410____DOLLAR__2488;
wire     [31:0] n411____DOLLAR__2484;
wire            n412____DOLLAR__2473;
wire     [31:0] n413____DOLLAR__2469;
wire            n414____DOLLAR__2458;
wire     [31:0] n415____DOLLAR__2454;
wire            n416____DOLLAR__2443;
wire     [31:0] n417____DOLLAR__2439;
wire     [31:0] n418____DOLLAR__2429;
wire     [31:0] n419____DOLLAR__2445;
wire            n41____DOLLAR__609;
wire     [31:0] n420____DOLLAR__2460;
wire     [31:0] n421____DOLLAR__2475;
wire     [31:0] n422____DOLLAR__2490;
wire     [31:0] n423____DOLLAR__2505;
wire     [31:0] n424____DOLLAR__2520;
wire     [31:0] n425____DOLLAR__2535;
wire     [31:0] n426____DOLLAR__2550;
wire     [31:0] n427____DOLLAR__2565;
wire     [31:0] n428____DOLLAR__2580;
wire     [31:0] n429____DOLLAR__2595;
wire            n42____DOLLAR__611;
wire     [31:0] n430____DOLLAR__2610;
wire     [31:0] n431____DOLLAR__2625;
wire     [31:0] n432____DOLLAR__2640;
wire     [31:0] n433____DOLLAR__2655;
wire     [31:0] n434____DOLLAR__2414;
wire     [31:0] n435____DOLLAR__2656;
wire      [7:0] n436____DOLLAR__2665;
wire      [7:0] n437____DOLLAR__2664;
wire      [7:0] n438____DOLLAR__2667;
wire      [7:0] n439____DOLLAR__2668;
wire            n43____DOLLAR__613;
wire            n440____DOLLAR__2901;
wire     [31:0] n441____DOLLAR__2897;
wire            n442____DOLLAR__2886;
wire     [31:0] n443____DOLLAR__2882;
wire            n444____DOLLAR__2871;
wire     [31:0] n445____DOLLAR__2867;
wire            n446____DOLLAR__2856;
wire     [31:0] n447____DOLLAR__2852;
wire            n448____DOLLAR__2841;
wire     [31:0] n449____DOLLAR__2837;
wire            n44____DOLLAR__621;
wire            n450____DOLLAR__2826;
wire     [31:0] n451____DOLLAR__2822;
wire            n452____DOLLAR__2811;
wire     [31:0] n453____DOLLAR__2807;
wire            n454____DOLLAR__2796;
wire     [31:0] n455____DOLLAR__2792;
wire            n456____DOLLAR__2781;
wire     [31:0] n457____DOLLAR__2777;
wire            n458____DOLLAR__2766;
wire     [31:0] n459____DOLLAR__2762;
wire            n45____DOLLAR__601;
wire            n460____DOLLAR__2751;
wire     [31:0] n461____DOLLAR__2747;
wire            n462____DOLLAR__2736;
wire     [31:0] n463____DOLLAR__2732;
wire            n464____DOLLAR__2721;
wire     [31:0] n465____DOLLAR__2717;
wire            n466____DOLLAR__2706;
wire     [31:0] n467____DOLLAR__2702;
wire            n468____DOLLAR__2691;
wire     [31:0] n469____DOLLAR__2687;
wire            n46____DOLLAR__603;
wire     [31:0] n470____DOLLAR__2677;
wire     [31:0] n471____DOLLAR__2693;
wire     [31:0] n472____DOLLAR__2708;
wire     [31:0] n473____DOLLAR__2723;
wire     [31:0] n474____DOLLAR__2738;
wire     [31:0] n475____DOLLAR__2753;
wire     [31:0] n476____DOLLAR__2768;
wire     [31:0] n477____DOLLAR__2783;
wire     [31:0] n478____DOLLAR__2798;
wire     [31:0] n479____DOLLAR__2813;
wire            n47____DOLLAR__605;
wire     [31:0] n480____DOLLAR__2828;
wire     [31:0] n481____DOLLAR__2843;
wire     [31:0] n482____DOLLAR__2858;
wire     [31:0] n483____DOLLAR__2873;
wire     [31:0] n484____DOLLAR__2888;
wire     [31:0] n485____DOLLAR__2903;
wire     [31:0] n486____DOLLAR__2659;
wire     [31:0] n487____DOLLAR__2904;
wire      [7:0] n488____DOLLAR__2912;
wire      [7:0] n489____DOLLAR__2905;
wire      [4:0] n48____DOLLAR__598;
wire      [7:0] n490____DOLLAR__2914;
wire      [7:0] n491____DOLLAR__2915;
wire            n492____DOLLAR__3148;
wire     [31:0] n493____DOLLAR__3144;
wire            n494____DOLLAR__3133;
wire     [31:0] n495____DOLLAR__3129;
wire            n496____DOLLAR__3118;
wire     [31:0] n497____DOLLAR__3114;
wire            n498____DOLLAR__3103;
wire     [31:0] n499____DOLLAR__3099;
wire      [4:0] n49____DOLLAR__592;
wire            n4____DOLLAR__681;
wire            n500____DOLLAR__3088;
wire     [31:0] n501____DOLLAR__3084;
wire            n502____DOLLAR__3073;
wire     [31:0] n503____DOLLAR__3069;
wire            n504____DOLLAR__3058;
wire     [31:0] n505____DOLLAR__3054;
wire            n506____DOLLAR__3043;
wire     [31:0] n507____DOLLAR__3039;
wire            n508____DOLLAR__3028;
wire     [31:0] n509____DOLLAR__3024;
wire      [4:0] n50____DOLLAR__595;
wire            n510____DOLLAR__3013;
wire     [31:0] n511____DOLLAR__3009;
wire            n512____DOLLAR__2998;
wire     [31:0] n513____DOLLAR__2994;
wire            n514____DOLLAR__2983;
wire     [31:0] n515____DOLLAR__2979;
wire            n516____DOLLAR__2968;
wire     [31:0] n517____DOLLAR__2964;
wire            n518____DOLLAR__2953;
wire     [31:0] n519____DOLLAR__2949;
wire      [4:0] n51____DOLLAR__606;
wire            n520____DOLLAR__2938;
wire     [31:0] n521____DOLLAR__2934;
wire     [31:0] n522____DOLLAR__2924;
wire     [31:0] n523____DOLLAR__2940;
wire     [31:0] n524____DOLLAR__2955;
wire     [31:0] n525____DOLLAR__2970;
wire     [31:0] n526____DOLLAR__2985;
wire     [31:0] n527____DOLLAR__3000;
wire     [31:0] n528____DOLLAR__3015;
wire     [31:0] n529____DOLLAR__3030;
wire            n52____DOLLAR__584;
wire     [31:0] n530____DOLLAR__3045;
wire     [31:0] n531____DOLLAR__3060;
wire     [31:0] n532____DOLLAR__3075;
wire     [31:0] n533____DOLLAR__3090;
wire     [31:0] n534____DOLLAR__3105;
wire     [31:0] n535____DOLLAR__3120;
wire     [31:0] n536____DOLLAR__3135;
wire     [31:0] n537____DOLLAR__3150;
wire     [31:0] n538____DOLLAR__2909;
wire     [31:0] n539____DOLLAR__3151;
wire            n53____DOLLAR__586;
wire      [7:0] n540____DOLLAR__3160;
wire      [7:0] n541____DOLLAR__3159;
wire      [7:0] n542____DOLLAR__3162;
wire      [7:0] n543____DOLLAR__3163;
wire            n544____DOLLAR__3396;
wire     [31:0] n545____DOLLAR__3392;
wire            n546____DOLLAR__3381;
wire     [31:0] n547____DOLLAR__3377;
wire            n548____DOLLAR__3366;
wire     [31:0] n549____DOLLAR__3362;
wire            n54____DOLLAR__588;
wire            n550____DOLLAR__3351;
wire     [31:0] n551____DOLLAR__3347;
wire            n552____DOLLAR__3336;
wire     [31:0] n553____DOLLAR__3332;
wire            n554____DOLLAR__3321;
wire     [31:0] n555____DOLLAR__3317;
wire            n556____DOLLAR__3306;
wire     [31:0] n557____DOLLAR__3302;
wire            n558____DOLLAR__3291;
wire     [31:0] n559____DOLLAR__3287;
wire      [4:0] n55____DOLLAR__581;
wire            n560____DOLLAR__3276;
wire     [31:0] n561____DOLLAR__3272;
wire            n562____DOLLAR__3261;
wire     [31:0] n563____DOLLAR__3257;
wire            n564____DOLLAR__3246;
wire     [31:0] n565____DOLLAR__3242;
wire            n566____DOLLAR__3231;
wire     [31:0] n567____DOLLAR__3227;
wire            n568____DOLLAR__3216;
wire     [31:0] n569____DOLLAR__3212;
wire      [4:0] n56____DOLLAR__575;
wire            n570____DOLLAR__3201;
wire     [31:0] n571____DOLLAR__3197;
wire            n572____DOLLAR__3186;
wire     [31:0] n573____DOLLAR__3182;
wire     [31:0] n574____DOLLAR__3172;
wire     [31:0] n575____DOLLAR__3188;
wire     [31:0] n576____DOLLAR__3203;
wire     [31:0] n577____DOLLAR__3218;
wire     [31:0] n578____DOLLAR__3233;
wire     [31:0] n579____DOLLAR__3248;
wire      [4:0] n57____DOLLAR__578;
wire     [31:0] n580____DOLLAR__3263;
wire     [31:0] n581____DOLLAR__3278;
wire     [31:0] n582____DOLLAR__3293;
wire     [31:0] n583____DOLLAR__3308;
wire     [31:0] n584____DOLLAR__3323;
wire     [31:0] n585____DOLLAR__3338;
wire     [31:0] n586____DOLLAR__3353;
wire     [31:0] n587____DOLLAR__3368;
wire     [31:0] n588____DOLLAR__3383;
wire     [31:0] n589____DOLLAR__3398;
wire      [4:0] n58____DOLLAR__589;
wire     [31:0] n590____DOLLAR__3154;
wire     [31:0] n591____DOLLAR__3399;
wire      [7:0] n592____DOLLAR__3407;
wire      [7:0] n593____DOLLAR__3400;
wire      [7:0] n594____DOLLAR__3409;
wire      [7:0] n595____DOLLAR__3410;
wire            n596____DOLLAR__3643;
wire     [31:0] n597____DOLLAR__3639;
wire            n598____DOLLAR__3628;
wire     [31:0] n599____DOLLAR__3624;
wire      [4:0] n59____DOLLAR__622;
wire     [12:0] n5____DOLLAR__678;
wire            n600____DOLLAR__3613;
wire     [31:0] n601____DOLLAR__3609;
wire            n602____DOLLAR__3598;
wire     [31:0] n603____DOLLAR__3594;
wire            n604____DOLLAR__3583;
wire     [31:0] n605____DOLLAR__3579;
wire            n606____DOLLAR__3568;
wire     [31:0] n607____DOLLAR__3564;
wire            n608____DOLLAR__3553;
wire     [31:0] n609____DOLLAR__3549;
wire      [4:0] n60____DOLLAR__644;
wire            n610____DOLLAR__3538;
wire     [31:0] n611____DOLLAR__3534;
wire            n612____DOLLAR__3523;
wire     [31:0] n613____DOLLAR__3519;
wire            n614____DOLLAR__3508;
wire     [31:0] n615____DOLLAR__3504;
wire            n616____DOLLAR__3493;
wire     [31:0] n617____DOLLAR__3489;
wire            n618____DOLLAR__3478;
wire     [31:0] n619____DOLLAR__3474;
wire     [63:0] n61____DOLLAR__654;
wire            n620____DOLLAR__3463;
wire     [31:0] n621____DOLLAR__3459;
wire            n622____DOLLAR__3448;
wire     [31:0] n623____DOLLAR__3444;
wire            n624____DOLLAR__3433;
wire     [31:0] n625____DOLLAR__3429;
wire     [31:0] n626____DOLLAR__3419;
wire     [31:0] n627____DOLLAR__3435;
wire     [31:0] n628____DOLLAR__3450;
wire     [31:0] n629____DOLLAR__3465;
wire            n62____DOLLAR__5371;
wire     [31:0] n630____DOLLAR__3480;
wire     [31:0] n631____DOLLAR__3495;
wire     [31:0] n632____DOLLAR__3510;
wire     [31:0] n633____DOLLAR__3525;
wire     [31:0] n634____DOLLAR__3540;
wire     [31:0] n635____DOLLAR__3555;
wire     [31:0] n636____DOLLAR__3570;
wire     [31:0] n637____DOLLAR__3585;
wire     [31:0] n638____DOLLAR__3600;
wire     [31:0] n639____DOLLAR__3615;
wire            n63____DOLLAR__5373;
wire     [31:0] n640____DOLLAR__3630;
wire     [31:0] n641____DOLLAR__3645;
wire     [31:0] n642____DOLLAR__3404;
wire     [31:0] n643____DOLLAR__3646;
wire      [7:0] n644____DOLLAR__3655;
wire      [7:0] n645____DOLLAR__3654;
wire      [7:0] n646____DOLLAR__3657;
wire      [7:0] n647____DOLLAR__3658;
wire            n648____DOLLAR__3891;
wire     [31:0] n649____DOLLAR__3887;
wire            n64____DOLLAR__5375;
wire            n650____DOLLAR__3876;
wire     [31:0] n651____DOLLAR__3872;
wire            n652____DOLLAR__3861;
wire     [31:0] n653____DOLLAR__3857;
wire            n654____DOLLAR__3846;
wire     [31:0] n655____DOLLAR__3842;
wire            n656____DOLLAR__3831;
wire     [31:0] n657____DOLLAR__3827;
wire            n658____DOLLAR__3816;
wire     [31:0] n659____DOLLAR__3812;
wire            n65____DOLLAR__5364;
wire            n660____DOLLAR__3801;
wire     [31:0] n661____DOLLAR__3797;
wire            n662____DOLLAR__3786;
wire     [31:0] n663____DOLLAR__3782;
wire            n664____DOLLAR__3771;
wire     [31:0] n665____DOLLAR__3767;
wire            n666____DOLLAR__3756;
wire     [31:0] n667____DOLLAR__3752;
wire            n668____DOLLAR__3741;
wire     [31:0] n669____DOLLAR__3737;
wire            n66____DOLLAR__5366;
wire            n670____DOLLAR__3726;
wire     [31:0] n671____DOLLAR__3722;
wire            n672____DOLLAR__3711;
wire     [31:0] n673____DOLLAR__3707;
wire            n674____DOLLAR__3696;
wire     [31:0] n675____DOLLAR__3692;
wire            n676____DOLLAR__3681;
wire     [31:0] n677____DOLLAR__3677;
wire     [31:0] n678____DOLLAR__3667;
wire     [31:0] n679____DOLLAR__3683;
wire            n67____DOLLAR__5368;
wire     [31:0] n680____DOLLAR__3698;
wire     [31:0] n681____DOLLAR__3713;
wire     [31:0] n682____DOLLAR__3728;
wire     [31:0] n683____DOLLAR__3743;
wire     [31:0] n684____DOLLAR__3758;
wire     [31:0] n685____DOLLAR__3773;
wire     [31:0] n686____DOLLAR__3788;
wire     [31:0] n687____DOLLAR__3803;
wire     [31:0] n688____DOLLAR__3818;
wire     [31:0] n689____DOLLAR__3833;
wire            n68____DOLLAR__5376;
wire     [31:0] n690____DOLLAR__3848;
wire     [31:0] n691____DOLLAR__3863;
wire     [31:0] n692____DOLLAR__3878;
wire     [31:0] n693____DOLLAR__3893;
wire     [31:0] n694____DOLLAR__3649;
wire     [31:0] n695____DOLLAR__3894;
wire      [7:0] n696____DOLLAR__3902;
wire      [7:0] n697____DOLLAR__3895;
wire      [7:0] n698____DOLLAR__3904;
wire      [7:0] n699____DOLLAR__3905;
wire      [2:0] n69____DOLLAR__687;
wire     [12:0] n6____DOLLAR__683;
wire            n700____DOLLAR__4138;
wire     [31:0] n701____DOLLAR__4134;
wire            n702____DOLLAR__4123;
wire     [31:0] n703____DOLLAR__4119;
wire            n704____DOLLAR__4108;
wire     [31:0] n705____DOLLAR__4104;
wire            n706____DOLLAR__4093;
wire     [31:0] n707____DOLLAR__4089;
wire            n708____DOLLAR__4078;
wire     [31:0] n709____DOLLAR__4074;
wire            n70____DOLLAR__5359;
wire            n710____DOLLAR__4063;
wire     [31:0] n711____DOLLAR__4059;
wire            n712____DOLLAR__4048;
wire     [31:0] n713____DOLLAR__4044;
wire            n714____DOLLAR__4033;
wire     [31:0] n715____DOLLAR__4029;
wire            n716____DOLLAR__4018;
wire     [31:0] n717____DOLLAR__4014;
wire            n718____DOLLAR__4003;
wire     [31:0] n719____DOLLAR__3999;
wire            n71____DOLLAR__5354;
wire            n720____DOLLAR__3988;
wire     [31:0] n721____DOLLAR__3984;
wire            n722____DOLLAR__3973;
wire     [31:0] n723____DOLLAR__3969;
wire            n724____DOLLAR__3958;
wire     [31:0] n725____DOLLAR__3954;
wire            n726____DOLLAR__3943;
wire     [31:0] n727____DOLLAR__3939;
wire            n728____DOLLAR__3928;
wire     [31:0] n729____DOLLAR__3924;
wire      [7:0] n72____DOLLAR__932;
wire     [31:0] n730____DOLLAR__3914;
wire     [31:0] n731____DOLLAR__3930;
wire     [31:0] n732____DOLLAR__3945;
wire     [31:0] n733____DOLLAR__3960;
wire     [31:0] n734____DOLLAR__3975;
wire     [31:0] n735____DOLLAR__3990;
wire     [31:0] n736____DOLLAR__4005;
wire     [31:0] n737____DOLLAR__4020;
wire     [31:0] n738____DOLLAR__4035;
wire     [31:0] n739____DOLLAR__4050;
wire      [7:0] n73____DOLLAR__925;
wire     [31:0] n740____DOLLAR__4065;
wire     [31:0] n741____DOLLAR__4080;
wire     [31:0] n742____DOLLAR__4095;
wire     [31:0] n743____DOLLAR__4110;
wire     [31:0] n744____DOLLAR__4125;
wire     [31:0] n745____DOLLAR__4140;
wire     [31:0] n746____DOLLAR__3899;
wire     [31:0] n747____DOLLAR__4141;
wire      [7:0] n748____DOLLAR__4150;
wire      [7:0] n749____DOLLAR__4149;
wire      [7:0] n74____DOLLAR__934;
wire      [7:0] n750____DOLLAR__4152;
wire      [7:0] n751____DOLLAR__4153;
wire            n752____DOLLAR__4386;
wire     [31:0] n753____DOLLAR__4382;
wire            n754____DOLLAR__4371;
wire     [31:0] n755____DOLLAR__4367;
wire            n756____DOLLAR__4356;
wire     [31:0] n757____DOLLAR__4352;
wire            n758____DOLLAR__4341;
wire     [31:0] n759____DOLLAR__4337;
wire      [7:0] n75____DOLLAR__935;
wire            n760____DOLLAR__4326;
wire     [31:0] n761____DOLLAR__4322;
wire            n762____DOLLAR__4311;
wire     [31:0] n763____DOLLAR__4307;
wire            n764____DOLLAR__4296;
wire     [31:0] n765____DOLLAR__4292;
wire            n766____DOLLAR__4281;
wire     [31:0] n767____DOLLAR__4277;
wire            n768____DOLLAR__4266;
wire     [31:0] n769____DOLLAR__4262;
wire            n76____DOLLAR__1168;
wire            n770____DOLLAR__4251;
wire     [31:0] n771____DOLLAR__4247;
wire            n772____DOLLAR__4236;
wire     [31:0] n773____DOLLAR__4232;
wire            n774____DOLLAR__4221;
wire     [31:0] n775____DOLLAR__4217;
wire            n776____DOLLAR__4206;
wire     [31:0] n777____DOLLAR__4202;
wire            n778____DOLLAR__4191;
wire     [31:0] n779____DOLLAR__4187;
wire     [31:0] n77____DOLLAR__1164;
wire            n780____DOLLAR__4176;
wire     [31:0] n781____DOLLAR__4172;
wire     [31:0] n782____DOLLAR__4162;
wire     [31:0] n783____DOLLAR__4178;
wire     [31:0] n784____DOLLAR__4193;
wire     [31:0] n785____DOLLAR__4208;
wire     [31:0] n786____DOLLAR__4223;
wire     [31:0] n787____DOLLAR__4238;
wire     [31:0] n788____DOLLAR__4253;
wire     [31:0] n789____DOLLAR__4268;
wire            n78____DOLLAR__1153;
wire     [31:0] n790____DOLLAR__4283;
wire     [31:0] n791____DOLLAR__4298;
wire     [31:0] n792____DOLLAR__4313;
wire     [31:0] n793____DOLLAR__4328;
wire     [31:0] n794____DOLLAR__4343;
wire     [31:0] n795____DOLLAR__4358;
wire     [31:0] n796____DOLLAR__4373;
wire     [31:0] n797____DOLLAR__4388;
wire     [31:0] n798____DOLLAR__4144;
wire     [31:0] n799____DOLLAR__4389;
wire     [31:0] n79____DOLLAR__1149;
wire            n7____DOLLAR__673;
wire      [7:0] n800____DOLLAR__4397;
wire      [7:0] n801____DOLLAR__4390;
wire      [7:0] n802____DOLLAR__4399;
wire      [7:0] n803____DOLLAR__4400;
wire            n804____DOLLAR__4633;
wire     [31:0] n805____DOLLAR__4629;
wire            n806____DOLLAR__4618;
wire     [31:0] n807____DOLLAR__4614;
wire            n808____DOLLAR__4603;
wire     [31:0] n809____DOLLAR__4599;
wire            n80____DOLLAR__1138;
wire            n810____DOLLAR__4588;
wire     [31:0] n811____DOLLAR__4584;
wire            n812____DOLLAR__4573;
wire     [31:0] n813____DOLLAR__4569;
wire            n814____DOLLAR__4558;
wire     [31:0] n815____DOLLAR__4554;
wire            n816____DOLLAR__4543;
wire     [31:0] n817____DOLLAR__4539;
wire            n818____DOLLAR__4528;
wire     [31:0] n819____DOLLAR__4524;
wire     [31:0] n81____DOLLAR__1134;
wire            n820____DOLLAR__4513;
wire     [31:0] n821____DOLLAR__4509;
wire            n822____DOLLAR__4498;
wire     [31:0] n823____DOLLAR__4494;
wire            n824____DOLLAR__4483;
wire     [31:0] n825____DOLLAR__4479;
wire            n826____DOLLAR__4468;
wire     [31:0] n827____DOLLAR__4464;
wire            n828____DOLLAR__4453;
wire     [31:0] n829____DOLLAR__4449;
wire            n82____DOLLAR__1123;
wire            n830____DOLLAR__4438;
wire     [31:0] n831____DOLLAR__4434;
wire            n832____DOLLAR__4423;
wire     [31:0] n833____DOLLAR__4419;
wire     [31:0] n834____DOLLAR__4409;
wire     [31:0] n835____DOLLAR__4425;
wire     [31:0] n836____DOLLAR__4440;
wire     [31:0] n837____DOLLAR__4455;
wire     [31:0] n838____DOLLAR__4470;
wire     [31:0] n839____DOLLAR__4485;
wire     [31:0] n83____DOLLAR__1119;
wire     [31:0] n840____DOLLAR__4500;
wire     [31:0] n841____DOLLAR__4515;
wire     [31:0] n842____DOLLAR__4530;
wire     [31:0] n843____DOLLAR__4545;
wire     [31:0] n844____DOLLAR__4560;
wire     [31:0] n845____DOLLAR__4575;
wire     [31:0] n846____DOLLAR__4590;
wire     [31:0] n847____DOLLAR__4605;
wire     [31:0] n848____DOLLAR__4620;
wire     [31:0] n849____DOLLAR__4635;
wire            n84____DOLLAR__1108;
wire     [31:0] n850____DOLLAR__4394;
wire     [31:0] n851____DOLLAR__4636;
wire      [7:0] n852____DOLLAR__4645;
wire      [7:0] n853____DOLLAR__4644;
wire      [7:0] n854____DOLLAR__4647;
wire      [7:0] n855____DOLLAR__4648;
wire            n856____DOLLAR__4881;
wire     [31:0] n857____DOLLAR__4877;
wire            n858____DOLLAR__4866;
wire     [31:0] n859____DOLLAR__4862;
wire     [31:0] n85____DOLLAR__1104;
wire            n860____DOLLAR__4851;
wire     [31:0] n861____DOLLAR__4847;
wire            n862____DOLLAR__4836;
wire     [31:0] n863____DOLLAR__4832;
wire            n864____DOLLAR__4821;
wire     [31:0] n865____DOLLAR__4817;
wire            n866____DOLLAR__4806;
wire     [31:0] n867____DOLLAR__4802;
wire            n868____DOLLAR__4791;
wire     [31:0] n869____DOLLAR__4787;
wire            n86____DOLLAR__1093;
wire            n870____DOLLAR__4776;
wire     [31:0] n871____DOLLAR__4772;
wire            n872____DOLLAR__4761;
wire     [31:0] n873____DOLLAR__4757;
wire            n874____DOLLAR__4746;
wire     [31:0] n875____DOLLAR__4742;
wire            n876____DOLLAR__4731;
wire     [31:0] n877____DOLLAR__4727;
wire            n878____DOLLAR__4716;
wire     [31:0] n879____DOLLAR__4712;
wire     [31:0] n87____DOLLAR__1089;
wire            n880____DOLLAR__4701;
wire     [31:0] n881____DOLLAR__4697;
wire            n882____DOLLAR__4686;
wire     [31:0] n883____DOLLAR__4682;
wire            n884____DOLLAR__4671;
wire     [31:0] n885____DOLLAR__4667;
wire     [31:0] n886____DOLLAR__4657;
wire     [31:0] n887____DOLLAR__4673;
wire     [31:0] n888____DOLLAR__4688;
wire     [31:0] n889____DOLLAR__4703;
wire            n88____DOLLAR__1078;
wire     [31:0] n890____DOLLAR__4718;
wire     [31:0] n891____DOLLAR__4733;
wire     [31:0] n892____DOLLAR__4748;
wire     [31:0] n893____DOLLAR__4763;
wire     [31:0] n894____DOLLAR__4778;
wire     [31:0] n895____DOLLAR__4793;
wire     [31:0] n896____DOLLAR__4808;
wire     [31:0] n897____DOLLAR__4823;
wire     [31:0] n898____DOLLAR__4838;
wire     [31:0] n899____DOLLAR__4853;
wire     [31:0] n89____DOLLAR__1074;
wire            n8____DOLLAR__668;
wire     [31:0] n900____DOLLAR__4868;
wire     [31:0] n901____DOLLAR__4883;
wire     [31:0] n902____DOLLAR__4639;
wire     [31:0] n903____DOLLAR__4884;
wire     [31:0] n904____DOLLAR__4915;
wire     [31:0] n905____DOLLAR__4916;
wire     [31:0] n906____DOLLAR__4909;
wire     [31:0] n907____DOLLAR__4910;
wire     [31:0] n908____DOLLAR__4917;
wire     [31:0] n909____DOLLAR__4903;
wire            n90____DOLLAR__1063;
wire     [31:0] n910____DOLLAR__4904;
wire     [31:0] n911____DOLLAR__4918;
wire     [31:0] n912____DOLLAR__4897;
wire     [31:0] n913____DOLLAR__4893;
wire     [31:0] n914____DOLLAR__4898;
wire     [31:0] n915____DOLLAR__4919;
wire     [31:0] n916____DOLLAR__4920;
wire     [31:0] n917____DOLLAR__4952;
wire     [31:0] n918____DOLLAR__4953;
wire     [31:0] n919____DOLLAR__4946;
wire     [31:0] n91____DOLLAR__1059;
wire     [31:0] n920____DOLLAR__4947;
wire     [31:0] n921____DOLLAR__4954;
wire     [31:0] n922____DOLLAR__4940;
wire     [31:0] n923____DOLLAR__4941;
wire     [31:0] n924____DOLLAR__4955;
wire     [31:0] n925____DOLLAR__4934;
wire     [31:0] n926____DOLLAR__4930;
wire     [31:0] n927____DOLLAR__4935;
wire     [31:0] n928____DOLLAR__4956;
wire      [7:0] n929____DOLLAR__5089;
wire            n92____DOLLAR__1048;
wire     [39:0] n930____DOLLAR__5095;
wire     [63:0] n931____DOLLAR__5103;
wire            n932____DOLLAR__5349;
wire     [15:0] n933____DOLLAR__5105;
wire     [47:0] n934____DOLLAR__5111;
wire     [63:0] n935____DOLLAR__5119;
wire            n936____DOLLAR__5344;
wire     [23:0] n937____DOLLAR__5121;
wire     [55:0] n938____DOLLAR__5127;
wire     [63:0] n939____DOLLAR__5135;
wire     [31:0] n93____DOLLAR__1044;
wire            n940____DOLLAR__5339;
wire     [31:0] n941____DOLLAR__5137;
wire     [63:0] n942____DOLLAR__5143;
wire            n943____DOLLAR__5334;
wire     [23:0] n944____DOLLAR__5147;
wire     [39:0] n945____DOLLAR__5145;
wire     [63:0] n946____DOLLAR__5153;
wire            n947____DOLLAR__5329;
wire     [15:0] n948____DOLLAR__5157;
wire     [47:0] n949____DOLLAR__5155;
wire            n94____DOLLAR__1033;
wire     [63:0] n950____DOLLAR__5163;
wire      [7:0] n951____DOLLAR__5167;
wire     [55:0] n952____DOLLAR__5165;
wire     [63:0] n953____DOLLAR__5173;
wire     [63:0] n954____DOLLAR__5331;
wire     [63:0] n955____DOLLAR__5336;
wire     [63:0] n956____DOLLAR__5341;
wire     [63:0] n957____DOLLAR__5346;
wire     [63:0] n958____DOLLAR__5351;
wire     [63:0] n959____DOLLAR__5356;
wire     [31:0] n95____DOLLAR__1029;
wire     [63:0] n960____DOLLAR__5361;
wire            n961____DOLLAR__5324;
wire            n962____DOLLAR__5319;
wire     [63:0] n963____DOLLAR__5181;
wire            n964____DOLLAR__5314;
wire     [63:0] n965____DOLLAR__5191;
wire            n966____DOLLAR__5309;
wire     [63:0] n967____DOLLAR__5201;
wire            n968____DOLLAR__5304;
wire     [63:0] n969____DOLLAR__5211;
wire            n96____DOLLAR__1018;
wire            n970____DOLLAR__5299;
wire     [63:0] n971____DOLLAR__5221;
wire            n972____DOLLAR__5294;
wire     [55:0] n973____DOLLAR__5233;
wire      [7:0] n974____DOLLAR__5223;
wire     [63:0] n975____DOLLAR__5239;
wire            n976____DOLLAR__5289;
wire     [47:0] n977____DOLLAR__5251;
wire     [15:0] n978____DOLLAR__5241;
wire     [63:0] n979____DOLLAR__5257;
wire     [31:0] n97____DOLLAR__1014;
wire     [39:0] n980____DOLLAR__5269;
wire     [23:0] n981____DOLLAR__5259;
wire     [63:0] n982____DOLLAR__5275;
wire     [63:0] n983____DOLLAR__5291;
wire     [63:0] n984____DOLLAR__5296;
wire     [63:0] n985____DOLLAR__5301;
wire     [63:0] n986____DOLLAR__5306;
wire     [63:0] n987____DOLLAR__5311;
wire     [63:0] n988____DOLLAR__5316;
wire     [63:0] n989____DOLLAR__5321;
wire            n98____DOLLAR__1003;
wire     [63:0] n990____DOLLAR__5285;
wire     [63:0] n991____DOLLAR__5326;
wire     [63:0] n992____DOLLAR__5377;
wire     [63:0] n993____DOLLAR__5382;
wire            n994____DOLLAR__5086;
wire            n995____DOLLAR__5075;
wire            n996____DOLLAR__5077;
wire            n997____DOLLAR__5079;
wire            n998____DOLLAR__5068;
wire            n999____DOLLAR__5070;
wire     [31:0] n99____DOLLAR__999;
wire      [4:0] n9____DOLLAR__663;
wire            rst;
reg     [63:0] TXFIFO_BUFF[31:0];
assign TXFIFO_BUFF_0 = TXFIFO_BUFF[0] ;
assign TXFIFO_BUFF_1 = TXFIFO_BUFF[1] ;
assign TXFIFO_BUFF_2 = TXFIFO_BUFF[2] ;
assign TXFIFO_BUFF_3 = TXFIFO_BUFF[3] ;
assign TXFIFO_BUFF_4 = TXFIFO_BUFF[4] ;
assign TXFIFO_BUFF_5 = TXFIFO_BUFF[5] ;
assign TXFIFO_BUFF_6 = TXFIFO_BUFF[6] ;
assign TXFIFO_BUFF_7 = TXFIFO_BUFF[7] ;
assign TXFIFO_BUFF_8 = TXFIFO_BUFF[8] ;
assign TXFIFO_BUFF_9 = TXFIFO_BUFF[9] ;
assign TXFIFO_BUFF_10 = TXFIFO_BUFF[10] ;
assign TXFIFO_BUFF_11 = TXFIFO_BUFF[11] ;
assign TXFIFO_BUFF_12 = TXFIFO_BUFF[12] ;
assign TXFIFO_BUFF_13 = TXFIFO_BUFF[13] ;
assign TXFIFO_BUFF_14 = TXFIFO_BUFF[14] ;
assign TXFIFO_BUFF_15 = TXFIFO_BUFF[15] ;
assign TXFIFO_BUFF_16 = TXFIFO_BUFF[16] ;
assign TXFIFO_BUFF_17 = TXFIFO_BUFF[17] ;
assign TXFIFO_BUFF_18 = TXFIFO_BUFF[18] ;
assign TXFIFO_BUFF_19 = TXFIFO_BUFF[19] ;
assign TXFIFO_BUFF_20 = TXFIFO_BUFF[20] ;
assign TXFIFO_BUFF_21 = TXFIFO_BUFF[21] ;
assign TXFIFO_BUFF_22 = TXFIFO_BUFF[22] ;
assign TXFIFO_BUFF_23 = TXFIFO_BUFF[23] ;
assign TXFIFO_BUFF_24 = TXFIFO_BUFF[24] ;
assign TXFIFO_BUFF_25 = TXFIFO_BUFF[25] ;
assign TXFIFO_BUFF_26 = TXFIFO_BUFF[26] ;
assign TXFIFO_BUFF_27 = TXFIFO_BUFF[27] ;
assign TXFIFO_BUFF_28 = TXFIFO_BUFF[28] ;
assign TXFIFO_BUFF_29 = TXFIFO_BUFF[29] ;
assign TXFIFO_BUFF_30 = TXFIFO_BUFF[30] ;
assign TXFIFO_BUFF_31 = TXFIFO_BUFF[31] ;
assign __ILA_TX_FUNC_valid__ = 1'b1 ;
assign n0____DOLLAR__563 =  ( MODE_10G ) == ( 1'b1 )  ;
assign n1____DOLLAR__568 =  ( TX_STATE ) == ( 5'd8 )  ;
assign n2____DOLLAR__570 =  ( n0____DOLLAR__563 ) & (n1____DOLLAR__568 )  ;
assign __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__ = n2____DOLLAR__570 ;
assign n4____DOLLAR__681 =  $signed( TX_WCNT ) > $signed( 16'd15 )  ;
assign n5____DOLLAR__678 =  ( TXFIFO_WUSED_QWD ) - ( 13'd1 )  ;
assign n6____DOLLAR__683 =  ( n4____DOLLAR__681 ) ? ( n5____DOLLAR__678 ) : ( TXFIFO_WUSED_QWD ) ;
assign n7____DOLLAR__673 =  $signed( TX_WCNT ) > $signed( 16'd15 )  ;
assign n8____DOLLAR__668 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n9____DOLLAR__663 =  ( TXFIFO_BUFF_RD_PTR ) + ( 5'd1 )  ;
assign n10____DOLLAR__670 =  ( n8____DOLLAR__668 ) ? ( 5'd1 ) : ( n9____DOLLAR__663 ) ;
assign n11____DOLLAR__675 =  ( n7____DOLLAR__673 ) ? ( n10____DOLLAR__670 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign n12____DOLLAR__658 =  $signed( TX_WCNT ) > $signed( 16'd15 )  ;
assign n13____DOLLAR__649 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n14____DOLLAR__651 =  ( n13____DOLLAR__649 ) ? ( 5'd0 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign n15____DOLLAR__652 =  (  TXFIFO_BUFF [ n14____DOLLAR__651 ] )  ;
assign n16____DOLLAR__660 =  ( n12____DOLLAR__658 ) ? ( n15____DOLLAR__652 ) : ( TXFIFO_RD_OUTPUT ) ;
assign n17____DOLLAR__5402 =  ( TX_WCNT ) == ( 16'd0 )  ;
assign n18____DOLLAR__5404 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n19____DOLLAR__5406 =  ( n17____DOLLAR__5402 ) | ( n18____DOLLAR__5404 )  ;
assign n20____DOLLAR__5407 =  ( n19____DOLLAR__5406 ) ? ( 5'd8 ) : ( 5'd16 ) ;
assign n21____DOLLAR__5412 =  $signed( TX_WCNT ) < $signed( 16'd16 )  ;
assign n22____DOLLAR__5414 =  ( n21____DOLLAR__5412 ) ? ( 8'd1 ) : ( TX_STATE_ENCAP ) ;
assign n23____DOLLAR__5392 =  ( TX_STATE_ENCAP ) == ( 8'd1 )  ;
assign n24____DOLLAR__5388 =  $signed( TX_B2B_CNTR ) > $signed( 6'd0 )  ;
assign n25____DOLLAR__5394 =  ( n23____DOLLAR__5392 ) & (n24____DOLLAR__5388 )  ;
assign n26____DOLLAR__5385 =  ( TX_B2B_CNTR ) - ( 6'd1 )  ;
assign n27____DOLLAR__5395 =  ( n25____DOLLAR__5394 ) ? ( n26____DOLLAR__5385 ) : ( TX_B2B_CNTR ) ;
assign n28____DOLLAR__5417 =  ( TX_WCNT ) - ( 16'd8 )  ;
assign n29____DOLLAR__5380 =  $signed( TX_WCNT ) > $signed( 16'd7 )  ;
assign n30____DOLLAR__642 =  $signed( TX_WCNT ) > $signed( 16'd15 )  ;
assign n31____DOLLAR__634 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd3 )  ;
assign n32____DOLLAR__636 =  $signed( TXFIFO_BUFF_RD_PTR ) > $signed( 5'd3 )  ;
assign n33____DOLLAR__638 =  ( n31____DOLLAR__634 ) | ( n32____DOLLAR__636 )  ;
assign n34____DOLLAR__631 =  ( TXFIFO_BUFF_RD_PTR ) - ( 5'd3 )  ;
assign n35____DOLLAR__625 =  ( 5'd3 ) - ( TXFIFO_BUFF_RD_PTR )  ;
assign n36____DOLLAR__628 =  ( 5'd16 ) - ( n35____DOLLAR__625 )  ;
assign n37____DOLLAR__639 =  ( n33____DOLLAR__638 ) ? ( n34____DOLLAR__631 ) : ( n36____DOLLAR__628 ) ;
assign n38____DOLLAR__616 =  ( TX_WCNT ) == ( 16'd8 )  ;
assign n39____DOLLAR__618 =  $signed( TX_WCNT ) > $signed( 16'd8 )  ;
assign n40____DOLLAR__620 =  ( n38____DOLLAR__616 ) | ( n39____DOLLAR__618 )  ;
assign n41____DOLLAR__609 =  ( TX_WCNT ) == ( 16'd15 )  ;
assign n42____DOLLAR__611 =  $signed( TX_WCNT ) < $signed( 16'd15 )  ;
assign n43____DOLLAR__613 =  ( n41____DOLLAR__609 ) | ( n42____DOLLAR__611 )  ;
assign n44____DOLLAR__621 =  ( n40____DOLLAR__620 ) & (n43____DOLLAR__613 )  ;
assign n45____DOLLAR__601 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd2 )  ;
assign n46____DOLLAR__603 =  $signed( TXFIFO_BUFF_RD_PTR ) > $signed( 5'd2 )  ;
assign n47____DOLLAR__605 =  ( n45____DOLLAR__601 ) | ( n46____DOLLAR__603 )  ;
assign n48____DOLLAR__598 =  ( TXFIFO_BUFF_RD_PTR ) - ( 5'd2 )  ;
assign n49____DOLLAR__592 =  ( 5'd2 ) - ( TXFIFO_BUFF_RD_PTR )  ;
assign n50____DOLLAR__595 =  ( 5'd16 ) - ( n49____DOLLAR__592 )  ;
assign n51____DOLLAR__606 =  ( n47____DOLLAR__605 ) ? ( n48____DOLLAR__598 ) : ( n50____DOLLAR__595 ) ;
assign n52____DOLLAR__584 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd1 )  ;
assign n53____DOLLAR__586 =  $signed( TXFIFO_BUFF_RD_PTR ) > $signed( 5'd1 )  ;
assign n54____DOLLAR__588 =  ( n52____DOLLAR__584 ) | ( n53____DOLLAR__586 )  ;
assign n55____DOLLAR__581 =  ( TXFIFO_BUFF_RD_PTR ) - ( 5'd1 )  ;
assign n56____DOLLAR__575 =  ( 5'd1 ) - ( TXFIFO_BUFF_RD_PTR )  ;
assign n57____DOLLAR__578 =  ( 5'd16 ) - ( n56____DOLLAR__575 )  ;
assign n58____DOLLAR__589 =  ( n54____DOLLAR__588 ) ? ( n55____DOLLAR__581 ) : ( n57____DOLLAR__578 ) ;
assign n59____DOLLAR__622 =  ( n44____DOLLAR__621 ) ? ( n51____DOLLAR__606 ) : ( n58____DOLLAR__589 ) ;
assign n60____DOLLAR__644 =  ( n30____DOLLAR__642 ) ? ( n37____DOLLAR__639 ) : ( n59____DOLLAR__622 ) ;
assign n61____DOLLAR__654 =  (  TXFIFO_BUFF [ n60____DOLLAR__644 ] )  ;
assign n62____DOLLAR__5371 =  ( TX_WCNT ) == ( 16'd0 )  ;
assign n63____DOLLAR__5373 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n64____DOLLAR__5375 =  ( n62____DOLLAR__5371 ) | ( n63____DOLLAR__5373 )  ;
assign n65____DOLLAR__5364 =  ( TX_WCNT ) == ( 16'd7 )  ;
assign n66____DOLLAR__5366 =  $signed( TX_WCNT ) < $signed( 16'd7 )  ;
assign n67____DOLLAR__5368 =  ( n65____DOLLAR__5364 ) | ( n66____DOLLAR__5366 )  ;
assign n68____DOLLAR__5376 =  ( n64____DOLLAR__5375 ) & (n67____DOLLAR__5368 )  ;
assign n69____DOLLAR__687 = TX_PACKET_BYTE_CNT[2:0] ;
assign n70____DOLLAR__5359 =  ( n69____DOLLAR__687 ) == ( 3'd0 )  ;
assign n71____DOLLAR__5354 =  ( n69____DOLLAR__687 ) == ( 3'd1 )  ;
assign n72____DOLLAR__932 = CRC_IN[7:0] ;
assign n73____DOLLAR__925 = CRC_DAT_IN[7:0] ;
assign n74____DOLLAR__934 =  ( n72____DOLLAR__932 ) ^ ( n73____DOLLAR__925 )  ;
assign n75____DOLLAR__935 =  ( n74____DOLLAR__934 ) & ( 8'd15 )  ;
assign n76____DOLLAR__1168 =  ( n75____DOLLAR__935 ) == ( 8'd15 )  ;
assign n77____DOLLAR__1164 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n78____DOLLAR__1153 =  ( n75____DOLLAR__935 ) == ( 8'd14 )  ;
assign n79____DOLLAR__1149 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n80____DOLLAR__1138 =  ( n75____DOLLAR__935 ) == ( 8'd13 )  ;
assign n81____DOLLAR__1134 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n82____DOLLAR__1123 =  ( n75____DOLLAR__935 ) == ( 8'd12 )  ;
assign n83____DOLLAR__1119 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n84____DOLLAR__1108 =  ( n75____DOLLAR__935 ) == ( 8'd11 )  ;
assign n85____DOLLAR__1104 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n86____DOLLAR__1093 =  ( n75____DOLLAR__935 ) == ( 8'd10 )  ;
assign n87____DOLLAR__1089 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n88____DOLLAR__1078 =  ( n75____DOLLAR__935 ) == ( 8'd9 )  ;
assign n89____DOLLAR__1074 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n90____DOLLAR__1063 =  ( n75____DOLLAR__935 ) == ( 8'd8 )  ;
assign n91____DOLLAR__1059 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n92____DOLLAR__1048 =  ( n75____DOLLAR__935 ) == ( 8'd7 )  ;
assign n93____DOLLAR__1044 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n94____DOLLAR__1033 =  ( n75____DOLLAR__935 ) == ( 8'd6 )  ;
assign n95____DOLLAR__1029 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n96____DOLLAR__1018 =  ( n75____DOLLAR__935 ) == ( 8'd5 )  ;
assign n97____DOLLAR__1014 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n98____DOLLAR__1003 =  ( n75____DOLLAR__935 ) == ( 8'd4 )  ;
assign n99____DOLLAR__999 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n100____DOLLAR__988 =  ( n75____DOLLAR__935 ) == ( 8'd3 )  ;
assign n101____DOLLAR__984 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n102____DOLLAR__973 =  ( n75____DOLLAR__935 ) == ( 8'd2 )  ;
assign n103____DOLLAR__969 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n104____DOLLAR__958 =  ( n75____DOLLAR__935 ) == ( 8'd1 )  ;
assign n105____DOLLAR__954 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n106____DOLLAR__944 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n107____DOLLAR__960 =  ( n104____DOLLAR__958 ) ? ( n105____DOLLAR__954 ) : ( n106____DOLLAR__944 ) ;
assign n108____DOLLAR__975 =  ( n102____DOLLAR__973 ) ? ( n103____DOLLAR__969 ) : ( n107____DOLLAR__960 ) ;
assign n109____DOLLAR__990 =  ( n100____DOLLAR__988 ) ? ( n101____DOLLAR__984 ) : ( n108____DOLLAR__975 ) ;
assign n110____DOLLAR__1005 =  ( n98____DOLLAR__1003 ) ? ( n99____DOLLAR__999 ) : ( n109____DOLLAR__990 ) ;
assign n111____DOLLAR__1020 =  ( n96____DOLLAR__1018 ) ? ( n97____DOLLAR__1014 ) : ( n110____DOLLAR__1005 ) ;
assign n112____DOLLAR__1035 =  ( n94____DOLLAR__1033 ) ? ( n95____DOLLAR__1029 ) : ( n111____DOLLAR__1020 ) ;
assign n113____DOLLAR__1050 =  ( n92____DOLLAR__1048 ) ? ( n93____DOLLAR__1044 ) : ( n112____DOLLAR__1035 ) ;
assign n114____DOLLAR__1065 =  ( n90____DOLLAR__1063 ) ? ( n91____DOLLAR__1059 ) : ( n113____DOLLAR__1050 ) ;
assign n115____DOLLAR__1080 =  ( n88____DOLLAR__1078 ) ? ( n89____DOLLAR__1074 ) : ( n114____DOLLAR__1065 ) ;
assign n116____DOLLAR__1095 =  ( n86____DOLLAR__1093 ) ? ( n87____DOLLAR__1089 ) : ( n115____DOLLAR__1080 ) ;
assign n117____DOLLAR__1110 =  ( n84____DOLLAR__1108 ) ? ( n85____DOLLAR__1104 ) : ( n116____DOLLAR__1095 ) ;
assign n118____DOLLAR__1125 =  ( n82____DOLLAR__1123 ) ? ( n83____DOLLAR__1119 ) : ( n117____DOLLAR__1110 ) ;
assign n119____DOLLAR__1140 =  ( n80____DOLLAR__1138 ) ? ( n81____DOLLAR__1134 ) : ( n118____DOLLAR__1125 ) ;
assign n120____DOLLAR__1155 =  ( n78____DOLLAR__1153 ) ? ( n79____DOLLAR__1149 ) : ( n119____DOLLAR__1140 ) ;
assign n121____DOLLAR__1170 =  ( n76____DOLLAR__1168 ) ? ( n77____DOLLAR__1164 ) : ( n120____DOLLAR__1155 ) ;
assign n122____DOLLAR__929 =  ( ( CRC_IN ) >> ( 32'd4 ))  ;
assign n123____DOLLAR__1171 =  ( n121____DOLLAR__1170 ) ^ ( n122____DOLLAR__929 )  ;
assign n124____DOLLAR__1180 = n123____DOLLAR__1171[7:0] ;
assign n125____DOLLAR__1179 =  ( ( n73____DOLLAR__925 ) >> ( 8'd4 ))  ;
assign n126____DOLLAR__1182 =  ( n124____DOLLAR__1180 ) ^ ( n125____DOLLAR__1179 )  ;
assign n127____DOLLAR__1183 =  ( n126____DOLLAR__1182 ) & ( 8'd15 )  ;
assign n128____DOLLAR__1416 =  ( n127____DOLLAR__1183 ) == ( 8'd15 )  ;
assign n129____DOLLAR__1412 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n130____DOLLAR__1401 =  ( n127____DOLLAR__1183 ) == ( 8'd14 )  ;
assign n131____DOLLAR__1397 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n132____DOLLAR__1386 =  ( n127____DOLLAR__1183 ) == ( 8'd13 )  ;
assign n133____DOLLAR__1382 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n134____DOLLAR__1371 =  ( n127____DOLLAR__1183 ) == ( 8'd12 )  ;
assign n135____DOLLAR__1367 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n136____DOLLAR__1356 =  ( n127____DOLLAR__1183 ) == ( 8'd11 )  ;
assign n137____DOLLAR__1352 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n138____DOLLAR__1341 =  ( n127____DOLLAR__1183 ) == ( 8'd10 )  ;
assign n139____DOLLAR__1337 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n140____DOLLAR__1326 =  ( n127____DOLLAR__1183 ) == ( 8'd9 )  ;
assign n141____DOLLAR__1322 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n142____DOLLAR__1311 =  ( n127____DOLLAR__1183 ) == ( 8'd8 )  ;
assign n143____DOLLAR__1307 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n144____DOLLAR__1296 =  ( n127____DOLLAR__1183 ) == ( 8'd7 )  ;
assign n145____DOLLAR__1292 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n146____DOLLAR__1281 =  ( n127____DOLLAR__1183 ) == ( 8'd6 )  ;
assign n147____DOLLAR__1277 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n148____DOLLAR__1266 =  ( n127____DOLLAR__1183 ) == ( 8'd5 )  ;
assign n149____DOLLAR__1262 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n150____DOLLAR__1251 =  ( n127____DOLLAR__1183 ) == ( 8'd4 )  ;
assign n151____DOLLAR__1247 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n152____DOLLAR__1236 =  ( n127____DOLLAR__1183 ) == ( 8'd3 )  ;
assign n153____DOLLAR__1232 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n154____DOLLAR__1221 =  ( n127____DOLLAR__1183 ) == ( 8'd2 )  ;
assign n155____DOLLAR__1217 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n156____DOLLAR__1206 =  ( n127____DOLLAR__1183 ) == ( 8'd1 )  ;
assign n157____DOLLAR__1202 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n158____DOLLAR__1192 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n159____DOLLAR__1208 =  ( n156____DOLLAR__1206 ) ? ( n157____DOLLAR__1202 ) : ( n158____DOLLAR__1192 ) ;
assign n160____DOLLAR__1223 =  ( n154____DOLLAR__1221 ) ? ( n155____DOLLAR__1217 ) : ( n159____DOLLAR__1208 ) ;
assign n161____DOLLAR__1238 =  ( n152____DOLLAR__1236 ) ? ( n153____DOLLAR__1232 ) : ( n160____DOLLAR__1223 ) ;
assign n162____DOLLAR__1253 =  ( n150____DOLLAR__1251 ) ? ( n151____DOLLAR__1247 ) : ( n161____DOLLAR__1238 ) ;
assign n163____DOLLAR__1268 =  ( n148____DOLLAR__1266 ) ? ( n149____DOLLAR__1262 ) : ( n162____DOLLAR__1253 ) ;
assign n164____DOLLAR__1283 =  ( n146____DOLLAR__1281 ) ? ( n147____DOLLAR__1277 ) : ( n163____DOLLAR__1268 ) ;
assign n165____DOLLAR__1298 =  ( n144____DOLLAR__1296 ) ? ( n145____DOLLAR__1292 ) : ( n164____DOLLAR__1283 ) ;
assign n166____DOLLAR__1313 =  ( n142____DOLLAR__1311 ) ? ( n143____DOLLAR__1307 ) : ( n165____DOLLAR__1298 ) ;
assign n167____DOLLAR__1328 =  ( n140____DOLLAR__1326 ) ? ( n141____DOLLAR__1322 ) : ( n166____DOLLAR__1313 ) ;
assign n168____DOLLAR__1343 =  ( n138____DOLLAR__1341 ) ? ( n139____DOLLAR__1337 ) : ( n167____DOLLAR__1328 ) ;
assign n169____DOLLAR__1358 =  ( n136____DOLLAR__1356 ) ? ( n137____DOLLAR__1352 ) : ( n168____DOLLAR__1343 ) ;
assign n170____DOLLAR__1373 =  ( n134____DOLLAR__1371 ) ? ( n135____DOLLAR__1367 ) : ( n169____DOLLAR__1358 ) ;
assign n171____DOLLAR__1388 =  ( n132____DOLLAR__1386 ) ? ( n133____DOLLAR__1382 ) : ( n170____DOLLAR__1373 ) ;
assign n172____DOLLAR__1403 =  ( n130____DOLLAR__1401 ) ? ( n131____DOLLAR__1397 ) : ( n171____DOLLAR__1388 ) ;
assign n173____DOLLAR__1418 =  ( n128____DOLLAR__1416 ) ? ( n129____DOLLAR__1412 ) : ( n172____DOLLAR__1403 ) ;
assign n174____DOLLAR__1174 =  ( ( n123____DOLLAR__1171 ) >> ( 32'd4 ))  ;
assign n175____DOLLAR__1419 =  ( n173____DOLLAR__1418 ) ^ ( n174____DOLLAR__1174 )  ;
assign n176____DOLLAR__1427 = n175____DOLLAR__1419[7:0] ;
assign n177____DOLLAR__1420 = CRC_DAT_IN[15:8] ;
assign n178____DOLLAR__1429 =  ( n176____DOLLAR__1427 ) ^ ( n177____DOLLAR__1420 )  ;
assign n179____DOLLAR__1430 =  ( n178____DOLLAR__1429 ) & ( 8'd15 )  ;
assign n180____DOLLAR__1663 =  ( n179____DOLLAR__1430 ) == ( 8'd15 )  ;
assign n181____DOLLAR__1659 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n182____DOLLAR__1648 =  ( n179____DOLLAR__1430 ) == ( 8'd14 )  ;
assign n183____DOLLAR__1644 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n184____DOLLAR__1633 =  ( n179____DOLLAR__1430 ) == ( 8'd13 )  ;
assign n185____DOLLAR__1629 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n186____DOLLAR__1618 =  ( n179____DOLLAR__1430 ) == ( 8'd12 )  ;
assign n187____DOLLAR__1614 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n188____DOLLAR__1603 =  ( n179____DOLLAR__1430 ) == ( 8'd11 )  ;
assign n189____DOLLAR__1599 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n190____DOLLAR__1588 =  ( n179____DOLLAR__1430 ) == ( 8'd10 )  ;
assign n191____DOLLAR__1584 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n192____DOLLAR__1573 =  ( n179____DOLLAR__1430 ) == ( 8'd9 )  ;
assign n193____DOLLAR__1569 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n194____DOLLAR__1558 =  ( n179____DOLLAR__1430 ) == ( 8'd8 )  ;
assign n195____DOLLAR__1554 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n196____DOLLAR__1543 =  ( n179____DOLLAR__1430 ) == ( 8'd7 )  ;
assign n197____DOLLAR__1539 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n198____DOLLAR__1528 =  ( n179____DOLLAR__1430 ) == ( 8'd6 )  ;
assign n199____DOLLAR__1524 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n200____DOLLAR__1513 =  ( n179____DOLLAR__1430 ) == ( 8'd5 )  ;
assign n201____DOLLAR__1509 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n202____DOLLAR__1498 =  ( n179____DOLLAR__1430 ) == ( 8'd4 )  ;
assign n203____DOLLAR__1494 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n204____DOLLAR__1483 =  ( n179____DOLLAR__1430 ) == ( 8'd3 )  ;
assign n205____DOLLAR__1479 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n206____DOLLAR__1468 =  ( n179____DOLLAR__1430 ) == ( 8'd2 )  ;
assign n207____DOLLAR__1464 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n208____DOLLAR__1453 =  ( n179____DOLLAR__1430 ) == ( 8'd1 )  ;
assign n209____DOLLAR__1449 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n210____DOLLAR__1439 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n211____DOLLAR__1455 =  ( n208____DOLLAR__1453 ) ? ( n209____DOLLAR__1449 ) : ( n210____DOLLAR__1439 ) ;
assign n212____DOLLAR__1470 =  ( n206____DOLLAR__1468 ) ? ( n207____DOLLAR__1464 ) : ( n211____DOLLAR__1455 ) ;
assign n213____DOLLAR__1485 =  ( n204____DOLLAR__1483 ) ? ( n205____DOLLAR__1479 ) : ( n212____DOLLAR__1470 ) ;
assign n214____DOLLAR__1500 =  ( n202____DOLLAR__1498 ) ? ( n203____DOLLAR__1494 ) : ( n213____DOLLAR__1485 ) ;
assign n215____DOLLAR__1515 =  ( n200____DOLLAR__1513 ) ? ( n201____DOLLAR__1509 ) : ( n214____DOLLAR__1500 ) ;
assign n216____DOLLAR__1530 =  ( n198____DOLLAR__1528 ) ? ( n199____DOLLAR__1524 ) : ( n215____DOLLAR__1515 ) ;
assign n217____DOLLAR__1545 =  ( n196____DOLLAR__1543 ) ? ( n197____DOLLAR__1539 ) : ( n216____DOLLAR__1530 ) ;
assign n218____DOLLAR__1560 =  ( n194____DOLLAR__1558 ) ? ( n195____DOLLAR__1554 ) : ( n217____DOLLAR__1545 ) ;
assign n219____DOLLAR__1575 =  ( n192____DOLLAR__1573 ) ? ( n193____DOLLAR__1569 ) : ( n218____DOLLAR__1560 ) ;
assign n220____DOLLAR__1590 =  ( n190____DOLLAR__1588 ) ? ( n191____DOLLAR__1584 ) : ( n219____DOLLAR__1575 ) ;
assign n221____DOLLAR__1605 =  ( n188____DOLLAR__1603 ) ? ( n189____DOLLAR__1599 ) : ( n220____DOLLAR__1590 ) ;
assign n222____DOLLAR__1620 =  ( n186____DOLLAR__1618 ) ? ( n187____DOLLAR__1614 ) : ( n221____DOLLAR__1605 ) ;
assign n223____DOLLAR__1635 =  ( n184____DOLLAR__1633 ) ? ( n185____DOLLAR__1629 ) : ( n222____DOLLAR__1620 ) ;
assign n224____DOLLAR__1650 =  ( n182____DOLLAR__1648 ) ? ( n183____DOLLAR__1644 ) : ( n223____DOLLAR__1635 ) ;
assign n225____DOLLAR__1665 =  ( n180____DOLLAR__1663 ) ? ( n181____DOLLAR__1659 ) : ( n224____DOLLAR__1650 ) ;
assign n226____DOLLAR__1424 =  ( ( n175____DOLLAR__1419 ) >> ( 32'd4 ))  ;
assign n227____DOLLAR__1666 =  ( n225____DOLLAR__1665 ) ^ ( n226____DOLLAR__1424 )  ;
assign n228____DOLLAR__1675 = n227____DOLLAR__1666[7:0] ;
assign n229____DOLLAR__1674 =  ( ( n177____DOLLAR__1420 ) >> ( 8'd4 ))  ;
assign n230____DOLLAR__1677 =  ( n228____DOLLAR__1675 ) ^ ( n229____DOLLAR__1674 )  ;
assign n231____DOLLAR__1678 =  ( n230____DOLLAR__1677 ) & ( 8'd15 )  ;
assign n232____DOLLAR__1911 =  ( n231____DOLLAR__1678 ) == ( 8'd15 )  ;
assign n233____DOLLAR__1907 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n234____DOLLAR__1896 =  ( n231____DOLLAR__1678 ) == ( 8'd14 )  ;
assign n235____DOLLAR__1892 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n236____DOLLAR__1881 =  ( n231____DOLLAR__1678 ) == ( 8'd13 )  ;
assign n237____DOLLAR__1877 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n238____DOLLAR__1866 =  ( n231____DOLLAR__1678 ) == ( 8'd12 )  ;
assign n239____DOLLAR__1862 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n240____DOLLAR__1851 =  ( n231____DOLLAR__1678 ) == ( 8'd11 )  ;
assign n241____DOLLAR__1847 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n242____DOLLAR__1836 =  ( n231____DOLLAR__1678 ) == ( 8'd10 )  ;
assign n243____DOLLAR__1832 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n244____DOLLAR__1821 =  ( n231____DOLLAR__1678 ) == ( 8'd9 )  ;
assign n245____DOLLAR__1817 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n246____DOLLAR__1806 =  ( n231____DOLLAR__1678 ) == ( 8'd8 )  ;
assign n247____DOLLAR__1802 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n248____DOLLAR__1791 =  ( n231____DOLLAR__1678 ) == ( 8'd7 )  ;
assign n249____DOLLAR__1787 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n250____DOLLAR__1776 =  ( n231____DOLLAR__1678 ) == ( 8'd6 )  ;
assign n251____DOLLAR__1772 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n252____DOLLAR__1761 =  ( n231____DOLLAR__1678 ) == ( 8'd5 )  ;
assign n253____DOLLAR__1757 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n254____DOLLAR__1746 =  ( n231____DOLLAR__1678 ) == ( 8'd4 )  ;
assign n255____DOLLAR__1742 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n256____DOLLAR__1731 =  ( n231____DOLLAR__1678 ) == ( 8'd3 )  ;
assign n257____DOLLAR__1727 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n258____DOLLAR__1716 =  ( n231____DOLLAR__1678 ) == ( 8'd2 )  ;
assign n259____DOLLAR__1712 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n260____DOLLAR__1701 =  ( n231____DOLLAR__1678 ) == ( 8'd1 )  ;
assign n261____DOLLAR__1697 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n262____DOLLAR__1687 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n263____DOLLAR__1703 =  ( n260____DOLLAR__1701 ) ? ( n261____DOLLAR__1697 ) : ( n262____DOLLAR__1687 ) ;
assign n264____DOLLAR__1718 =  ( n258____DOLLAR__1716 ) ? ( n259____DOLLAR__1712 ) : ( n263____DOLLAR__1703 ) ;
assign n265____DOLLAR__1733 =  ( n256____DOLLAR__1731 ) ? ( n257____DOLLAR__1727 ) : ( n264____DOLLAR__1718 ) ;
assign n266____DOLLAR__1748 =  ( n254____DOLLAR__1746 ) ? ( n255____DOLLAR__1742 ) : ( n265____DOLLAR__1733 ) ;
assign n267____DOLLAR__1763 =  ( n252____DOLLAR__1761 ) ? ( n253____DOLLAR__1757 ) : ( n266____DOLLAR__1748 ) ;
assign n268____DOLLAR__1778 =  ( n250____DOLLAR__1776 ) ? ( n251____DOLLAR__1772 ) : ( n267____DOLLAR__1763 ) ;
assign n269____DOLLAR__1793 =  ( n248____DOLLAR__1791 ) ? ( n249____DOLLAR__1787 ) : ( n268____DOLLAR__1778 ) ;
assign n270____DOLLAR__1808 =  ( n246____DOLLAR__1806 ) ? ( n247____DOLLAR__1802 ) : ( n269____DOLLAR__1793 ) ;
assign n271____DOLLAR__1823 =  ( n244____DOLLAR__1821 ) ? ( n245____DOLLAR__1817 ) : ( n270____DOLLAR__1808 ) ;
assign n272____DOLLAR__1838 =  ( n242____DOLLAR__1836 ) ? ( n243____DOLLAR__1832 ) : ( n271____DOLLAR__1823 ) ;
assign n273____DOLLAR__1853 =  ( n240____DOLLAR__1851 ) ? ( n241____DOLLAR__1847 ) : ( n272____DOLLAR__1838 ) ;
assign n274____DOLLAR__1868 =  ( n238____DOLLAR__1866 ) ? ( n239____DOLLAR__1862 ) : ( n273____DOLLAR__1853 ) ;
assign n275____DOLLAR__1883 =  ( n236____DOLLAR__1881 ) ? ( n237____DOLLAR__1877 ) : ( n274____DOLLAR__1868 ) ;
assign n276____DOLLAR__1898 =  ( n234____DOLLAR__1896 ) ? ( n235____DOLLAR__1892 ) : ( n275____DOLLAR__1883 ) ;
assign n277____DOLLAR__1913 =  ( n232____DOLLAR__1911 ) ? ( n233____DOLLAR__1907 ) : ( n276____DOLLAR__1898 ) ;
assign n278____DOLLAR__1669 =  ( ( n227____DOLLAR__1666 ) >> ( 32'd4 ))  ;
assign n279____DOLLAR__1914 =  ( n277____DOLLAR__1913 ) ^ ( n278____DOLLAR__1669 )  ;
assign n280____DOLLAR__1922 = n279____DOLLAR__1914[7:0] ;
assign n281____DOLLAR__1915 = CRC_DAT_IN[23:16] ;
assign n282____DOLLAR__1924 =  ( n280____DOLLAR__1922 ) ^ ( n281____DOLLAR__1915 )  ;
assign n283____DOLLAR__1925 =  ( n282____DOLLAR__1924 ) & ( 8'd15 )  ;
assign n284____DOLLAR__2158 =  ( n283____DOLLAR__1925 ) == ( 8'd15 )  ;
assign n285____DOLLAR__2154 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n286____DOLLAR__2143 =  ( n283____DOLLAR__1925 ) == ( 8'd14 )  ;
assign n287____DOLLAR__2139 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n288____DOLLAR__2128 =  ( n283____DOLLAR__1925 ) == ( 8'd13 )  ;
assign n289____DOLLAR__2124 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n290____DOLLAR__2113 =  ( n283____DOLLAR__1925 ) == ( 8'd12 )  ;
assign n291____DOLLAR__2109 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n292____DOLLAR__2098 =  ( n283____DOLLAR__1925 ) == ( 8'd11 )  ;
assign n293____DOLLAR__2094 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n294____DOLLAR__2083 =  ( n283____DOLLAR__1925 ) == ( 8'd10 )  ;
assign n295____DOLLAR__2079 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n296____DOLLAR__2068 =  ( n283____DOLLAR__1925 ) == ( 8'd9 )  ;
assign n297____DOLLAR__2064 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n298____DOLLAR__2053 =  ( n283____DOLLAR__1925 ) == ( 8'd8 )  ;
assign n299____DOLLAR__2049 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n300____DOLLAR__2038 =  ( n283____DOLLAR__1925 ) == ( 8'd7 )  ;
assign n301____DOLLAR__2034 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n302____DOLLAR__2023 =  ( n283____DOLLAR__1925 ) == ( 8'd6 )  ;
assign n303____DOLLAR__2019 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n304____DOLLAR__2008 =  ( n283____DOLLAR__1925 ) == ( 8'd5 )  ;
assign n305____DOLLAR__2004 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n306____DOLLAR__1993 =  ( n283____DOLLAR__1925 ) == ( 8'd4 )  ;
assign n307____DOLLAR__1989 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n308____DOLLAR__1978 =  ( n283____DOLLAR__1925 ) == ( 8'd3 )  ;
assign n309____DOLLAR__1974 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n310____DOLLAR__1963 =  ( n283____DOLLAR__1925 ) == ( 8'd2 )  ;
assign n311____DOLLAR__1959 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n312____DOLLAR__1948 =  ( n283____DOLLAR__1925 ) == ( 8'd1 )  ;
assign n313____DOLLAR__1944 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n314____DOLLAR__1934 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n315____DOLLAR__1950 =  ( n312____DOLLAR__1948 ) ? ( n313____DOLLAR__1944 ) : ( n314____DOLLAR__1934 ) ;
assign n316____DOLLAR__1965 =  ( n310____DOLLAR__1963 ) ? ( n311____DOLLAR__1959 ) : ( n315____DOLLAR__1950 ) ;
assign n317____DOLLAR__1980 =  ( n308____DOLLAR__1978 ) ? ( n309____DOLLAR__1974 ) : ( n316____DOLLAR__1965 ) ;
assign n318____DOLLAR__1995 =  ( n306____DOLLAR__1993 ) ? ( n307____DOLLAR__1989 ) : ( n317____DOLLAR__1980 ) ;
assign n319____DOLLAR__2010 =  ( n304____DOLLAR__2008 ) ? ( n305____DOLLAR__2004 ) : ( n318____DOLLAR__1995 ) ;
assign n320____DOLLAR__2025 =  ( n302____DOLLAR__2023 ) ? ( n303____DOLLAR__2019 ) : ( n319____DOLLAR__2010 ) ;
assign n321____DOLLAR__2040 =  ( n300____DOLLAR__2038 ) ? ( n301____DOLLAR__2034 ) : ( n320____DOLLAR__2025 ) ;
assign n322____DOLLAR__2055 =  ( n298____DOLLAR__2053 ) ? ( n299____DOLLAR__2049 ) : ( n321____DOLLAR__2040 ) ;
assign n323____DOLLAR__2070 =  ( n296____DOLLAR__2068 ) ? ( n297____DOLLAR__2064 ) : ( n322____DOLLAR__2055 ) ;
assign n324____DOLLAR__2085 =  ( n294____DOLLAR__2083 ) ? ( n295____DOLLAR__2079 ) : ( n323____DOLLAR__2070 ) ;
assign n325____DOLLAR__2100 =  ( n292____DOLLAR__2098 ) ? ( n293____DOLLAR__2094 ) : ( n324____DOLLAR__2085 ) ;
assign n326____DOLLAR__2115 =  ( n290____DOLLAR__2113 ) ? ( n291____DOLLAR__2109 ) : ( n325____DOLLAR__2100 ) ;
assign n327____DOLLAR__2130 =  ( n288____DOLLAR__2128 ) ? ( n289____DOLLAR__2124 ) : ( n326____DOLLAR__2115 ) ;
assign n328____DOLLAR__2145 =  ( n286____DOLLAR__2143 ) ? ( n287____DOLLAR__2139 ) : ( n327____DOLLAR__2130 ) ;
assign n329____DOLLAR__2160 =  ( n284____DOLLAR__2158 ) ? ( n285____DOLLAR__2154 ) : ( n328____DOLLAR__2145 ) ;
assign n330____DOLLAR__1919 =  ( ( n279____DOLLAR__1914 ) >> ( 32'd4 ))  ;
assign n331____DOLLAR__2161 =  ( n329____DOLLAR__2160 ) ^ ( n330____DOLLAR__1919 )  ;
assign n332____DOLLAR__2170 = n331____DOLLAR__2161[7:0] ;
assign n333____DOLLAR__2169 =  ( ( n281____DOLLAR__1915 ) >> ( 8'd4 ))  ;
assign n334____DOLLAR__2172 =  ( n332____DOLLAR__2170 ) ^ ( n333____DOLLAR__2169 )  ;
assign n335____DOLLAR__2173 =  ( n334____DOLLAR__2172 ) & ( 8'd15 )  ;
assign n336____DOLLAR__2406 =  ( n335____DOLLAR__2173 ) == ( 8'd15 )  ;
assign n337____DOLLAR__2402 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n338____DOLLAR__2391 =  ( n335____DOLLAR__2173 ) == ( 8'd14 )  ;
assign n339____DOLLAR__2387 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n340____DOLLAR__2376 =  ( n335____DOLLAR__2173 ) == ( 8'd13 )  ;
assign n341____DOLLAR__2372 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n342____DOLLAR__2361 =  ( n335____DOLLAR__2173 ) == ( 8'd12 )  ;
assign n343____DOLLAR__2357 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n344____DOLLAR__2346 =  ( n335____DOLLAR__2173 ) == ( 8'd11 )  ;
assign n345____DOLLAR__2342 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n346____DOLLAR__2331 =  ( n335____DOLLAR__2173 ) == ( 8'd10 )  ;
assign n347____DOLLAR__2327 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n348____DOLLAR__2316 =  ( n335____DOLLAR__2173 ) == ( 8'd9 )  ;
assign n349____DOLLAR__2312 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n350____DOLLAR__2301 =  ( n335____DOLLAR__2173 ) == ( 8'd8 )  ;
assign n351____DOLLAR__2297 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n352____DOLLAR__2286 =  ( n335____DOLLAR__2173 ) == ( 8'd7 )  ;
assign n353____DOLLAR__2282 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n354____DOLLAR__2271 =  ( n335____DOLLAR__2173 ) == ( 8'd6 )  ;
assign n355____DOLLAR__2267 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n356____DOLLAR__2256 =  ( n335____DOLLAR__2173 ) == ( 8'd5 )  ;
assign n357____DOLLAR__2252 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n358____DOLLAR__2241 =  ( n335____DOLLAR__2173 ) == ( 8'd4 )  ;
assign n359____DOLLAR__2237 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n360____DOLLAR__2226 =  ( n335____DOLLAR__2173 ) == ( 8'd3 )  ;
assign n361____DOLLAR__2222 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n362____DOLLAR__2211 =  ( n335____DOLLAR__2173 ) == ( 8'd2 )  ;
assign n363____DOLLAR__2207 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n364____DOLLAR__2196 =  ( n335____DOLLAR__2173 ) == ( 8'd1 )  ;
assign n365____DOLLAR__2192 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n366____DOLLAR__2182 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n367____DOLLAR__2198 =  ( n364____DOLLAR__2196 ) ? ( n365____DOLLAR__2192 ) : ( n366____DOLLAR__2182 ) ;
assign n368____DOLLAR__2213 =  ( n362____DOLLAR__2211 ) ? ( n363____DOLLAR__2207 ) : ( n367____DOLLAR__2198 ) ;
assign n369____DOLLAR__2228 =  ( n360____DOLLAR__2226 ) ? ( n361____DOLLAR__2222 ) : ( n368____DOLLAR__2213 ) ;
assign n370____DOLLAR__2243 =  ( n358____DOLLAR__2241 ) ? ( n359____DOLLAR__2237 ) : ( n369____DOLLAR__2228 ) ;
assign n371____DOLLAR__2258 =  ( n356____DOLLAR__2256 ) ? ( n357____DOLLAR__2252 ) : ( n370____DOLLAR__2243 ) ;
assign n372____DOLLAR__2273 =  ( n354____DOLLAR__2271 ) ? ( n355____DOLLAR__2267 ) : ( n371____DOLLAR__2258 ) ;
assign n373____DOLLAR__2288 =  ( n352____DOLLAR__2286 ) ? ( n353____DOLLAR__2282 ) : ( n372____DOLLAR__2273 ) ;
assign n374____DOLLAR__2303 =  ( n350____DOLLAR__2301 ) ? ( n351____DOLLAR__2297 ) : ( n373____DOLLAR__2288 ) ;
assign n375____DOLLAR__2318 =  ( n348____DOLLAR__2316 ) ? ( n349____DOLLAR__2312 ) : ( n374____DOLLAR__2303 ) ;
assign n376____DOLLAR__2333 =  ( n346____DOLLAR__2331 ) ? ( n347____DOLLAR__2327 ) : ( n375____DOLLAR__2318 ) ;
assign n377____DOLLAR__2348 =  ( n344____DOLLAR__2346 ) ? ( n345____DOLLAR__2342 ) : ( n376____DOLLAR__2333 ) ;
assign n378____DOLLAR__2363 =  ( n342____DOLLAR__2361 ) ? ( n343____DOLLAR__2357 ) : ( n377____DOLLAR__2348 ) ;
assign n379____DOLLAR__2378 =  ( n340____DOLLAR__2376 ) ? ( n341____DOLLAR__2372 ) : ( n378____DOLLAR__2363 ) ;
assign n380____DOLLAR__2393 =  ( n338____DOLLAR__2391 ) ? ( n339____DOLLAR__2387 ) : ( n379____DOLLAR__2378 ) ;
assign n381____DOLLAR__2408 =  ( n336____DOLLAR__2406 ) ? ( n337____DOLLAR__2402 ) : ( n380____DOLLAR__2393 ) ;
assign n382____DOLLAR__2164 =  ( ( n331____DOLLAR__2161 ) >> ( 32'd4 ))  ;
assign n383____DOLLAR__2409 =  ( n381____DOLLAR__2408 ) ^ ( n382____DOLLAR__2164 )  ;
assign n384____DOLLAR__2417 = n383____DOLLAR__2409[7:0] ;
assign n385____DOLLAR__2410 = CRC_DAT_IN[31:24] ;
assign n386____DOLLAR__2419 =  ( n384____DOLLAR__2417 ) ^ ( n385____DOLLAR__2410 )  ;
assign n387____DOLLAR__2420 =  ( n386____DOLLAR__2419 ) & ( 8'd15 )  ;
assign n388____DOLLAR__2653 =  ( n387____DOLLAR__2420 ) == ( 8'd15 )  ;
assign n389____DOLLAR__2649 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n390____DOLLAR__2638 =  ( n387____DOLLAR__2420 ) == ( 8'd14 )  ;
assign n391____DOLLAR__2634 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n392____DOLLAR__2623 =  ( n387____DOLLAR__2420 ) == ( 8'd13 )  ;
assign n393____DOLLAR__2619 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n394____DOLLAR__2608 =  ( n387____DOLLAR__2420 ) == ( 8'd12 )  ;
assign n395____DOLLAR__2604 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n396____DOLLAR__2593 =  ( n387____DOLLAR__2420 ) == ( 8'd11 )  ;
assign n397____DOLLAR__2589 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n398____DOLLAR__2578 =  ( n387____DOLLAR__2420 ) == ( 8'd10 )  ;
assign n399____DOLLAR__2574 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n400____DOLLAR__2563 =  ( n387____DOLLAR__2420 ) == ( 8'd9 )  ;
assign n401____DOLLAR__2559 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n402____DOLLAR__2548 =  ( n387____DOLLAR__2420 ) == ( 8'd8 )  ;
assign n403____DOLLAR__2544 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n404____DOLLAR__2533 =  ( n387____DOLLAR__2420 ) == ( 8'd7 )  ;
assign n405____DOLLAR__2529 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n406____DOLLAR__2518 =  ( n387____DOLLAR__2420 ) == ( 8'd6 )  ;
assign n407____DOLLAR__2514 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n408____DOLLAR__2503 =  ( n387____DOLLAR__2420 ) == ( 8'd5 )  ;
assign n409____DOLLAR__2499 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n410____DOLLAR__2488 =  ( n387____DOLLAR__2420 ) == ( 8'd4 )  ;
assign n411____DOLLAR__2484 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n412____DOLLAR__2473 =  ( n387____DOLLAR__2420 ) == ( 8'd3 )  ;
assign n413____DOLLAR__2469 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n414____DOLLAR__2458 =  ( n387____DOLLAR__2420 ) == ( 8'd2 )  ;
assign n415____DOLLAR__2454 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n416____DOLLAR__2443 =  ( n387____DOLLAR__2420 ) == ( 8'd1 )  ;
assign n417____DOLLAR__2439 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n418____DOLLAR__2429 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n419____DOLLAR__2445 =  ( n416____DOLLAR__2443 ) ? ( n417____DOLLAR__2439 ) : ( n418____DOLLAR__2429 ) ;
assign n420____DOLLAR__2460 =  ( n414____DOLLAR__2458 ) ? ( n415____DOLLAR__2454 ) : ( n419____DOLLAR__2445 ) ;
assign n421____DOLLAR__2475 =  ( n412____DOLLAR__2473 ) ? ( n413____DOLLAR__2469 ) : ( n420____DOLLAR__2460 ) ;
assign n422____DOLLAR__2490 =  ( n410____DOLLAR__2488 ) ? ( n411____DOLLAR__2484 ) : ( n421____DOLLAR__2475 ) ;
assign n423____DOLLAR__2505 =  ( n408____DOLLAR__2503 ) ? ( n409____DOLLAR__2499 ) : ( n422____DOLLAR__2490 ) ;
assign n424____DOLLAR__2520 =  ( n406____DOLLAR__2518 ) ? ( n407____DOLLAR__2514 ) : ( n423____DOLLAR__2505 ) ;
assign n425____DOLLAR__2535 =  ( n404____DOLLAR__2533 ) ? ( n405____DOLLAR__2529 ) : ( n424____DOLLAR__2520 ) ;
assign n426____DOLLAR__2550 =  ( n402____DOLLAR__2548 ) ? ( n403____DOLLAR__2544 ) : ( n425____DOLLAR__2535 ) ;
assign n427____DOLLAR__2565 =  ( n400____DOLLAR__2563 ) ? ( n401____DOLLAR__2559 ) : ( n426____DOLLAR__2550 ) ;
assign n428____DOLLAR__2580 =  ( n398____DOLLAR__2578 ) ? ( n399____DOLLAR__2574 ) : ( n427____DOLLAR__2565 ) ;
assign n429____DOLLAR__2595 =  ( n396____DOLLAR__2593 ) ? ( n397____DOLLAR__2589 ) : ( n428____DOLLAR__2580 ) ;
assign n430____DOLLAR__2610 =  ( n394____DOLLAR__2608 ) ? ( n395____DOLLAR__2604 ) : ( n429____DOLLAR__2595 ) ;
assign n431____DOLLAR__2625 =  ( n392____DOLLAR__2623 ) ? ( n393____DOLLAR__2619 ) : ( n430____DOLLAR__2610 ) ;
assign n432____DOLLAR__2640 =  ( n390____DOLLAR__2638 ) ? ( n391____DOLLAR__2634 ) : ( n431____DOLLAR__2625 ) ;
assign n433____DOLLAR__2655 =  ( n388____DOLLAR__2653 ) ? ( n389____DOLLAR__2649 ) : ( n432____DOLLAR__2640 ) ;
assign n434____DOLLAR__2414 =  ( ( n383____DOLLAR__2409 ) >> ( 32'd4 ))  ;
assign n435____DOLLAR__2656 =  ( n433____DOLLAR__2655 ) ^ ( n434____DOLLAR__2414 )  ;
assign n436____DOLLAR__2665 = n435____DOLLAR__2656[7:0] ;
assign n437____DOLLAR__2664 =  ( ( n385____DOLLAR__2410 ) >> ( 8'd4 ))  ;
assign n438____DOLLAR__2667 =  ( n436____DOLLAR__2665 ) ^ ( n437____DOLLAR__2664 )  ;
assign n439____DOLLAR__2668 =  ( n438____DOLLAR__2667 ) & ( 8'd15 )  ;
assign n440____DOLLAR__2901 =  ( n439____DOLLAR__2668 ) == ( 8'd15 )  ;
assign n441____DOLLAR__2897 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n442____DOLLAR__2886 =  ( n439____DOLLAR__2668 ) == ( 8'd14 )  ;
assign n443____DOLLAR__2882 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n444____DOLLAR__2871 =  ( n439____DOLLAR__2668 ) == ( 8'd13 )  ;
assign n445____DOLLAR__2867 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n446____DOLLAR__2856 =  ( n439____DOLLAR__2668 ) == ( 8'd12 )  ;
assign n447____DOLLAR__2852 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n448____DOLLAR__2841 =  ( n439____DOLLAR__2668 ) == ( 8'd11 )  ;
assign n449____DOLLAR__2837 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n450____DOLLAR__2826 =  ( n439____DOLLAR__2668 ) == ( 8'd10 )  ;
assign n451____DOLLAR__2822 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n452____DOLLAR__2811 =  ( n439____DOLLAR__2668 ) == ( 8'd9 )  ;
assign n453____DOLLAR__2807 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n454____DOLLAR__2796 =  ( n439____DOLLAR__2668 ) == ( 8'd8 )  ;
assign n455____DOLLAR__2792 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n456____DOLLAR__2781 =  ( n439____DOLLAR__2668 ) == ( 8'd7 )  ;
assign n457____DOLLAR__2777 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n458____DOLLAR__2766 =  ( n439____DOLLAR__2668 ) == ( 8'd6 )  ;
assign n459____DOLLAR__2762 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n460____DOLLAR__2751 =  ( n439____DOLLAR__2668 ) == ( 8'd5 )  ;
assign n461____DOLLAR__2747 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n462____DOLLAR__2736 =  ( n439____DOLLAR__2668 ) == ( 8'd4 )  ;
assign n463____DOLLAR__2732 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n464____DOLLAR__2721 =  ( n439____DOLLAR__2668 ) == ( 8'd3 )  ;
assign n465____DOLLAR__2717 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n466____DOLLAR__2706 =  ( n439____DOLLAR__2668 ) == ( 8'd2 )  ;
assign n467____DOLLAR__2702 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n468____DOLLAR__2691 =  ( n439____DOLLAR__2668 ) == ( 8'd1 )  ;
assign n469____DOLLAR__2687 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n470____DOLLAR__2677 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n471____DOLLAR__2693 =  ( n468____DOLLAR__2691 ) ? ( n469____DOLLAR__2687 ) : ( n470____DOLLAR__2677 ) ;
assign n472____DOLLAR__2708 =  ( n466____DOLLAR__2706 ) ? ( n467____DOLLAR__2702 ) : ( n471____DOLLAR__2693 ) ;
assign n473____DOLLAR__2723 =  ( n464____DOLLAR__2721 ) ? ( n465____DOLLAR__2717 ) : ( n472____DOLLAR__2708 ) ;
assign n474____DOLLAR__2738 =  ( n462____DOLLAR__2736 ) ? ( n463____DOLLAR__2732 ) : ( n473____DOLLAR__2723 ) ;
assign n475____DOLLAR__2753 =  ( n460____DOLLAR__2751 ) ? ( n461____DOLLAR__2747 ) : ( n474____DOLLAR__2738 ) ;
assign n476____DOLLAR__2768 =  ( n458____DOLLAR__2766 ) ? ( n459____DOLLAR__2762 ) : ( n475____DOLLAR__2753 ) ;
assign n477____DOLLAR__2783 =  ( n456____DOLLAR__2781 ) ? ( n457____DOLLAR__2777 ) : ( n476____DOLLAR__2768 ) ;
assign n478____DOLLAR__2798 =  ( n454____DOLLAR__2796 ) ? ( n455____DOLLAR__2792 ) : ( n477____DOLLAR__2783 ) ;
assign n479____DOLLAR__2813 =  ( n452____DOLLAR__2811 ) ? ( n453____DOLLAR__2807 ) : ( n478____DOLLAR__2798 ) ;
assign n480____DOLLAR__2828 =  ( n450____DOLLAR__2826 ) ? ( n451____DOLLAR__2822 ) : ( n479____DOLLAR__2813 ) ;
assign n481____DOLLAR__2843 =  ( n448____DOLLAR__2841 ) ? ( n449____DOLLAR__2837 ) : ( n480____DOLLAR__2828 ) ;
assign n482____DOLLAR__2858 =  ( n446____DOLLAR__2856 ) ? ( n447____DOLLAR__2852 ) : ( n481____DOLLAR__2843 ) ;
assign n483____DOLLAR__2873 =  ( n444____DOLLAR__2871 ) ? ( n445____DOLLAR__2867 ) : ( n482____DOLLAR__2858 ) ;
assign n484____DOLLAR__2888 =  ( n442____DOLLAR__2886 ) ? ( n443____DOLLAR__2882 ) : ( n483____DOLLAR__2873 ) ;
assign n485____DOLLAR__2903 =  ( n440____DOLLAR__2901 ) ? ( n441____DOLLAR__2897 ) : ( n484____DOLLAR__2888 ) ;
assign n486____DOLLAR__2659 =  ( ( n435____DOLLAR__2656 ) >> ( 32'd4 ))  ;
assign n487____DOLLAR__2904 =  ( n485____DOLLAR__2903 ) ^ ( n486____DOLLAR__2659 )  ;
assign n488____DOLLAR__2912 = n487____DOLLAR__2904[7:0] ;
assign n489____DOLLAR__2905 = CRC_DAT_IN[39:32] ;
assign n490____DOLLAR__2914 =  ( n488____DOLLAR__2912 ) ^ ( n489____DOLLAR__2905 )  ;
assign n491____DOLLAR__2915 =  ( n490____DOLLAR__2914 ) & ( 8'd15 )  ;
assign n492____DOLLAR__3148 =  ( n491____DOLLAR__2915 ) == ( 8'd15 )  ;
assign n493____DOLLAR__3144 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n494____DOLLAR__3133 =  ( n491____DOLLAR__2915 ) == ( 8'd14 )  ;
assign n495____DOLLAR__3129 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n496____DOLLAR__3118 =  ( n491____DOLLAR__2915 ) == ( 8'd13 )  ;
assign n497____DOLLAR__3114 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n498____DOLLAR__3103 =  ( n491____DOLLAR__2915 ) == ( 8'd12 )  ;
assign n499____DOLLAR__3099 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n500____DOLLAR__3088 =  ( n491____DOLLAR__2915 ) == ( 8'd11 )  ;
assign n501____DOLLAR__3084 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n502____DOLLAR__3073 =  ( n491____DOLLAR__2915 ) == ( 8'd10 )  ;
assign n503____DOLLAR__3069 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n504____DOLLAR__3058 =  ( n491____DOLLAR__2915 ) == ( 8'd9 )  ;
assign n505____DOLLAR__3054 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n506____DOLLAR__3043 =  ( n491____DOLLAR__2915 ) == ( 8'd8 )  ;
assign n507____DOLLAR__3039 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n508____DOLLAR__3028 =  ( n491____DOLLAR__2915 ) == ( 8'd7 )  ;
assign n509____DOLLAR__3024 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n510____DOLLAR__3013 =  ( n491____DOLLAR__2915 ) == ( 8'd6 )  ;
assign n511____DOLLAR__3009 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n512____DOLLAR__2998 =  ( n491____DOLLAR__2915 ) == ( 8'd5 )  ;
assign n513____DOLLAR__2994 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n514____DOLLAR__2983 =  ( n491____DOLLAR__2915 ) == ( 8'd4 )  ;
assign n515____DOLLAR__2979 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n516____DOLLAR__2968 =  ( n491____DOLLAR__2915 ) == ( 8'd3 )  ;
assign n517____DOLLAR__2964 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n518____DOLLAR__2953 =  ( n491____DOLLAR__2915 ) == ( 8'd2 )  ;
assign n519____DOLLAR__2949 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n520____DOLLAR__2938 =  ( n491____DOLLAR__2915 ) == ( 8'd1 )  ;
assign n521____DOLLAR__2934 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n522____DOLLAR__2924 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n523____DOLLAR__2940 =  ( n520____DOLLAR__2938 ) ? ( n521____DOLLAR__2934 ) : ( n522____DOLLAR__2924 ) ;
assign n524____DOLLAR__2955 =  ( n518____DOLLAR__2953 ) ? ( n519____DOLLAR__2949 ) : ( n523____DOLLAR__2940 ) ;
assign n525____DOLLAR__2970 =  ( n516____DOLLAR__2968 ) ? ( n517____DOLLAR__2964 ) : ( n524____DOLLAR__2955 ) ;
assign n526____DOLLAR__2985 =  ( n514____DOLLAR__2983 ) ? ( n515____DOLLAR__2979 ) : ( n525____DOLLAR__2970 ) ;
assign n527____DOLLAR__3000 =  ( n512____DOLLAR__2998 ) ? ( n513____DOLLAR__2994 ) : ( n526____DOLLAR__2985 ) ;
assign n528____DOLLAR__3015 =  ( n510____DOLLAR__3013 ) ? ( n511____DOLLAR__3009 ) : ( n527____DOLLAR__3000 ) ;
assign n529____DOLLAR__3030 =  ( n508____DOLLAR__3028 ) ? ( n509____DOLLAR__3024 ) : ( n528____DOLLAR__3015 ) ;
assign n530____DOLLAR__3045 =  ( n506____DOLLAR__3043 ) ? ( n507____DOLLAR__3039 ) : ( n529____DOLLAR__3030 ) ;
assign n531____DOLLAR__3060 =  ( n504____DOLLAR__3058 ) ? ( n505____DOLLAR__3054 ) : ( n530____DOLLAR__3045 ) ;
assign n532____DOLLAR__3075 =  ( n502____DOLLAR__3073 ) ? ( n503____DOLLAR__3069 ) : ( n531____DOLLAR__3060 ) ;
assign n533____DOLLAR__3090 =  ( n500____DOLLAR__3088 ) ? ( n501____DOLLAR__3084 ) : ( n532____DOLLAR__3075 ) ;
assign n534____DOLLAR__3105 =  ( n498____DOLLAR__3103 ) ? ( n499____DOLLAR__3099 ) : ( n533____DOLLAR__3090 ) ;
assign n535____DOLLAR__3120 =  ( n496____DOLLAR__3118 ) ? ( n497____DOLLAR__3114 ) : ( n534____DOLLAR__3105 ) ;
assign n536____DOLLAR__3135 =  ( n494____DOLLAR__3133 ) ? ( n495____DOLLAR__3129 ) : ( n535____DOLLAR__3120 ) ;
assign n537____DOLLAR__3150 =  ( n492____DOLLAR__3148 ) ? ( n493____DOLLAR__3144 ) : ( n536____DOLLAR__3135 ) ;
assign n538____DOLLAR__2909 =  ( ( n487____DOLLAR__2904 ) >> ( 32'd4 ))  ;
assign n539____DOLLAR__3151 =  ( n537____DOLLAR__3150 ) ^ ( n538____DOLLAR__2909 )  ;
assign n540____DOLLAR__3160 = n539____DOLLAR__3151[7:0] ;
assign n541____DOLLAR__3159 =  ( ( n489____DOLLAR__2905 ) >> ( 8'd4 ))  ;
assign n542____DOLLAR__3162 =  ( n540____DOLLAR__3160 ) ^ ( n541____DOLLAR__3159 )  ;
assign n543____DOLLAR__3163 =  ( n542____DOLLAR__3162 ) & ( 8'd15 )  ;
assign n544____DOLLAR__3396 =  ( n543____DOLLAR__3163 ) == ( 8'd15 )  ;
assign n545____DOLLAR__3392 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n546____DOLLAR__3381 =  ( n543____DOLLAR__3163 ) == ( 8'd14 )  ;
assign n547____DOLLAR__3377 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n548____DOLLAR__3366 =  ( n543____DOLLAR__3163 ) == ( 8'd13 )  ;
assign n549____DOLLAR__3362 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n550____DOLLAR__3351 =  ( n543____DOLLAR__3163 ) == ( 8'd12 )  ;
assign n551____DOLLAR__3347 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n552____DOLLAR__3336 =  ( n543____DOLLAR__3163 ) == ( 8'd11 )  ;
assign n553____DOLLAR__3332 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n554____DOLLAR__3321 =  ( n543____DOLLAR__3163 ) == ( 8'd10 )  ;
assign n555____DOLLAR__3317 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n556____DOLLAR__3306 =  ( n543____DOLLAR__3163 ) == ( 8'd9 )  ;
assign n557____DOLLAR__3302 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n558____DOLLAR__3291 =  ( n543____DOLLAR__3163 ) == ( 8'd8 )  ;
assign n559____DOLLAR__3287 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n560____DOLLAR__3276 =  ( n543____DOLLAR__3163 ) == ( 8'd7 )  ;
assign n561____DOLLAR__3272 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n562____DOLLAR__3261 =  ( n543____DOLLAR__3163 ) == ( 8'd6 )  ;
assign n563____DOLLAR__3257 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n564____DOLLAR__3246 =  ( n543____DOLLAR__3163 ) == ( 8'd5 )  ;
assign n565____DOLLAR__3242 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n566____DOLLAR__3231 =  ( n543____DOLLAR__3163 ) == ( 8'd4 )  ;
assign n567____DOLLAR__3227 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n568____DOLLAR__3216 =  ( n543____DOLLAR__3163 ) == ( 8'd3 )  ;
assign n569____DOLLAR__3212 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n570____DOLLAR__3201 =  ( n543____DOLLAR__3163 ) == ( 8'd2 )  ;
assign n571____DOLLAR__3197 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n572____DOLLAR__3186 =  ( n543____DOLLAR__3163 ) == ( 8'd1 )  ;
assign n573____DOLLAR__3182 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n574____DOLLAR__3172 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n575____DOLLAR__3188 =  ( n572____DOLLAR__3186 ) ? ( n573____DOLLAR__3182 ) : ( n574____DOLLAR__3172 ) ;
assign n576____DOLLAR__3203 =  ( n570____DOLLAR__3201 ) ? ( n571____DOLLAR__3197 ) : ( n575____DOLLAR__3188 ) ;
assign n577____DOLLAR__3218 =  ( n568____DOLLAR__3216 ) ? ( n569____DOLLAR__3212 ) : ( n576____DOLLAR__3203 ) ;
assign n578____DOLLAR__3233 =  ( n566____DOLLAR__3231 ) ? ( n567____DOLLAR__3227 ) : ( n577____DOLLAR__3218 ) ;
assign n579____DOLLAR__3248 =  ( n564____DOLLAR__3246 ) ? ( n565____DOLLAR__3242 ) : ( n578____DOLLAR__3233 ) ;
assign n580____DOLLAR__3263 =  ( n562____DOLLAR__3261 ) ? ( n563____DOLLAR__3257 ) : ( n579____DOLLAR__3248 ) ;
assign n581____DOLLAR__3278 =  ( n560____DOLLAR__3276 ) ? ( n561____DOLLAR__3272 ) : ( n580____DOLLAR__3263 ) ;
assign n582____DOLLAR__3293 =  ( n558____DOLLAR__3291 ) ? ( n559____DOLLAR__3287 ) : ( n581____DOLLAR__3278 ) ;
assign n583____DOLLAR__3308 =  ( n556____DOLLAR__3306 ) ? ( n557____DOLLAR__3302 ) : ( n582____DOLLAR__3293 ) ;
assign n584____DOLLAR__3323 =  ( n554____DOLLAR__3321 ) ? ( n555____DOLLAR__3317 ) : ( n583____DOLLAR__3308 ) ;
assign n585____DOLLAR__3338 =  ( n552____DOLLAR__3336 ) ? ( n553____DOLLAR__3332 ) : ( n584____DOLLAR__3323 ) ;
assign n586____DOLLAR__3353 =  ( n550____DOLLAR__3351 ) ? ( n551____DOLLAR__3347 ) : ( n585____DOLLAR__3338 ) ;
assign n587____DOLLAR__3368 =  ( n548____DOLLAR__3366 ) ? ( n549____DOLLAR__3362 ) : ( n586____DOLLAR__3353 ) ;
assign n588____DOLLAR__3383 =  ( n546____DOLLAR__3381 ) ? ( n547____DOLLAR__3377 ) : ( n587____DOLLAR__3368 ) ;
assign n589____DOLLAR__3398 =  ( n544____DOLLAR__3396 ) ? ( n545____DOLLAR__3392 ) : ( n588____DOLLAR__3383 ) ;
assign n590____DOLLAR__3154 =  ( ( n539____DOLLAR__3151 ) >> ( 32'd4 ))  ;
assign n591____DOLLAR__3399 =  ( n589____DOLLAR__3398 ) ^ ( n590____DOLLAR__3154 )  ;
assign n592____DOLLAR__3407 = n591____DOLLAR__3399[7:0] ;
assign n593____DOLLAR__3400 = CRC_DAT_IN[47:40] ;
assign n594____DOLLAR__3409 =  ( n592____DOLLAR__3407 ) ^ ( n593____DOLLAR__3400 )  ;
assign n595____DOLLAR__3410 =  ( n594____DOLLAR__3409 ) & ( 8'd15 )  ;
assign n596____DOLLAR__3643 =  ( n595____DOLLAR__3410 ) == ( 8'd15 )  ;
assign n597____DOLLAR__3639 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n598____DOLLAR__3628 =  ( n595____DOLLAR__3410 ) == ( 8'd14 )  ;
assign n599____DOLLAR__3624 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n600____DOLLAR__3613 =  ( n595____DOLLAR__3410 ) == ( 8'd13 )  ;
assign n601____DOLLAR__3609 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n602____DOLLAR__3598 =  ( n595____DOLLAR__3410 ) == ( 8'd12 )  ;
assign n603____DOLLAR__3594 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n604____DOLLAR__3583 =  ( n595____DOLLAR__3410 ) == ( 8'd11 )  ;
assign n605____DOLLAR__3579 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n606____DOLLAR__3568 =  ( n595____DOLLAR__3410 ) == ( 8'd10 )  ;
assign n607____DOLLAR__3564 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n608____DOLLAR__3553 =  ( n595____DOLLAR__3410 ) == ( 8'd9 )  ;
assign n609____DOLLAR__3549 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n610____DOLLAR__3538 =  ( n595____DOLLAR__3410 ) == ( 8'd8 )  ;
assign n611____DOLLAR__3534 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n612____DOLLAR__3523 =  ( n595____DOLLAR__3410 ) == ( 8'd7 )  ;
assign n613____DOLLAR__3519 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n614____DOLLAR__3508 =  ( n595____DOLLAR__3410 ) == ( 8'd6 )  ;
assign n615____DOLLAR__3504 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n616____DOLLAR__3493 =  ( n595____DOLLAR__3410 ) == ( 8'd5 )  ;
assign n617____DOLLAR__3489 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n618____DOLLAR__3478 =  ( n595____DOLLAR__3410 ) == ( 8'd4 )  ;
assign n619____DOLLAR__3474 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n620____DOLLAR__3463 =  ( n595____DOLLAR__3410 ) == ( 8'd3 )  ;
assign n621____DOLLAR__3459 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n622____DOLLAR__3448 =  ( n595____DOLLAR__3410 ) == ( 8'd2 )  ;
assign n623____DOLLAR__3444 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n624____DOLLAR__3433 =  ( n595____DOLLAR__3410 ) == ( 8'd1 )  ;
assign n625____DOLLAR__3429 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n626____DOLLAR__3419 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n627____DOLLAR__3435 =  ( n624____DOLLAR__3433 ) ? ( n625____DOLLAR__3429 ) : ( n626____DOLLAR__3419 ) ;
assign n628____DOLLAR__3450 =  ( n622____DOLLAR__3448 ) ? ( n623____DOLLAR__3444 ) : ( n627____DOLLAR__3435 ) ;
assign n629____DOLLAR__3465 =  ( n620____DOLLAR__3463 ) ? ( n621____DOLLAR__3459 ) : ( n628____DOLLAR__3450 ) ;
assign n630____DOLLAR__3480 =  ( n618____DOLLAR__3478 ) ? ( n619____DOLLAR__3474 ) : ( n629____DOLLAR__3465 ) ;
assign n631____DOLLAR__3495 =  ( n616____DOLLAR__3493 ) ? ( n617____DOLLAR__3489 ) : ( n630____DOLLAR__3480 ) ;
assign n632____DOLLAR__3510 =  ( n614____DOLLAR__3508 ) ? ( n615____DOLLAR__3504 ) : ( n631____DOLLAR__3495 ) ;
assign n633____DOLLAR__3525 =  ( n612____DOLLAR__3523 ) ? ( n613____DOLLAR__3519 ) : ( n632____DOLLAR__3510 ) ;
assign n634____DOLLAR__3540 =  ( n610____DOLLAR__3538 ) ? ( n611____DOLLAR__3534 ) : ( n633____DOLLAR__3525 ) ;
assign n635____DOLLAR__3555 =  ( n608____DOLLAR__3553 ) ? ( n609____DOLLAR__3549 ) : ( n634____DOLLAR__3540 ) ;
assign n636____DOLLAR__3570 =  ( n606____DOLLAR__3568 ) ? ( n607____DOLLAR__3564 ) : ( n635____DOLLAR__3555 ) ;
assign n637____DOLLAR__3585 =  ( n604____DOLLAR__3583 ) ? ( n605____DOLLAR__3579 ) : ( n636____DOLLAR__3570 ) ;
assign n638____DOLLAR__3600 =  ( n602____DOLLAR__3598 ) ? ( n603____DOLLAR__3594 ) : ( n637____DOLLAR__3585 ) ;
assign n639____DOLLAR__3615 =  ( n600____DOLLAR__3613 ) ? ( n601____DOLLAR__3609 ) : ( n638____DOLLAR__3600 ) ;
assign n640____DOLLAR__3630 =  ( n598____DOLLAR__3628 ) ? ( n599____DOLLAR__3624 ) : ( n639____DOLLAR__3615 ) ;
assign n641____DOLLAR__3645 =  ( n596____DOLLAR__3643 ) ? ( n597____DOLLAR__3639 ) : ( n640____DOLLAR__3630 ) ;
assign n642____DOLLAR__3404 =  ( ( n591____DOLLAR__3399 ) >> ( 32'd4 ))  ;
assign n643____DOLLAR__3646 =  ( n641____DOLLAR__3645 ) ^ ( n642____DOLLAR__3404 )  ;
assign n644____DOLLAR__3655 = n643____DOLLAR__3646[7:0] ;
assign n645____DOLLAR__3654 =  ( ( n593____DOLLAR__3400 ) >> ( 8'd4 ))  ;
assign n646____DOLLAR__3657 =  ( n644____DOLLAR__3655 ) ^ ( n645____DOLLAR__3654 )  ;
assign n647____DOLLAR__3658 =  ( n646____DOLLAR__3657 ) & ( 8'd15 )  ;
assign n648____DOLLAR__3891 =  ( n647____DOLLAR__3658 ) == ( 8'd15 )  ;
assign n649____DOLLAR__3887 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n650____DOLLAR__3876 =  ( n647____DOLLAR__3658 ) == ( 8'd14 )  ;
assign n651____DOLLAR__3872 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n652____DOLLAR__3861 =  ( n647____DOLLAR__3658 ) == ( 8'd13 )  ;
assign n653____DOLLAR__3857 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n654____DOLLAR__3846 =  ( n647____DOLLAR__3658 ) == ( 8'd12 )  ;
assign n655____DOLLAR__3842 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n656____DOLLAR__3831 =  ( n647____DOLLAR__3658 ) == ( 8'd11 )  ;
assign n657____DOLLAR__3827 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n658____DOLLAR__3816 =  ( n647____DOLLAR__3658 ) == ( 8'd10 )  ;
assign n659____DOLLAR__3812 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n660____DOLLAR__3801 =  ( n647____DOLLAR__3658 ) == ( 8'd9 )  ;
assign n661____DOLLAR__3797 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n662____DOLLAR__3786 =  ( n647____DOLLAR__3658 ) == ( 8'd8 )  ;
assign n663____DOLLAR__3782 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n664____DOLLAR__3771 =  ( n647____DOLLAR__3658 ) == ( 8'd7 )  ;
assign n665____DOLLAR__3767 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n666____DOLLAR__3756 =  ( n647____DOLLAR__3658 ) == ( 8'd6 )  ;
assign n667____DOLLAR__3752 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n668____DOLLAR__3741 =  ( n647____DOLLAR__3658 ) == ( 8'd5 )  ;
assign n669____DOLLAR__3737 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n670____DOLLAR__3726 =  ( n647____DOLLAR__3658 ) == ( 8'd4 )  ;
assign n671____DOLLAR__3722 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n672____DOLLAR__3711 =  ( n647____DOLLAR__3658 ) == ( 8'd3 )  ;
assign n673____DOLLAR__3707 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n674____DOLLAR__3696 =  ( n647____DOLLAR__3658 ) == ( 8'd2 )  ;
assign n675____DOLLAR__3692 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n676____DOLLAR__3681 =  ( n647____DOLLAR__3658 ) == ( 8'd1 )  ;
assign n677____DOLLAR__3677 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n678____DOLLAR__3667 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n679____DOLLAR__3683 =  ( n676____DOLLAR__3681 ) ? ( n677____DOLLAR__3677 ) : ( n678____DOLLAR__3667 ) ;
assign n680____DOLLAR__3698 =  ( n674____DOLLAR__3696 ) ? ( n675____DOLLAR__3692 ) : ( n679____DOLLAR__3683 ) ;
assign n681____DOLLAR__3713 =  ( n672____DOLLAR__3711 ) ? ( n673____DOLLAR__3707 ) : ( n680____DOLLAR__3698 ) ;
assign n682____DOLLAR__3728 =  ( n670____DOLLAR__3726 ) ? ( n671____DOLLAR__3722 ) : ( n681____DOLLAR__3713 ) ;
assign n683____DOLLAR__3743 =  ( n668____DOLLAR__3741 ) ? ( n669____DOLLAR__3737 ) : ( n682____DOLLAR__3728 ) ;
assign n684____DOLLAR__3758 =  ( n666____DOLLAR__3756 ) ? ( n667____DOLLAR__3752 ) : ( n683____DOLLAR__3743 ) ;
assign n685____DOLLAR__3773 =  ( n664____DOLLAR__3771 ) ? ( n665____DOLLAR__3767 ) : ( n684____DOLLAR__3758 ) ;
assign n686____DOLLAR__3788 =  ( n662____DOLLAR__3786 ) ? ( n663____DOLLAR__3782 ) : ( n685____DOLLAR__3773 ) ;
assign n687____DOLLAR__3803 =  ( n660____DOLLAR__3801 ) ? ( n661____DOLLAR__3797 ) : ( n686____DOLLAR__3788 ) ;
assign n688____DOLLAR__3818 =  ( n658____DOLLAR__3816 ) ? ( n659____DOLLAR__3812 ) : ( n687____DOLLAR__3803 ) ;
assign n689____DOLLAR__3833 =  ( n656____DOLLAR__3831 ) ? ( n657____DOLLAR__3827 ) : ( n688____DOLLAR__3818 ) ;
assign n690____DOLLAR__3848 =  ( n654____DOLLAR__3846 ) ? ( n655____DOLLAR__3842 ) : ( n689____DOLLAR__3833 ) ;
assign n691____DOLLAR__3863 =  ( n652____DOLLAR__3861 ) ? ( n653____DOLLAR__3857 ) : ( n690____DOLLAR__3848 ) ;
assign n692____DOLLAR__3878 =  ( n650____DOLLAR__3876 ) ? ( n651____DOLLAR__3872 ) : ( n691____DOLLAR__3863 ) ;
assign n693____DOLLAR__3893 =  ( n648____DOLLAR__3891 ) ? ( n649____DOLLAR__3887 ) : ( n692____DOLLAR__3878 ) ;
assign n694____DOLLAR__3649 =  ( ( n643____DOLLAR__3646 ) >> ( 32'd4 ))  ;
assign n695____DOLLAR__3894 =  ( n693____DOLLAR__3893 ) ^ ( n694____DOLLAR__3649 )  ;
assign n696____DOLLAR__3902 = n695____DOLLAR__3894[7:0] ;
assign n697____DOLLAR__3895 = CRC_DAT_IN[55:48] ;
assign n698____DOLLAR__3904 =  ( n696____DOLLAR__3902 ) ^ ( n697____DOLLAR__3895 )  ;
assign n699____DOLLAR__3905 =  ( n698____DOLLAR__3904 ) & ( 8'd15 )  ;
assign n700____DOLLAR__4138 =  ( n699____DOLLAR__3905 ) == ( 8'd15 )  ;
assign n701____DOLLAR__4134 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n702____DOLLAR__4123 =  ( n699____DOLLAR__3905 ) == ( 8'd14 )  ;
assign n703____DOLLAR__4119 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n704____DOLLAR__4108 =  ( n699____DOLLAR__3905 ) == ( 8'd13 )  ;
assign n705____DOLLAR__4104 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n706____DOLLAR__4093 =  ( n699____DOLLAR__3905 ) == ( 8'd12 )  ;
assign n707____DOLLAR__4089 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n708____DOLLAR__4078 =  ( n699____DOLLAR__3905 ) == ( 8'd11 )  ;
assign n709____DOLLAR__4074 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n710____DOLLAR__4063 =  ( n699____DOLLAR__3905 ) == ( 8'd10 )  ;
assign n711____DOLLAR__4059 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n712____DOLLAR__4048 =  ( n699____DOLLAR__3905 ) == ( 8'd9 )  ;
assign n713____DOLLAR__4044 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n714____DOLLAR__4033 =  ( n699____DOLLAR__3905 ) == ( 8'd8 )  ;
assign n715____DOLLAR__4029 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n716____DOLLAR__4018 =  ( n699____DOLLAR__3905 ) == ( 8'd7 )  ;
assign n717____DOLLAR__4014 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n718____DOLLAR__4003 =  ( n699____DOLLAR__3905 ) == ( 8'd6 )  ;
assign n719____DOLLAR__3999 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n720____DOLLAR__3988 =  ( n699____DOLLAR__3905 ) == ( 8'd5 )  ;
assign n721____DOLLAR__3984 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n722____DOLLAR__3973 =  ( n699____DOLLAR__3905 ) == ( 8'd4 )  ;
assign n723____DOLLAR__3969 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n724____DOLLAR__3958 =  ( n699____DOLLAR__3905 ) == ( 8'd3 )  ;
assign n725____DOLLAR__3954 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n726____DOLLAR__3943 =  ( n699____DOLLAR__3905 ) == ( 8'd2 )  ;
assign n727____DOLLAR__3939 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n728____DOLLAR__3928 =  ( n699____DOLLAR__3905 ) == ( 8'd1 )  ;
assign n729____DOLLAR__3924 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n730____DOLLAR__3914 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n731____DOLLAR__3930 =  ( n728____DOLLAR__3928 ) ? ( n729____DOLLAR__3924 ) : ( n730____DOLLAR__3914 ) ;
assign n732____DOLLAR__3945 =  ( n726____DOLLAR__3943 ) ? ( n727____DOLLAR__3939 ) : ( n731____DOLLAR__3930 ) ;
assign n733____DOLLAR__3960 =  ( n724____DOLLAR__3958 ) ? ( n725____DOLLAR__3954 ) : ( n732____DOLLAR__3945 ) ;
assign n734____DOLLAR__3975 =  ( n722____DOLLAR__3973 ) ? ( n723____DOLLAR__3969 ) : ( n733____DOLLAR__3960 ) ;
assign n735____DOLLAR__3990 =  ( n720____DOLLAR__3988 ) ? ( n721____DOLLAR__3984 ) : ( n734____DOLLAR__3975 ) ;
assign n736____DOLLAR__4005 =  ( n718____DOLLAR__4003 ) ? ( n719____DOLLAR__3999 ) : ( n735____DOLLAR__3990 ) ;
assign n737____DOLLAR__4020 =  ( n716____DOLLAR__4018 ) ? ( n717____DOLLAR__4014 ) : ( n736____DOLLAR__4005 ) ;
assign n738____DOLLAR__4035 =  ( n714____DOLLAR__4033 ) ? ( n715____DOLLAR__4029 ) : ( n737____DOLLAR__4020 ) ;
assign n739____DOLLAR__4050 =  ( n712____DOLLAR__4048 ) ? ( n713____DOLLAR__4044 ) : ( n738____DOLLAR__4035 ) ;
assign n740____DOLLAR__4065 =  ( n710____DOLLAR__4063 ) ? ( n711____DOLLAR__4059 ) : ( n739____DOLLAR__4050 ) ;
assign n741____DOLLAR__4080 =  ( n708____DOLLAR__4078 ) ? ( n709____DOLLAR__4074 ) : ( n740____DOLLAR__4065 ) ;
assign n742____DOLLAR__4095 =  ( n706____DOLLAR__4093 ) ? ( n707____DOLLAR__4089 ) : ( n741____DOLLAR__4080 ) ;
assign n743____DOLLAR__4110 =  ( n704____DOLLAR__4108 ) ? ( n705____DOLLAR__4104 ) : ( n742____DOLLAR__4095 ) ;
assign n744____DOLLAR__4125 =  ( n702____DOLLAR__4123 ) ? ( n703____DOLLAR__4119 ) : ( n743____DOLLAR__4110 ) ;
assign n745____DOLLAR__4140 =  ( n700____DOLLAR__4138 ) ? ( n701____DOLLAR__4134 ) : ( n744____DOLLAR__4125 ) ;
assign n746____DOLLAR__3899 =  ( ( n695____DOLLAR__3894 ) >> ( 32'd4 ))  ;
assign n747____DOLLAR__4141 =  ( n745____DOLLAR__4140 ) ^ ( n746____DOLLAR__3899 )  ;
assign n748____DOLLAR__4150 = n747____DOLLAR__4141[7:0] ;
assign n749____DOLLAR__4149 =  ( ( n697____DOLLAR__3895 ) >> ( 8'd4 ))  ;
assign n750____DOLLAR__4152 =  ( n748____DOLLAR__4150 ) ^ ( n749____DOLLAR__4149 )  ;
assign n751____DOLLAR__4153 =  ( n750____DOLLAR__4152 ) & ( 8'd15 )  ;
assign n752____DOLLAR__4386 =  ( n751____DOLLAR__4153 ) == ( 8'd15 )  ;
assign n753____DOLLAR__4382 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n754____DOLLAR__4371 =  ( n751____DOLLAR__4153 ) == ( 8'd14 )  ;
assign n755____DOLLAR__4367 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n756____DOLLAR__4356 =  ( n751____DOLLAR__4153 ) == ( 8'd13 )  ;
assign n757____DOLLAR__4352 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n758____DOLLAR__4341 =  ( n751____DOLLAR__4153 ) == ( 8'd12 )  ;
assign n759____DOLLAR__4337 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n760____DOLLAR__4326 =  ( n751____DOLLAR__4153 ) == ( 8'd11 )  ;
assign n761____DOLLAR__4322 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n762____DOLLAR__4311 =  ( n751____DOLLAR__4153 ) == ( 8'd10 )  ;
assign n763____DOLLAR__4307 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n764____DOLLAR__4296 =  ( n751____DOLLAR__4153 ) == ( 8'd9 )  ;
assign n765____DOLLAR__4292 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n766____DOLLAR__4281 =  ( n751____DOLLAR__4153 ) == ( 8'd8 )  ;
assign n767____DOLLAR__4277 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n768____DOLLAR__4266 =  ( n751____DOLLAR__4153 ) == ( 8'd7 )  ;
assign n769____DOLLAR__4262 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n770____DOLLAR__4251 =  ( n751____DOLLAR__4153 ) == ( 8'd6 )  ;
assign n771____DOLLAR__4247 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n772____DOLLAR__4236 =  ( n751____DOLLAR__4153 ) == ( 8'd5 )  ;
assign n773____DOLLAR__4232 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n774____DOLLAR__4221 =  ( n751____DOLLAR__4153 ) == ( 8'd4 )  ;
assign n775____DOLLAR__4217 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n776____DOLLAR__4206 =  ( n751____DOLLAR__4153 ) == ( 8'd3 )  ;
assign n777____DOLLAR__4202 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n778____DOLLAR__4191 =  ( n751____DOLLAR__4153 ) == ( 8'd2 )  ;
assign n779____DOLLAR__4187 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n780____DOLLAR__4176 =  ( n751____DOLLAR__4153 ) == ( 8'd1 )  ;
assign n781____DOLLAR__4172 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n782____DOLLAR__4162 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n783____DOLLAR__4178 =  ( n780____DOLLAR__4176 ) ? ( n781____DOLLAR__4172 ) : ( n782____DOLLAR__4162 ) ;
assign n784____DOLLAR__4193 =  ( n778____DOLLAR__4191 ) ? ( n779____DOLLAR__4187 ) : ( n783____DOLLAR__4178 ) ;
assign n785____DOLLAR__4208 =  ( n776____DOLLAR__4206 ) ? ( n777____DOLLAR__4202 ) : ( n784____DOLLAR__4193 ) ;
assign n786____DOLLAR__4223 =  ( n774____DOLLAR__4221 ) ? ( n775____DOLLAR__4217 ) : ( n785____DOLLAR__4208 ) ;
assign n787____DOLLAR__4238 =  ( n772____DOLLAR__4236 ) ? ( n773____DOLLAR__4232 ) : ( n786____DOLLAR__4223 ) ;
assign n788____DOLLAR__4253 =  ( n770____DOLLAR__4251 ) ? ( n771____DOLLAR__4247 ) : ( n787____DOLLAR__4238 ) ;
assign n789____DOLLAR__4268 =  ( n768____DOLLAR__4266 ) ? ( n769____DOLLAR__4262 ) : ( n788____DOLLAR__4253 ) ;
assign n790____DOLLAR__4283 =  ( n766____DOLLAR__4281 ) ? ( n767____DOLLAR__4277 ) : ( n789____DOLLAR__4268 ) ;
assign n791____DOLLAR__4298 =  ( n764____DOLLAR__4296 ) ? ( n765____DOLLAR__4292 ) : ( n790____DOLLAR__4283 ) ;
assign n792____DOLLAR__4313 =  ( n762____DOLLAR__4311 ) ? ( n763____DOLLAR__4307 ) : ( n791____DOLLAR__4298 ) ;
assign n793____DOLLAR__4328 =  ( n760____DOLLAR__4326 ) ? ( n761____DOLLAR__4322 ) : ( n792____DOLLAR__4313 ) ;
assign n794____DOLLAR__4343 =  ( n758____DOLLAR__4341 ) ? ( n759____DOLLAR__4337 ) : ( n793____DOLLAR__4328 ) ;
assign n795____DOLLAR__4358 =  ( n756____DOLLAR__4356 ) ? ( n757____DOLLAR__4352 ) : ( n794____DOLLAR__4343 ) ;
assign n796____DOLLAR__4373 =  ( n754____DOLLAR__4371 ) ? ( n755____DOLLAR__4367 ) : ( n795____DOLLAR__4358 ) ;
assign n797____DOLLAR__4388 =  ( n752____DOLLAR__4386 ) ? ( n753____DOLLAR__4382 ) : ( n796____DOLLAR__4373 ) ;
assign n798____DOLLAR__4144 =  ( ( n747____DOLLAR__4141 ) >> ( 32'd4 ))  ;
assign n799____DOLLAR__4389 =  ( n797____DOLLAR__4388 ) ^ ( n798____DOLLAR__4144 )  ;
assign n800____DOLLAR__4397 = n799____DOLLAR__4389[7:0] ;
assign n801____DOLLAR__4390 = CRC_DAT_IN[63:56] ;
assign n802____DOLLAR__4399 =  ( n800____DOLLAR__4397 ) ^ ( n801____DOLLAR__4390 )  ;
assign n803____DOLLAR__4400 =  ( n802____DOLLAR__4399 ) & ( 8'd15 )  ;
assign n804____DOLLAR__4633 =  ( n803____DOLLAR__4400 ) == ( 8'd15 )  ;
assign n805____DOLLAR__4629 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n806____DOLLAR__4618 =  ( n803____DOLLAR__4400 ) == ( 8'd14 )  ;
assign n807____DOLLAR__4614 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n808____DOLLAR__4603 =  ( n803____DOLLAR__4400 ) == ( 8'd13 )  ;
assign n809____DOLLAR__4599 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n810____DOLLAR__4588 =  ( n803____DOLLAR__4400 ) == ( 8'd12 )  ;
assign n811____DOLLAR__4584 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n812____DOLLAR__4573 =  ( n803____DOLLAR__4400 ) == ( 8'd11 )  ;
assign n813____DOLLAR__4569 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n814____DOLLAR__4558 =  ( n803____DOLLAR__4400 ) == ( 8'd10 )  ;
assign n815____DOLLAR__4554 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n816____DOLLAR__4543 =  ( n803____DOLLAR__4400 ) == ( 8'd9 )  ;
assign n817____DOLLAR__4539 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n818____DOLLAR__4528 =  ( n803____DOLLAR__4400 ) == ( 8'd8 )  ;
assign n819____DOLLAR__4524 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n820____DOLLAR__4513 =  ( n803____DOLLAR__4400 ) == ( 8'd7 )  ;
assign n821____DOLLAR__4509 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n822____DOLLAR__4498 =  ( n803____DOLLAR__4400 ) == ( 8'd6 )  ;
assign n823____DOLLAR__4494 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n824____DOLLAR__4483 =  ( n803____DOLLAR__4400 ) == ( 8'd5 )  ;
assign n825____DOLLAR__4479 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n826____DOLLAR__4468 =  ( n803____DOLLAR__4400 ) == ( 8'd4 )  ;
assign n827____DOLLAR__4464 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n828____DOLLAR__4453 =  ( n803____DOLLAR__4400 ) == ( 8'd3 )  ;
assign n829____DOLLAR__4449 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n830____DOLLAR__4438 =  ( n803____DOLLAR__4400 ) == ( 8'd2 )  ;
assign n831____DOLLAR__4434 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n832____DOLLAR__4423 =  ( n803____DOLLAR__4400 ) == ( 8'd1 )  ;
assign n833____DOLLAR__4419 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n834____DOLLAR__4409 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n835____DOLLAR__4425 =  ( n832____DOLLAR__4423 ) ? ( n833____DOLLAR__4419 ) : ( n834____DOLLAR__4409 ) ;
assign n836____DOLLAR__4440 =  ( n830____DOLLAR__4438 ) ? ( n831____DOLLAR__4434 ) : ( n835____DOLLAR__4425 ) ;
assign n837____DOLLAR__4455 =  ( n828____DOLLAR__4453 ) ? ( n829____DOLLAR__4449 ) : ( n836____DOLLAR__4440 ) ;
assign n838____DOLLAR__4470 =  ( n826____DOLLAR__4468 ) ? ( n827____DOLLAR__4464 ) : ( n837____DOLLAR__4455 ) ;
assign n839____DOLLAR__4485 =  ( n824____DOLLAR__4483 ) ? ( n825____DOLLAR__4479 ) : ( n838____DOLLAR__4470 ) ;
assign n840____DOLLAR__4500 =  ( n822____DOLLAR__4498 ) ? ( n823____DOLLAR__4494 ) : ( n839____DOLLAR__4485 ) ;
assign n841____DOLLAR__4515 =  ( n820____DOLLAR__4513 ) ? ( n821____DOLLAR__4509 ) : ( n840____DOLLAR__4500 ) ;
assign n842____DOLLAR__4530 =  ( n818____DOLLAR__4528 ) ? ( n819____DOLLAR__4524 ) : ( n841____DOLLAR__4515 ) ;
assign n843____DOLLAR__4545 =  ( n816____DOLLAR__4543 ) ? ( n817____DOLLAR__4539 ) : ( n842____DOLLAR__4530 ) ;
assign n844____DOLLAR__4560 =  ( n814____DOLLAR__4558 ) ? ( n815____DOLLAR__4554 ) : ( n843____DOLLAR__4545 ) ;
assign n845____DOLLAR__4575 =  ( n812____DOLLAR__4573 ) ? ( n813____DOLLAR__4569 ) : ( n844____DOLLAR__4560 ) ;
assign n846____DOLLAR__4590 =  ( n810____DOLLAR__4588 ) ? ( n811____DOLLAR__4584 ) : ( n845____DOLLAR__4575 ) ;
assign n847____DOLLAR__4605 =  ( n808____DOLLAR__4603 ) ? ( n809____DOLLAR__4599 ) : ( n846____DOLLAR__4590 ) ;
assign n848____DOLLAR__4620 =  ( n806____DOLLAR__4618 ) ? ( n807____DOLLAR__4614 ) : ( n847____DOLLAR__4605 ) ;
assign n849____DOLLAR__4635 =  ( n804____DOLLAR__4633 ) ? ( n805____DOLLAR__4629 ) : ( n848____DOLLAR__4620 ) ;
assign n850____DOLLAR__4394 =  ( ( n799____DOLLAR__4389 ) >> ( 32'd4 ))  ;
assign n851____DOLLAR__4636 =  ( n849____DOLLAR__4635 ) ^ ( n850____DOLLAR__4394 )  ;
assign n852____DOLLAR__4645 = n851____DOLLAR__4636[7:0] ;
assign n853____DOLLAR__4644 =  ( ( n801____DOLLAR__4390 ) >> ( 8'd4 ))  ;
assign n854____DOLLAR__4647 =  ( n852____DOLLAR__4645 ) ^ ( n853____DOLLAR__4644 )  ;
assign n855____DOLLAR__4648 =  ( n854____DOLLAR__4647 ) & ( 8'd15 )  ;
assign n856____DOLLAR__4881 =  ( n855____DOLLAR__4648 ) == ( 8'd15 )  ;
assign n857____DOLLAR__4877 =  { ( 16'd48573 ) , ( 16'd61980 ) }  ;
assign n858____DOLLAR__4866 =  ( n855____DOLLAR__4648 ) == ( 8'd14 )  ;
assign n859____DOLLAR__4862 =  { ( 16'd40970 ) , ( 16'd57976 ) }  ;
assign n860____DOLLAR__4851 =  ( n855____DOLLAR__4648 ) == ( 8'd13 )  ;
assign n861____DOLLAR__4847 =  { ( 16'd34515 ) , ( 16'd53972 ) }  ;
assign n862____DOLLAR__4836 =  ( n855____DOLLAR__4648 ) == ( 8'd12 )  ;
assign n863____DOLLAR__4832 =  { ( 16'd39780 ) , ( 16'd49840 ) }  ;
assign n864____DOLLAR__4821 =  ( n855____DOLLAR__4648 ) == ( 8'd11 )  ;
assign n865____DOLLAR__4817 =  { ( 16'd52065 ) , ( 16'd45964 ) }  ;
assign n866____DOLLAR__4806 =  ( n855____DOLLAR__4648 ) == ( 8'd10 )  ;
assign n867____DOLLAR__4802 =  { ( 16'd54998 ) , ( 16'd41960 ) }  ;
assign n868____DOLLAR__4791 =  ( n855____DOLLAR__4648 ) == ( 8'd9 )  ;
assign n869____DOLLAR__4787 =  { ( 16'd61455 ) , ( 16'd37700 ) }  ;
assign n870____DOLLAR__4776 =  ( n855____DOLLAR__4648 ) == ( 8'd8 )  ;
assign n871____DOLLAR__4772 =  { ( 16'd60856 ) , ( 16'd33568 ) }  ;
assign n872____DOLLAR__4761 =  ( n855____DOLLAR__4648 ) == ( 8'd7 )  ;
assign n873____DOLLAR__4757 =  { ( 16'd20485 ) , ( 16'd28988 ) }  ;
assign n874____DOLLAR__4746 =  ( n855____DOLLAR__4648 ) == ( 8'd6 )  ;
assign n875____DOLLAR__4742 =  { ( 16'd19890 ) , ( 16'd24920 ) }  ;
assign n876____DOLLAR__4731 =  ( n855____DOLLAR__4648 ) == ( 8'd5 )  ;
assign n877____DOLLAR__4727 =  { ( 16'd27499 ) , ( 16'd20980 ) }  ;
assign n878____DOLLAR__4716 =  ( n855____DOLLAR__4648 ) == ( 8'd4 )  ;
assign n879____DOLLAR__4712 =  { ( 16'd30428 ) , ( 16'd16784 ) }  ;
assign n880____DOLLAR__4701 =  ( n855____DOLLAR__4648 ) == ( 8'd3 )  ;
assign n881____DOLLAR__4697 =  { ( 16'd9945 ) , ( 16'd12460 ) }  ;
assign n882____DOLLAR__4686 =  ( n855____DOLLAR__4648 ) == ( 8'd2 )  ;
assign n883____DOLLAR__4682 =  { ( 16'd15214 ) , ( 16'd8392 ) }  ;
assign n884____DOLLAR__4671 =  ( n855____DOLLAR__4648 ) == ( 8'd1 )  ;
assign n885____DOLLAR__4667 =  { ( 16'd7607 ) , ( 16'd4196 ) }  ;
assign n886____DOLLAR__4657 =  { ( 16'd0 ) , ( 16'd0 ) }  ;
assign n887____DOLLAR__4673 =  ( n884____DOLLAR__4671 ) ? ( n885____DOLLAR__4667 ) : ( n886____DOLLAR__4657 ) ;
assign n888____DOLLAR__4688 =  ( n882____DOLLAR__4686 ) ? ( n883____DOLLAR__4682 ) : ( n887____DOLLAR__4673 ) ;
assign n889____DOLLAR__4703 =  ( n880____DOLLAR__4701 ) ? ( n881____DOLLAR__4697 ) : ( n888____DOLLAR__4688 ) ;
assign n890____DOLLAR__4718 =  ( n878____DOLLAR__4716 ) ? ( n879____DOLLAR__4712 ) : ( n889____DOLLAR__4703 ) ;
assign n891____DOLLAR__4733 =  ( n876____DOLLAR__4731 ) ? ( n877____DOLLAR__4727 ) : ( n890____DOLLAR__4718 ) ;
assign n892____DOLLAR__4748 =  ( n874____DOLLAR__4746 ) ? ( n875____DOLLAR__4742 ) : ( n891____DOLLAR__4733 ) ;
assign n893____DOLLAR__4763 =  ( n872____DOLLAR__4761 ) ? ( n873____DOLLAR__4757 ) : ( n892____DOLLAR__4748 ) ;
assign n894____DOLLAR__4778 =  ( n870____DOLLAR__4776 ) ? ( n871____DOLLAR__4772 ) : ( n893____DOLLAR__4763 ) ;
assign n895____DOLLAR__4793 =  ( n868____DOLLAR__4791 ) ? ( n869____DOLLAR__4787 ) : ( n894____DOLLAR__4778 ) ;
assign n896____DOLLAR__4808 =  ( n866____DOLLAR__4806 ) ? ( n867____DOLLAR__4802 ) : ( n895____DOLLAR__4793 ) ;
assign n897____DOLLAR__4823 =  ( n864____DOLLAR__4821 ) ? ( n865____DOLLAR__4817 ) : ( n896____DOLLAR__4808 ) ;
assign n898____DOLLAR__4838 =  ( n862____DOLLAR__4836 ) ? ( n863____DOLLAR__4832 ) : ( n897____DOLLAR__4823 ) ;
assign n899____DOLLAR__4853 =  ( n860____DOLLAR__4851 ) ? ( n861____DOLLAR__4847 ) : ( n898____DOLLAR__4838 ) ;
assign n900____DOLLAR__4868 =  ( n858____DOLLAR__4866 ) ? ( n859____DOLLAR__4862 ) : ( n899____DOLLAR__4853 ) ;
assign n901____DOLLAR__4883 =  ( n856____DOLLAR__4881 ) ? ( n857____DOLLAR__4877 ) : ( n900____DOLLAR__4868 ) ;
assign n902____DOLLAR__4639 =  ( ( n851____DOLLAR__4636 ) >> ( 32'd4 ))  ;
assign n903____DOLLAR__4884 =  ( n901____DOLLAR__4883 ) ^ ( n902____DOLLAR__4639 )  ;
assign n904____DOLLAR__4915 =  ( ( n903____DOLLAR__4884 ) >> ( 32'd24 ))  ;
assign n905____DOLLAR__4916 =  ( n904____DOLLAR__4915 ) & ( 32'd255 )  ;
assign n906____DOLLAR__4909 =  ( ( n903____DOLLAR__4884 ) >> ( 32'd8 ))  ;
assign n907____DOLLAR__4910 =  ( n906____DOLLAR__4909 ) & ( 32'd65280 )  ;
assign n908____DOLLAR__4917 =  ( n905____DOLLAR__4916 ) | ( n907____DOLLAR__4910 )  ;
assign n909____DOLLAR__4903 =  ( n903____DOLLAR__4884 ) << ( 32'd8 )  ;
assign n910____DOLLAR__4904 =  ( n909____DOLLAR__4903 ) & ( 32'd16711680 )  ;
assign n911____DOLLAR__4918 =  ( n908____DOLLAR__4917 ) | ( n910____DOLLAR__4904 )  ;
assign n912____DOLLAR__4897 =  ( n903____DOLLAR__4884 ) << ( 32'd24 )  ;
assign n913____DOLLAR__4893 =  { ( 16'd65280 ) , ( 16'd0 ) }  ;
assign n914____DOLLAR__4898 =  ( n912____DOLLAR__4897 ) & ( n913____DOLLAR__4893 )  ;
assign n915____DOLLAR__4919 =  ( n911____DOLLAR__4918 ) | ( n914____DOLLAR__4898 )  ;
assign n916____DOLLAR__4920 = ~ ( n915____DOLLAR__4919 ) ;
assign n917____DOLLAR__4952 =  ( ( n916____DOLLAR__4920 ) >> ( 32'd24 ))  ;
assign n918____DOLLAR__4953 =  ( n917____DOLLAR__4952 ) & ( 32'd255 )  ;
assign n919____DOLLAR__4946 =  ( ( n916____DOLLAR__4920 ) >> ( 32'd8 ))  ;
assign n920____DOLLAR__4947 =  ( n919____DOLLAR__4946 ) & ( 32'd65280 )  ;
assign n921____DOLLAR__4954 =  ( n918____DOLLAR__4953 ) | ( n920____DOLLAR__4947 )  ;
assign n922____DOLLAR__4940 =  ( n916____DOLLAR__4920 ) << ( 32'd8 )  ;
assign n923____DOLLAR__4941 =  ( n922____DOLLAR__4940 ) & ( 32'd16711680 )  ;
assign n924____DOLLAR__4955 =  ( n921____DOLLAR__4954 ) | ( n923____DOLLAR__4941 )  ;
assign n925____DOLLAR__4934 =  ( n916____DOLLAR__4920 ) << ( 32'd24 )  ;
assign n926____DOLLAR__4930 =  { ( 16'd65280 ) , ( 16'd0 ) }  ;
assign n927____DOLLAR__4935 =  ( n925____DOLLAR__4934 ) & ( n926____DOLLAR__4930 )  ;
assign n928____DOLLAR__4956 =  ( n924____DOLLAR__4955 ) | ( n927____DOLLAR__4935 )  ;
assign n929____DOLLAR__5089 = n61____DOLLAR__654[7:0] ;
assign n930____DOLLAR__5095 =  { ( n928____DOLLAR__4956 ) , ( n929____DOLLAR__5089 ) }  ;
assign n931____DOLLAR__5103 =  { ( 24'd460797 ) , ( n930____DOLLAR__5095 ) }  ;
assign n932____DOLLAR__5349 =  ( n69____DOLLAR__687 ) == ( 3'd2 )  ;
assign n933____DOLLAR__5105 = n61____DOLLAR__654[15:0] ;
assign n934____DOLLAR__5111 =  { ( n928____DOLLAR__4956 ) , ( n933____DOLLAR__5105 ) }  ;
assign n935____DOLLAR__5119 =  { ( 16'd2045 ) , ( n934____DOLLAR__5111 ) }  ;
assign n936____DOLLAR__5344 =  ( n69____DOLLAR__687 ) == ( 3'd3 )  ;
assign n937____DOLLAR__5121 = n61____DOLLAR__654[23:0] ;
assign n938____DOLLAR__5127 =  { ( n928____DOLLAR__4956 ) , ( n937____DOLLAR__5121 ) }  ;
assign n939____DOLLAR__5135 =  { ( 8'd253 ) , ( n938____DOLLAR__5127 ) }  ;
assign n940____DOLLAR__5339 =  ( n69____DOLLAR__687 ) == ( 3'd4 )  ;
assign n941____DOLLAR__5137 = n61____DOLLAR__654[31:0] ;
assign n942____DOLLAR__5143 =  { ( n928____DOLLAR__4956 ) , ( n941____DOLLAR__5137 ) }  ;
assign n943____DOLLAR__5334 =  ( n69____DOLLAR__687 ) == ( 3'd5 )  ;
assign n944____DOLLAR__5147 = n928____DOLLAR__4956[23:0] ;
assign n945____DOLLAR__5145 = n61____DOLLAR__654[39:0] ;
assign n946____DOLLAR__5153 =  { ( n944____DOLLAR__5147 ) , ( n945____DOLLAR__5145 ) }  ;
assign n947____DOLLAR__5329 =  ( n69____DOLLAR__687 ) == ( 3'd6 )  ;
assign n948____DOLLAR__5157 = n928____DOLLAR__4956[15:0] ;
assign n949____DOLLAR__5155 = n61____DOLLAR__654[47:0] ;
assign n950____DOLLAR__5163 =  { ( n948____DOLLAR__5157 ) , ( n949____DOLLAR__5155 ) }  ;
assign n951____DOLLAR__5167 = n928____DOLLAR__4956[7:0] ;
assign n952____DOLLAR__5165 = n61____DOLLAR__654[55:0] ;
assign n953____DOLLAR__5173 =  { ( n951____DOLLAR__5167 ) , ( n952____DOLLAR__5165 ) }  ;
assign n954____DOLLAR__5331 =  ( n947____DOLLAR__5329 ) ? ( n950____DOLLAR__5163 ) : ( n953____DOLLAR__5173 ) ;
assign n955____DOLLAR__5336 =  ( n943____DOLLAR__5334 ) ? ( n946____DOLLAR__5153 ) : ( n954____DOLLAR__5331 ) ;
assign n956____DOLLAR__5341 =  ( n940____DOLLAR__5339 ) ? ( n942____DOLLAR__5143 ) : ( n955____DOLLAR__5336 ) ;
assign n957____DOLLAR__5346 =  ( n936____DOLLAR__5344 ) ? ( n939____DOLLAR__5135 ) : ( n956____DOLLAR__5341 ) ;
assign n958____DOLLAR__5351 =  ( n932____DOLLAR__5349 ) ? ( n935____DOLLAR__5119 ) : ( n957____DOLLAR__5346 ) ;
assign n959____DOLLAR__5356 =  ( n71____DOLLAR__5354 ) ? ( n931____DOLLAR__5103 ) : ( n958____DOLLAR__5351 ) ;
assign n960____DOLLAR__5361 =  ( n70____DOLLAR__5359 ) ? ( n61____DOLLAR__654 ) : ( n959____DOLLAR__5356 ) ;
assign n961____DOLLAR__5324 =  $signed( TX_WCNT ) < $signed( 16'd0 )  ;
assign n962____DOLLAR__5319 =  ( n69____DOLLAR__687 ) == ( 3'd0 )  ;
assign n963____DOLLAR__5181 =  { ( 32'd117901309 ) , ( n928____DOLLAR__4956 ) }  ;
assign n964____DOLLAR__5314 =  ( n69____DOLLAR__687 ) == ( 3'd1 )  ;
assign n965____DOLLAR__5191 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n966____DOLLAR__5309 =  ( n69____DOLLAR__687 ) == ( 3'd2 )  ;
assign n967____DOLLAR__5201 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n968____DOLLAR__5304 =  ( n69____DOLLAR__687 ) == ( 3'd3 )  ;
assign n969____DOLLAR__5211 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n970____DOLLAR__5299 =  ( n69____DOLLAR__687 ) == ( 3'd4 )  ;
assign n971____DOLLAR__5221 =  { ( 32'd117901063 ) , ( 32'd117901309 ) }  ;
assign n972____DOLLAR__5294 =  ( n69____DOLLAR__687 ) == ( 3'd5 )  ;
assign n973____DOLLAR__5233 =  { ( 32'd117901063 ) , ( 24'd460797 ) }  ;
assign n974____DOLLAR__5223 = n928____DOLLAR__4956[31:24] ;
assign n975____DOLLAR__5239 =  { ( n973____DOLLAR__5233 ) , ( n974____DOLLAR__5223 ) }  ;
assign n976____DOLLAR__5289 =  ( n69____DOLLAR__687 ) == ( 3'd6 )  ;
assign n977____DOLLAR__5251 =  { ( 32'd117901063 ) , ( 16'd2045 ) }  ;
assign n978____DOLLAR__5241 = n928____DOLLAR__4956[31:16] ;
assign n979____DOLLAR__5257 =  { ( n977____DOLLAR__5251 ) , ( n978____DOLLAR__5241 ) }  ;
assign n980____DOLLAR__5269 =  { ( 32'd117901063 ) , ( 8'd253 ) }  ;
assign n981____DOLLAR__5259 = n928____DOLLAR__4956[31:8] ;
assign n982____DOLLAR__5275 =  { ( n980____DOLLAR__5269 ) , ( n981____DOLLAR__5259 ) }  ;
assign n983____DOLLAR__5291 =  ( n976____DOLLAR__5289 ) ? ( n979____DOLLAR__5257 ) : ( n982____DOLLAR__5275 ) ;
assign n984____DOLLAR__5296 =  ( n972____DOLLAR__5294 ) ? ( n975____DOLLAR__5239 ) : ( n983____DOLLAR__5291 ) ;
assign n985____DOLLAR__5301 =  ( n970____DOLLAR__5299 ) ? ( n971____DOLLAR__5221 ) : ( n984____DOLLAR__5296 ) ;
assign n986____DOLLAR__5306 =  ( n968____DOLLAR__5304 ) ? ( n969____DOLLAR__5211 ) : ( n985____DOLLAR__5301 ) ;
assign n987____DOLLAR__5311 =  ( n966____DOLLAR__5309 ) ? ( n967____DOLLAR__5201 ) : ( n986____DOLLAR__5306 ) ;
assign n988____DOLLAR__5316 =  ( n964____DOLLAR__5314 ) ? ( n965____DOLLAR__5191 ) : ( n987____DOLLAR__5311 ) ;
assign n989____DOLLAR__5321 =  ( n962____DOLLAR__5319 ) ? ( n963____DOLLAR__5181 ) : ( n988____DOLLAR__5316 ) ;
assign n990____DOLLAR__5285 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n991____DOLLAR__5326 =  ( n961____DOLLAR__5324 ) ? ( n989____DOLLAR__5321 ) : ( n990____DOLLAR__5285 ) ;
assign n992____DOLLAR__5377 =  ( n68____DOLLAR__5376 ) ? ( n960____DOLLAR__5361 ) : ( n991____DOLLAR__5326 ) ;
assign n993____DOLLAR__5382 =  ( n29____DOLLAR__5380 ) ? ( n61____DOLLAR__654 ) : ( n992____DOLLAR__5377 ) ;
assign n994____DOLLAR__5086 =  $signed( TX_WCNT ) > $signed( 16'd7 )  ;
assign n995____DOLLAR__5075 =  ( TX_WCNT ) == ( 16'd0 )  ;
assign n996____DOLLAR__5077 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n997____DOLLAR__5079 =  ( n995____DOLLAR__5075 ) | ( n996____DOLLAR__5077 )  ;
assign n998____DOLLAR__5068 =  ( TX_WCNT ) == ( 16'd7 )  ;
assign n999____DOLLAR__5070 =  $signed( TX_WCNT ) < $signed( 16'd7 )  ;
assign n1000____DOLLAR__5072 =  ( n998____DOLLAR__5068 ) | ( n999____DOLLAR__5070 )  ;
assign n1001____DOLLAR__5080 =  ( n997____DOLLAR__5079 ) & (n1000____DOLLAR__5072 )  ;
assign n1002____DOLLAR__5063 =  ( n69____DOLLAR__687 ) == ( 3'd0 )  ;
assign n1003____DOLLAR__5056 =  ( n69____DOLLAR__687 ) == ( 3'd1 )  ;
assign n1004____DOLLAR__5049 =  ( n69____DOLLAR__687 ) == ( 3'd2 )  ;
assign n1005____DOLLAR__5042 =  ( n69____DOLLAR__687 ) == ( 3'd3 )  ;
assign n1006____DOLLAR__5035 =  ( n69____DOLLAR__687 ) == ( 3'd4 )  ;
assign n1007____DOLLAR__5028 =  ( n69____DOLLAR__687 ) == ( 3'd5 )  ;
assign n1008____DOLLAR__5021 =  ( n69____DOLLAR__687 ) == ( 3'd6 )  ;
assign n1009____DOLLAR__5023 =  ( n1008____DOLLAR__5021 ) ? ( 8'd0 ) : ( 8'd0 ) ;
assign n1010____DOLLAR__5030 =  ( n1007____DOLLAR__5028 ) ? ( 8'd0 ) : ( n1009____DOLLAR__5023 ) ;
assign n1011____DOLLAR__5037 =  ( n1006____DOLLAR__5035 ) ? ( 8'd0 ) : ( n1010____DOLLAR__5030 ) ;
assign n1012____DOLLAR__5044 =  ( n1005____DOLLAR__5042 ) ? ( 8'd128 ) : ( n1011____DOLLAR__5037 ) ;
assign n1013____DOLLAR__5051 =  ( n1004____DOLLAR__5049 ) ? ( 8'd192 ) : ( n1012____DOLLAR__5044 ) ;
assign n1014____DOLLAR__5058 =  ( n1003____DOLLAR__5056 ) ? ( 8'd224 ) : ( n1013____DOLLAR__5051 ) ;
assign n1015____DOLLAR__5065 =  ( n1002____DOLLAR__5063 ) ? ( 8'd0 ) : ( n1014____DOLLAR__5058 ) ;
assign n1016____DOLLAR__5012 =  $signed( TX_WCNT ) < $signed( 16'd0 )  ;
assign n1017____DOLLAR__5007 =  ( n69____DOLLAR__687 ) == ( 3'd0 )  ;
assign n1018____DOLLAR__5000 =  ( n69____DOLLAR__687 ) == ( 3'd1 )  ;
assign n1019____DOLLAR__4993 =  ( n69____DOLLAR__687 ) == ( 3'd2 )  ;
assign n1020____DOLLAR__4986 =  ( n69____DOLLAR__687 ) == ( 3'd3 )  ;
assign n1021____DOLLAR__4979 =  ( n69____DOLLAR__687 ) == ( 3'd4 )  ;
assign n1022____DOLLAR__4972 =  ( n69____DOLLAR__687 ) == ( 3'd5 )  ;
assign n1023____DOLLAR__4965 =  ( n69____DOLLAR__687 ) == ( 3'd6 )  ;
assign n1024____DOLLAR__4967 =  ( n1023____DOLLAR__4965 ) ? ( 8'd252 ) : ( 8'd248 ) ;
assign n1025____DOLLAR__4974 =  ( n1022____DOLLAR__4972 ) ? ( 8'd254 ) : ( n1024____DOLLAR__4967 ) ;
assign n1026____DOLLAR__4981 =  ( n1021____DOLLAR__4979 ) ? ( 8'd255 ) : ( n1025____DOLLAR__4974 ) ;
assign n1027____DOLLAR__4988 =  ( n1020____DOLLAR__4986 ) ? ( 8'd255 ) : ( n1026____DOLLAR__4981 ) ;
assign n1028____DOLLAR__4995 =  ( n1019____DOLLAR__4993 ) ? ( 8'd255 ) : ( n1027____DOLLAR__4988 ) ;
assign n1029____DOLLAR__5002 =  ( n1018____DOLLAR__5000 ) ? ( 8'd255 ) : ( n1028____DOLLAR__4995 ) ;
assign n1030____DOLLAR__5009 =  ( n1017____DOLLAR__5007 ) ? ( 8'd240 ) : ( n1029____DOLLAR__5002 ) ;
assign n1031____DOLLAR__5014 =  ( n1016____DOLLAR__5012 ) ? ( n1030____DOLLAR__5009 ) : ( 8'd255 ) ;
assign n1032____DOLLAR__5081 =  ( n1001____DOLLAR__5080 ) ? ( n1015____DOLLAR__5065 ) : ( n1031____DOLLAR__5014 ) ;
assign n1033____DOLLAR__5088 =  ( n994____DOLLAR__5086 ) ? ( 8'd0 ) : ( n1032____DOLLAR__5081 ) ;
assign n1034____DOLLAR__685 =  ( TX_WCNT ) == ( TX_WCNT_INI )  ;
assign n1035____DOLLAR__920 =  ( n69____DOLLAR__687 ) == ( 3'd0 )  ;
assign n1036____DOLLAR__915 =  ( n69____DOLLAR__687 ) == ( 3'd1 )  ;
assign n1037____DOLLAR__905 = n61____DOLLAR__654[7:0] ;
assign n1038____DOLLAR__903 =  { ( 32'd0 ) , ( 24'd0 ) }  ;
assign n1039____DOLLAR__911 =  { ( n1037____DOLLAR__905 ) , ( n1038____DOLLAR__903 ) }  ;
assign n1040____DOLLAR__892 =  ( n69____DOLLAR__687 ) == ( 3'd2 )  ;
assign n1041____DOLLAR__882 = n61____DOLLAR__654[15:0] ;
assign n1042____DOLLAR__880 =  { ( 32'd0 ) , ( 16'd0 ) }  ;
assign n1043____DOLLAR__888 =  { ( n1041____DOLLAR__882 ) , ( n1042____DOLLAR__880 ) }  ;
assign n1044____DOLLAR__869 =  ( n69____DOLLAR__687 ) == ( 3'd3 )  ;
assign n1045____DOLLAR__859 = n61____DOLLAR__654[23:0] ;
assign n1046____DOLLAR__857 =  { ( 32'd0 ) , ( 8'd0 ) }  ;
assign n1047____DOLLAR__865 =  { ( n1045____DOLLAR__859 ) , ( n1046____DOLLAR__857 ) }  ;
assign n1048____DOLLAR__846 =  ( n69____DOLLAR__687 ) == ( 3'd4 )  ;
assign n1049____DOLLAR__836 = n61____DOLLAR__654[31:0] ;
assign n1050____DOLLAR__842 =  { ( n1049____DOLLAR__836 ) , ( 32'd0 ) }  ;
assign n1051____DOLLAR__831 =  ( n69____DOLLAR__687 ) == ( 3'd5 )  ;
assign n1052____DOLLAR__821 = n61____DOLLAR__654[39:0] ;
assign n1053____DOLLAR__827 =  { ( n1052____DOLLAR__821 ) , ( 24'd0 ) }  ;
assign n1054____DOLLAR__816 =  ( n69____DOLLAR__687 ) == ( 3'd6 )  ;
assign n1055____DOLLAR__806 = n61____DOLLAR__654[47:0] ;
assign n1056____DOLLAR__812 =  { ( n1055____DOLLAR__806 ) , ( 16'd0 ) }  ;
assign n1057____DOLLAR__796 = n61____DOLLAR__654[55:0] ;
assign n1058____DOLLAR__802 =  { ( n1057____DOLLAR__796 ) , ( 8'd0 ) }  ;
assign n1059____DOLLAR__818 =  ( n1054____DOLLAR__816 ) ? ( n1056____DOLLAR__812 ) : ( n1058____DOLLAR__802 ) ;
assign n1060____DOLLAR__833 =  ( n1051____DOLLAR__831 ) ? ( n1053____DOLLAR__827 ) : ( n1059____DOLLAR__818 ) ;
assign n1061____DOLLAR__848 =  ( n1048____DOLLAR__846 ) ? ( n1050____DOLLAR__842 ) : ( n1060____DOLLAR__833 ) ;
assign n1062____DOLLAR__871 =  ( n1044____DOLLAR__869 ) ? ( n1047____DOLLAR__865 ) : ( n1061____DOLLAR__848 ) ;
assign n1063____DOLLAR__894 =  ( n1040____DOLLAR__892 ) ? ( n1043____DOLLAR__888 ) : ( n1062____DOLLAR__871 ) ;
assign n1064____DOLLAR__917 =  ( n1036____DOLLAR__915 ) ? ( n1039____DOLLAR__911 ) : ( n1063____DOLLAR__894 ) ;
assign n1065____DOLLAR__922 =  ( n1035____DOLLAR__920 ) ? ( n61____DOLLAR__654 ) : ( n1064____DOLLAR__917 ) ;
assign n1066____DOLLAR__791 =  ( n69____DOLLAR__687 ) == ( 3'd0 )  ;
assign n1067____DOLLAR__786 =  ( n69____DOLLAR__687 ) == ( 3'd1 )  ;
assign n1068____DOLLAR__776 = n61____DOLLAR__654[7:0] ;
assign n1069____DOLLAR__774 = TX_BUF[63:8] ;
assign n1070____DOLLAR__782 =  { ( n1068____DOLLAR__776 ) , ( n1069____DOLLAR__774 ) }  ;
assign n1071____DOLLAR__771 =  ( n69____DOLLAR__687 ) == ( 3'd2 )  ;
assign n1072____DOLLAR__761 = n61____DOLLAR__654[15:0] ;
assign n1073____DOLLAR__759 = TX_BUF[63:16] ;
assign n1074____DOLLAR__767 =  { ( n1072____DOLLAR__761 ) , ( n1073____DOLLAR__759 ) }  ;
assign n1075____DOLLAR__756 =  ( n69____DOLLAR__687 ) == ( 3'd3 )  ;
assign n1076____DOLLAR__746 = n61____DOLLAR__654[23:0] ;
assign n1077____DOLLAR__744 = TX_BUF[63:24] ;
assign n1078____DOLLAR__752 =  { ( n1076____DOLLAR__746 ) , ( n1077____DOLLAR__744 ) }  ;
assign n1079____DOLLAR__741 =  ( n69____DOLLAR__687 ) == ( 3'd4 )  ;
assign n1080____DOLLAR__731 = n61____DOLLAR__654[31:0] ;
assign n1081____DOLLAR__729 = TX_BUF[63:32] ;
assign n1082____DOLLAR__737 =  { ( n1080____DOLLAR__731 ) , ( n1081____DOLLAR__729 ) }  ;
assign n1083____DOLLAR__726 =  ( n69____DOLLAR__687 ) == ( 3'd5 )  ;
assign n1084____DOLLAR__716 = n61____DOLLAR__654[39:0] ;
assign n1085____DOLLAR__714 = TX_BUF[63:40] ;
assign n1086____DOLLAR__722 =  { ( n1084____DOLLAR__716 ) , ( n1085____DOLLAR__714 ) }  ;
assign n1087____DOLLAR__711 =  ( n69____DOLLAR__687 ) == ( 3'd6 )  ;
assign n1088____DOLLAR__701 = n61____DOLLAR__654[47:0] ;
assign n1089____DOLLAR__699 = TX_BUF[63:48] ;
assign n1090____DOLLAR__707 =  { ( n1088____DOLLAR__701 ) , ( n1089____DOLLAR__699 ) }  ;
assign n1091____DOLLAR__691 = n61____DOLLAR__654[55:0] ;
assign n1092____DOLLAR__689 = TX_BUF[63:56] ;
assign n1093____DOLLAR__697 =  { ( n1091____DOLLAR__691 ) , ( n1092____DOLLAR__689 ) }  ;
assign n1094____DOLLAR__713 =  ( n1087____DOLLAR__711 ) ? ( n1090____DOLLAR__707 ) : ( n1093____DOLLAR__697 ) ;
assign n1095____DOLLAR__728 =  ( n1083____DOLLAR__726 ) ? ( n1086____DOLLAR__722 ) : ( n1094____DOLLAR__713 ) ;
assign n1096____DOLLAR__743 =  ( n1079____DOLLAR__741 ) ? ( n1082____DOLLAR__737 ) : ( n1095____DOLLAR__728 ) ;
assign n1097____DOLLAR__758 =  ( n1075____DOLLAR__756 ) ? ( n1078____DOLLAR__752 ) : ( n1096____DOLLAR__743 ) ;
assign n1098____DOLLAR__773 =  ( n1071____DOLLAR__771 ) ? ( n1074____DOLLAR__767 ) : ( n1097____DOLLAR__758 ) ;
assign n1099____DOLLAR__788 =  ( n1067____DOLLAR__786 ) ? ( n1070____DOLLAR__782 ) : ( n1098____DOLLAR__773 ) ;
assign n1100____DOLLAR__793 =  ( n1066____DOLLAR__791 ) ? ( n61____DOLLAR__654 ) : ( n1099____DOLLAR__788 ) ;
assign n1101____DOLLAR__923 =  ( n1034____DOLLAR__685 ) ? ( n1065____DOLLAR__922 ) : ( n1100____DOLLAR__793 ) ;
always @(posedge clk) begin
   if(rst) begin
       TXFIFO_FULL <= TXFIFO_FULL_randinit ;
       TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD_randinit ;
       TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR_randinit ;
       TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR_randinit ;
       TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT_randinit ;
       TXFIFO_RD_EN <= TXFIFO_RD_EN_randinit ;
       TX_STATE <= TX_STATE_randinit ;
       TX_STATE_ENCAP <= TX_STATE_ENCAP_randinit ;
       TX_B2B_CNTR <= TX_B2B_CNTR_randinit ;
       TX_B2B_OK <= TX_B2B_OK_randinit ;
       TX_PACKET_BYTE_CNT <= TX_PACKET_BYTE_CNT_randinit ;
       TX_WCNT <= TX_WCNT_randinit ;
       XGMII_DOUT_REG <= XGMII_DOUT_REG_randinit ;
       XGMII_COUT_REG <= XGMII_COUT_REG_randinit ;
       TX_PKT_SENT <= TX_PKT_SENT_randinit ;
       TX_BYTE_SENT <= TX_BYTE_SENT_randinit ;
       CRC <= CRC_randinit ;
       CRC_DAT_IN <= CRC_DAT_IN_randinit ;
       CRC_IN <= CRC_IN_randinit ;
       TX_WCNT_INI <= TX_WCNT_INI_randinit ;
       TX_BUF <= TX_BUF_randinit ;
       TX_FUNC_INSTR <= TX_FUNC_INSTR_randinit ;
       __COUNTER_start__n3 <= 0;
   end
   else if(__START__ && __ILA_TX_FUNC_valid__) begin
       if ( __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__ ) begin 
           __COUNTER_start__n3 <= 1; end
       else if( (__COUNTER_start__n3 >= 1 ) && ( __COUNTER_start__n3 < 255 )) begin
           __COUNTER_start__n3 <= __COUNTER_start__n3 + 1; end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_FULL <= TXFIFO_FULL ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_WUSED_QWD <= n6____DOLLAR__683 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_BUFF_RD_PTR <= n11____DOLLAR__675 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_RD_OUTPUT <= n16____DOLLAR__660 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_RD_EN <= TXFIFO_RD_EN ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_STATE <= n20____DOLLAR__5407 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_STATE_ENCAP <= n22____DOLLAR__5414 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_B2B_CNTR <= n27____DOLLAR__5395 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_B2B_OK <= TX_B2B_OK ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_PACKET_BYTE_CNT <= TX_PACKET_BYTE_CNT ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_WCNT <= n28____DOLLAR__5417 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           XGMII_DOUT_REG <= n993____DOLLAR__5382 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           XGMII_COUT_REG <= n1033____DOLLAR__5088 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_PKT_SENT <= TX_PKT_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_BYTE_SENT <= TX_BYTE_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           CRC <= n916____DOLLAR__4920 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           CRC_DAT_IN <= n1101____DOLLAR__923 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           CRC_IN <= n903____DOLLAR__4884 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_WCNT_INI <= TX_WCNT_INI ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_BUF <= n61____DOLLAR__654 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_FUNC_INSTR <= 3'd2 ;
       end
   end
end
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on

module LMAC_CORE_TOP 
		(
		
		// Clocks and Reset
		clk,					// i-1		250 Mhz		// changed to 156.25 MHz- 7 june 2018		
		xA_clk,					// i-1		156.25 Mhz
		reset_,					// i-1, FMAC specific reset (also follows PCIE RST)		
		                    	
		mode_10G,  		 		//i-1, speed modes
		mode_5G,   				//i-1, 
		mode_2p5G, 				//i-1, 
		mode_1G,   				//i-1, 
		                		
		TCORE_MODE	,			//i-1, Always tie to 1		   

		// Interface to TX PATH
		tx_mac_wr,				// i-1
		tx_mac_data,			// i-64
		tx_mac_full,			// o-1
		tx_mac_usedw,			// o-13
		
		// Interface to RX PATH
		rx_mac_data,			// o-64
		rx_mac_ctrl,			//o-8, rsvd, pkt_end, pkt_start
		rx_mac_empty,			// o-1
		rx_mac_rd,				// i-1
		rx_mac_rd_cycle,		// i-1, from EXTR
		//for field debug   	
		rx_mac_full_dbg,		//o-1
		rx_mac_usedw_dbg,		//o-12
		
		//for pre_CS/parser (I/F to RX Path/EXTR)
		cs_fifo_rd_en 	,		//i-1
		cs_fifo_empty 	,		//o-1
		ipcs_fifo_dout	,	    //o-64
		
		// Xaui/PHY A Interface
		xgmii_reset_  ,    		//i-1
        xgmii_txd ,				//o-64
        xgmii_txc ,				//o-8
        
		xgmii_rxd	,			//i-64
        xgmii_rxc ,				//i-8
        xgmii_led_ ,			//i-2
		
		xauiA_linkup,			// o-1, link up for either 10G or 10G mode 
		
		// From central decoder
		host_addr_reg,			// i-16
		SYS_ADDR,				//i-4, system assigned addr for the FMAC
		
		// From mac_register
		fail_over,				// i-1
		fmac_ctrl,				// i-32
		fmac_ctrl1,				// i-32
		                    	
		fmac_rxd_en	,			//i-1, 13jul11
		
		mac_pause_value,		// i-32
		mac_addr0, 				// i-48
		
		reg_rd_start,			// i-1	
				
		reg_rd_done_out,		// o-1		
		                    	
		FMAC_REGDOUT,			// o-32
		FIFO_OV_IPEND, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, m1__DOT__core__DOT__txfifo__DOT__rdreq, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, m1__DOT__mode_5G, m1__DOT__mode_2p5G, m1__DOT__mode_1G, m1__DOT__mode_10G, m1__DOT__core__DOT__txfifo_usedw, m1__DOT__core__DOT__txfifo__DOT__wrfull, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val, m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G, m1__DOT__core__DOT__rx_pause, m1__DOT__core__DOT__mode_5G, m1__DOT__core__DOT__mode_2p5G, m1__DOT__core__DOT__mode_1G, m1__DOT__core__DOT__mode_10G, m1__DOT__TCORE_MODE, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G, m1__DOT__SYS_ADDR, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel);
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
 output  m1__DOT__core__DOT__txfifo__DOT__rdreq;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
 output  m1__DOT__mode_5G;
 output  m1__DOT__mode_2p5G;
 output  m1__DOT__mode_1G;
 output  m1__DOT__mode_10G;
 output [12:0] m1__DOT__core__DOT__txfifo_usedw;
 output  m1__DOT__core__DOT__txfifo__DOT__wrfull;
 output  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull;
 output  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output [1:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__rx_pause;
 output  m1__DOT__core__DOT__mode_5G;
 output  m1__DOT__core__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__mode_1G;
 output  m1__DOT__core__DOT__mode_10G;
 output  m1__DOT__TCORE_MODE;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G;
 output [3:0] m1__DOT__SYS_ADDR;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel;
	
input		clk;			   	// 156.25 Mhz
input		xA_clk; 		    // 156.25 Mhz
input		reset_;

input		mode_10G; 			//i-1, speed modes
input		mode_5G;   			//i-1, 
input		mode_2p5G;			//i-1, 
input		mode_1G;   			//i-1, 

input		TCORE_MODE;
		
// Interface to TX PATH
input			tx_mac_wr;
input [63:0]	tx_mac_data;
output			tx_mac_full;
output [12:0]	tx_mac_usedw;
		
// Interface to RX PATH
output [63:0]	rx_mac_data;
output	[7:0]	rx_mac_ctrl;
output 			rx_mac_empty;
input			rx_mac_rd;
input			rx_mac_rd_cycle;

//for field debug
output			rx_mac_full_dbg;
output	[11:0]	rx_mac_usedw_dbg;
	
//for pattern search (I/F to RX Path/EXTR)
input		cs_fifo_rd_en 	;		//i-1
output		cs_fifo_empty 	;		

output	[63:0]		ipcs_fifo_dout	;		

input			xgmii_reset_  ;		//i-1   
output	[63:0] 	xgmii_txd ;			//o-64
output	[7:0]  	xgmii_txc ;			//o-8
input	[63:0]  xgmii_rxd ;			//i-64
input	[7:0]   xgmii_rxc ;			//i-8
input	[1:0]   xgmii_led_ ;		//i-2

output			xauiA_linkup;		// to LED on board 
	
// From central decoder
input [15:0]	host_addr_reg;
input	[3:0]	SYS_ADDR;
		
// From mac_register
input			fail_over;
input [31:0]	fmac_ctrl;
input [31:0]	fmac_ctrl1;

input			fmac_rxd_en	;

input [31:0]	mac_pause_value;// [31:16] = tx_pause_value to send a pause frame, [15:0] = rx_pause_value (not implement)
input [47:0]	mac_addr0;		// mac_addr to check in non-promiscuous mode

input			reg_rd_start;

output			reg_rd_done_out;		

		
output [31:0]	FMAC_REGDOUT;
output			FIFO_OV_IPEND;

parameter		FMAC_ID = 10;

wire		cs_fifo_rd_en 	;	
wire		cs_fifo_empty 	;		
wire	[63:0]		ipcs_fifo_dout	;	

wire [31:0] 	FMAC_TX_PKT_CNT;
wire [31:0] 	FMAC_RX_PKT_CNT_LO;
wire [31:0] 	FMAC_RX_PKT_CNT_HI;
wire [31:0]		FMAC_TX_BYTE_CNT;
wire [31:0] 	FMAC_RX_BYTE_CNT_LO;
wire [31:0] 	FMAC_RX_BYTE_CNT_HI;
wire [31:0]		FMAC_RX_UNDERSIZE_PKT_CNT;
wire [31:0]		FMAC_RX_CRC_ERR_CNT;
wire [31:0]  	FMAC_DCNT_OVERRUN;
wire [31:0]  	FMAC_DCNT_LINK_ERR;
wire [31:0]		FMAC_PKT_CNT_OVERSIZE;
wire [31:0]		FMAC_PKT_CNT_JABBER;
wire [31:0]		FMAC_PKT_CNT_FRAGMENT;
wire [31:0]		RAW_FRAME_CNT;

wire	[31:0]	BAD_FRAMESOF_CNT ;


wire [32:0] FMAC_RX_PKT_CNT64_LO;   
wire [31:0] FMAC_RX_PKT_CNT64_HI;   
                    
wire [32:0] FMAC_RX_PKT_CNT127_LO;  
wire [31:0] FMAC_RX_PKT_CNT127_HI;  

wire [32:0] FMAC_RX_PKT_CNT255_LO;  
wire [31:0] FMAC_RX_PKT_CNT255_HI;  
 
wire [32:0] FMAC_RX_PKT_CNT511_LO;  
wire [31:0] FMAC_RX_PKT_CNT511_HI;  
 
wire [32:0] FMAC_RX_PKT_CNT1023_LO; 
wire [31:0] FMAC_RX_PKT_CNT1023_HI; 

wire [32:0] FMAC_RX_PKT_CNT1518_LO; 
wire [31:0] FMAC_RX_PKT_CNT1518_HI; 
 
wire [32:0] FMAC_RX_PKT_CNT2047_LO; 
wire [31:0] FMAC_RX_PKT_CNT2047_HI; 
 
wire [32:0] FMAC_RX_PKT_CNT4095_LO; 
wire [31:0] FMAC_RX_PKT_CNT4095_HI; 
 
wire [32:0] FMAC_RX_PKT_CNT8191_LO; 
wire [31:0] FMAC_RX_PKT_CNT8191_HI; 

wire [32:0] FMAC_RX_PKT_CNT9018_LO; 
wire [31:0] FMAC_RX_PKT_CNT9018_HI; 
 
wire [32:0] FMAC_RX_PKT_CNT9022_LO; 
wire [31:0] FMAC_RX_PKT_CNT9022_HI; 
 
wire [32:0] FMAC_RX_PKT_CNT9199P_LO;
wire [31:0] FMAC_RX_PKT_CNT9199P_HI;


wire	[31:0]	STAT_GROUP_LO_DOUT	;			
wire	[31:0]	STAT_GROUP_HI_DOUT	;			
wire	[9:0]	STAT_GROUP_addr		;			
wire			STAT_GROUP_sel	;
wire			fmac_rx_clr_en	;

reg				xauiA_linkup;
wire			linkup_10g;
wire			linkup_5g;
wire			linkup_1g;

wire			reg_rd_start;
reg				reg_rd_done;
reg				reg_rd_done_out;

wire [07:0] 	rxc_reorder;
wire [63:0] 	rxd_reorder;

wire			br_sof4 ;

wire	[63:0]	data_out;
wire	[07:0]	ctrl_out;


reg		[63:0]	br_data_in;
reg		[07:0]  br_ctrl_in;

reg		tx_auto_clr_en;
reg		rx_auto_clr_en;
reg		[31:0]	fmac_ctrl_dly	;
reg		[31:0]	fmac_ctrl1_dly	;

reg		mode_10G_buf ;
reg		mode_5G_buf  ;
reg		mode_2p5G_buf;
reg		mode_1G_buf  ;

reg		xaui_mode;		//	= (fmac_speed == 2'b00);

wire	fmac_tx_clr_en;


always @(posedge clk)	
	begin
	tx_auto_clr_en	<=	fmac_ctrl[6];
	rx_auto_clr_en	<=	fmac_ctrl[7];
		//rebuffering
	fmac_ctrl_dly	<=	fmac_ctrl	;
	
	fmac_ctrl1_dly[31:18]	<=	fmac_ctrl1[31:18]	;
	
	fmac_ctrl1_dly[17:16]	<=	2'b00	;
	
	fmac_ctrl1_dly[15:0]	<=	fmac_ctrl1[15:0]	;
	
	end

	
	
always @(posedge clk) begin
	    //buffer
		mode_10G_buf    <=	mode_10G ;
		mode_5G_buf     <=	mode_5G  ;
		mode_2p5G_buf	<=	mode_2p5G;
		mode_1G_buf     <=	mode_1G  ;
	
	end

	
			  		
always @ (posedge xA_clk)
begin
	
	xaui_mode	<= (mode_10G_buf);	 
	
	//linkup for different speed modes
	xauiA_linkup		<= 
		(mode_10G_buf) ? linkup_10g :
		(mode_1G_buf)  ? linkup_1g  :
		linkup_5g	;
		
		
		
	br_data_in	<=	(mode_10G_buf)? xgmii_rxd : data_out;
	br_ctrl_in  <=	(mode_10G_buf)? xgmii_rxc : ctrl_out;
				
end



tcore_fmac_core #(FMAC_ID) core(

.usr_clk  		(clk),   					// i-1	156.25 Mhz     			
.x_clk 	  		(xA_clk),  			    	// i-1	156.25 Mhz 
.usr_rst_ 		(reset_),    				// i-1
                                        	
.mode_10G 		(mode_10G_buf), 			//i-1, speed modes
.mode_5G  		(mode_5G_buf), 				//i-1, 
.mode_2p5G		(mode_2p5G_buf), 			//i-1, 
.mode_1G  		(mode_1G_buf), 				//i-1, 
            	                    		
.TCORE_MODE 	(TCORE_MODE),    			// i-1 
                                    		
// register config                  		
.tx_xo_en		(fmac_ctrl[0]),				// i-1
.rx_xo_en		(fmac_ctrl[1]),				// i-1   
.bcast_en		(fmac_ctrl[11]),			// i-1  
.prom_mode		(fmac_ctrl[4]),   			// i-1  
.mac_addr0		(mac_addr0),    			// i-48 
.rx_size		(12'h100),        			// i-12
.rx_check_crc 	(fmac_ctrl[3]),   			// i-1 , CRC_EN bit
                                        	
// txfifo interface                     	
.txfifo_din 	(tx_mac_data),    			// i-64
.txfifo_wr_en 	(tx_mac_wr),    			// i-1 
.txfifo_full 	(tx_mac_full),   			// o-1 
.txfifo_usedw 	(tx_mac_usedw), 			// o-13
                                        	
// tx_encap interface                   	
.mac_pause_value	(mac_pause_value), 		// i-32
.tx_b2b_dly			(fmac_ctrl[9:8]),		// i-2
                                        	
// rxfifo interface                     	
.rxfifo_rd_cycle 	(rx_mac_rd_cycle),  	// i-1 
.rxfifo_rd_en 		(rx_mac_rd),     		// i-1 
.rxfifo_dout 		(rx_mac_data),    		// o-64
.rxfifo_ctrl_dout	(rx_mac_ctrl),			//o-8
.rxfifo_empty 		(rx_mac_empty),  		// o-1  (rdempty 250MHz)
//for debug                             	
.rxfifo_full_dbg	(rx_mac_full_dbg),		//o-1
.rxfifo_usedw_dbg	(rx_mac_usedw_dbg),		//o-12

//---- 1Nov13
.drx_pkt_data 		(),    					//o-64	     
.drx_pkt_start 		(),     				//o-1		     
.drx_pkt_end 		(),     				//o-1		     
.drx_pkt_we 		(),     				//o-1		     
.drx_pkt_beat_bcnt 	(),  					//o-3	 
.drx_pkt_be 		(),     				//o-8	 
.drx_crc32 			(),     				//o-32	
.drx_crc_vld 		(),     				//o-1		     
.drx_crc_err 		(),     				//o-1		     
.drx_crc_err_dly1 	(),     				//o-1		     




//pre-parser FIFO	   
.cs_fifo_rd_en		(cs_fifo_rd_en),		//i-1
.ipcs_fifo_dout		(ipcs_fifo_dout),  		//o-64, {32'b0, fpseudo, fast_ipsum}
.cs_fifo_empty		(cs_fifo_empty),		//o-1, for EXTR	
                                        	
// rx_xgmii                             	
.xgmii_rxc			(rxc_reorder), 			//i-8    
.xgmii_rxd			(rxd_reorder), 			//i-64    
.xgmii_rxp			(8'h00),       			//i-8, intended for PORT ID but not used (use fmac_id) 
                         	
.br_sof4			(br_sof4),				//i-4
                         	
.fmac_ctrl1_dly		(fmac_ctrl1_dly),		//i-32
.fmac_rxd_en		(fmac_rxd_en),			//i-1
    
// tx_xgmii                     
.xgmii_txc			(xgmii_txc),			//o-8     
.xgmii_txd			(xgmii_txd),			//o-64

// to mac_register.v
.FMAC_TX_PKT_CNT	(FMAC_TX_PKT_CNT),  	// o-32
.FMAC_RX_PKT_CNT_LO	(FMAC_RX_PKT_CNT_LO),	// o-32
.FMAC_RX_PKT_CNT_HI	(FMAC_RX_PKT_CNT_HI),	// o-32

.FMAC_TX_BYTE_CNT	(FMAC_TX_BYTE_CNT),		// o-32
.FMAC_RX_BYTE_CNT_LO(FMAC_RX_BYTE_CNT_LO),  // o-32
.FMAC_RX_BYTE_CNT_HI(FMAC_RX_BYTE_CNT_HI),  // o-32

.STAT_GROUP_LO_DOUT	(STAT_GROUP_LO_DOUT),	//o-32
.STAT_GROUP_HI_DOUT	(STAT_GROUP_HI_DOUT),	//o-32
.STAT_GROUP_addr	(STAT_GROUP_addr) ,		//i-10
.STAT_GROUP_sel		(STAT_GROUP_sel) ,		//i-1
.fmac_rx_clr_en		(fmac_rx_clr_en),		//i-1

.fmac_tx_clr_en		(fmac_tx_clr_en),						

.FMAC_RX_UNDERSIZE_PKT_CNT	(FMAC_RX_UNDERSIZE_PKT_CNT),	// o-32	[CORE]	
.FMAC_RX_CRC_ERR_CNT		(FMAC_RX_CRC_ERR_CNT),			// o-32
.FMAC_DCNT_OVERRUN			(FMAC_DCNT_OVERRUN),			// o-32
.FMAC_DCNT_LINK_ERR			(FMAC_DCNT_LINK_ERR),			// o-32  
.FMAC_PKT_CNT_OVERSIZE		(FMAC_PKT_CNT_OVERSIZE),		// o-32 
.FIFO_OV_IPEND				(FIFO_OV_IPEND),				// o-1 
 
.FMAC_PKT_CNT_JABBER		(FMAC_PKT_CNT_JABBER),			// o-32 	
.FMAC_PKT_CNT_FRAGMENT		(FMAC_PKT_CNT_FRAGMENT),		// o-32 



.FMAC_RX_PKT_CNT64_LO		(FMAC_RX_PKT_CNT64_LO),   
.FMAC_RX_PKT_CNT64_HI		(FMAC_RX_PKT_CNT64_HI),   
                        
.FMAC_RX_PKT_CNT127_LO		(FMAC_RX_PKT_CNT127_LO),  
.FMAC_RX_PKT_CNT127_HI		(FMAC_RX_PKT_CNT127_HI),  
                      		  
.FMAC_RX_PKT_CNT255_LO		(FMAC_RX_PKT_CNT255_LO),  
.FMAC_RX_PKT_CNT255_HI		(FMAC_RX_PKT_CNT255_HI),  
                        
.FMAC_RX_PKT_CNT511_LO		(FMAC_RX_PKT_CNT511_LO),  
.FMAC_RX_PKT_CNT511_HI		(FMAC_RX_PKT_CNT511_HI),  
                      		  
.FMAC_RX_PKT_CNT1023_LO		(FMAC_RX_PKT_CNT1023_LO), 
.FMAC_RX_PKT_CNT1023_HI		(FMAC_RX_PKT_CNT1023_HI), 
                       		 
.FMAC_RX_PKT_CNT1518_LO		(FMAC_RX_PKT_CNT1518_LO), 
.FMAC_RX_PKT_CNT1518_HI		(FMAC_RX_PKT_CNT1518_HI), 
                       		 
.FMAC_RX_PKT_CNT2047_LO		(FMAC_RX_PKT_CNT2047_LO), 
.FMAC_RX_PKT_CNT2047_HI		(FMAC_RX_PKT_CNT2047_HI), 
                       		 
.FMAC_RX_PKT_CNT4095_LO		(FMAC_RX_PKT_CNT4095_LO), 
.FMAC_RX_PKT_CNT4095_HI		(FMAC_RX_PKT_CNT4095_HI), 
                       		 
.FMAC_RX_PKT_CNT8191_LO		(FMAC_RX_PKT_CNT8191_LO), 
.FMAC_RX_PKT_CNT8191_HI		(FMAC_RX_PKT_CNT8191_HI), 
                       		 
.FMAC_RX_PKT_CNT9018_LO		(FMAC_RX_PKT_CNT9018_LO), 
.FMAC_RX_PKT_CNT9018_HI		(FMAC_RX_PKT_CNT9018_HI), 
                       		 
.FMAC_RX_PKT_CNT9022_LO		(FMAC_RX_PKT_CNT9022_LO), 
.FMAC_RX_PKT_CNT9022_HI		(FMAC_RX_PKT_CNT9022_HI), 
                        
.FMAC_RX_PKT_CNT9199P_LO	(FMAC_RX_PKT_CNT9199P_LO),
.FMAC_RX_PKT_CNT9199P_HI	(FMAC_RX_PKT_CNT9199P_HI)


 ,.m1__DOT__core__DOT__txfifo__DOT__rdreq(m1__DOT__core__DOT__txfifo__DOT__rdreq) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull) ,.m1__DOT__core__DOT__txfifo__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__wrfull) ,.m1__DOT__core__DOT__txfifo_usedw(m1__DOT__core__DOT__txfifo_usedw) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout) ,.m1__DOT__core__DOT__mode_1G(m1__DOT__core__DOT__mode_1G) ,.m1__DOT__core__DOT__mode_2p5G(m1__DOT__core__DOT__mode_2p5G) ,.m1__DOT__core__DOT__mode_5G(m1__DOT__core__DOT__mode_5G) ,.m1__DOT__core__DOT__rx_pause(m1__DOT__core__DOT__rx_pause) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly) ,.m1__DOT__core__DOT__mode_10G(m1__DOT__core__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes));


	reg			reg_rd_delay1;
	reg			reg_rd_delay2;
	reg			reg_rd_delay3;
	reg			reg_rd_delay4;
	
	//buffer signal 'reg_rd_start' for 5 clocks.
	always @ (posedge xA_clk)
	begin
	   if (!reset_)
	   begin
	   		reg_rd_delay1		<=	1'b0;  
	        reg_rd_delay2		<=	1'b0;  
	        reg_rd_delay3		<=	1'b0;  
	        reg_rd_delay4		<=	1'b0;  
	        reg_rd_done			<=	1'b0;    
	        reg_rd_done_out		<=	1'b0;
	   end
	   else
	   begin
	   		reg_rd_delay1		<=	reg_rd_start;  
	        reg_rd_delay2		<=	reg_rd_delay1;  
	        reg_rd_delay3		<=	reg_rd_delay2;  
	        reg_rd_delay4		<=	reg_rd_delay3;  
	        reg_rd_done			<=	reg_rd_delay4;    
	        reg_rd_done_out		<=	reg_rd_delay4;
	   end
	end

/*

tcore_byte_reordering byte_reordering(
	.clk250 			(clk), 					// i-1
	.x_clk 				(xA_clk), 				// i-1
	.reset_				(reset_),      			// i-1
	.fmac_rxd_en 		(fmac_rxd_en),			//i-1
	
	.xaui_mode			(1'b1),   				// i-1		//always operate in 10G mode.
	
	.data_in			(br_data_in),   		// i-64
	.ctrl_in			(br_ctrl_in),   		// i-8
	
	.data_out			(rxd_reorder),      	// o-64
	.ctrl_out			(rxc_reorder),        	// o-8
	
	.br_sof4			(br_sof4),	        	//o-1, byte_reorder sof4
	
	.RAW_FRAME_CNT 		(RAW_FRAME_CNT ),		//o-32, 250MHz domain
	.BAD_FRAMESOF_CNT	(BAD_FRAMESOF_CNT ),	//o-32, 250MHz domain
	.init_done			(1'b1),					// i-1		
	.linkup				(linkup_10g),			// o-1, 10G link up, 
	.rx_auto_clr_en		(rx_auto_clr_en)
	
	);
	
	
	
rx_5g rx_5g(

	.clk 				(clk),					//i-1, Clock                   
	.reset_ 			(reset_),				//i-1, reset                   
                		                    	
	.mode_10G 			(mode_10G_buf), 		//i-1, speed modes
	.mode_5G  			(mode_5G_buf), 			//i-1, 
	.mode_2p5G			(mode_2p5G_buf), 		//i-1, 
	.mode_1G  			(mode_1G_buf), 			//i-1, 
	            		                    	                                 
	.data_in 			(xgmii_rxd),      		//i-64, Input data             
	.ctrl_in 			(xgmii_rxc),      		//i-8,  Input control           
	            		                    	                                 
	.data_out 			(data_out),       		//o-64, Output data            
	.ctrl_out 			(ctrl_out),       		//o-8,  output control          
                		                    	
	.linkup_1g 			(linkup_1g),       		//o-1, write enable to the fifo
	.linkup_5g 			(linkup_5g)        		//o-1, write enable to the fifo
	);


fmac_register_if fmac_register_if(
	.clk				(clk),     				        // i-1
    .reset_				(reset_),						// i-1
     
    // Statistic Registers
    	//REGULAR GROUP
    .fmac_ctrl_dly		(fmac_ctrl_dly)	,				//i-32
    .fmac_ctrl1			(fmac_ctrl1)	,				//i-32
    
    .FMAC_TX_PKT_CNT	(FMAC_TX_PKT_CNT),  			// i-32
    .FMAC_RX_PKT_CNT_LO	(FMAC_RX_PKT_CNT_LO),      		// i-32
    .FMAC_RX_PKT_CNT_HI	(FMAC_RX_PKT_CNT_HI),      		// i-32
    
    .FMAC_TX_BYTE_CNT	(FMAC_TX_BYTE_CNT),				// i-32
	.FMAC_RX_BYTE_CNT_LO(FMAC_RX_BYTE_CNT_LO),   		// i-32
	.FMAC_RX_BYTE_CNT_HI(FMAC_RX_BYTE_CNT_HI),   		// i-32
	
	.FMAC_RX_UNDERSIZE_PKT_CNT	(FMAC_RX_UNDERSIZE_PKT_CNT),	// i-32
	.FMAC_RX_CRC_ERR_CNT		(FMAC_RX_CRC_ERR_CNT),			// i-32
	.FMAC_DCNT_OVERRUN			(FMAC_DCNT_OVERRUN),			// i-32
	.FMAC_DCNT_LINK_ERR			(FMAC_DCNT_LINK_ERR),			// i-32
	.FMAC_PKT_CNT_OVERSIZE		(FMAC_PKT_CNT_OVERSIZE),		// i-32
	.FMAC_PHY_STAT				({31'h0, xauiA_linkup}),		// i-32	
	
	.FMAC_PKT_CNT_JABBER		(FMAC_PKT_CNT_JABBER),			// i-32
	.FMAC_PKT_CNT_FRAGMENT		(FMAC_PKT_CNT_FRAGMENT),		// i-32
	.FMAC_RAW_FRAME_CNT			(RAW_FRAME_CNT),				// i-32
	.FMAC_BAD_FRAMESOF_CNT		(BAD_FRAMESOF_CNT),				// i-32

	//STATISTIC GROUP
	.STAT_GROUP_LO_DOUT		(STAT_GROUP_LO_DOUT)	,			//i-32
	.STAT_GROUP_HI_DOUT		(STAT_GROUP_HI_DOUT)	,			//i-32
	.STAT_GROUP_addr		(STAT_GROUP_addr) ,					//o-10
	.STAT_GROUP_sel			(STAT_GROUP_sel) ,					//o-1
	.fmac_rx_clr_en			(fmac_rx_clr_en),					//o-1
	
	.fmac_tx_clr_en			(fmac_tx_clr_en),
	
	// Interface to mac_register
	.reg_rd_start			(reg_rd_start),			// i-1
	.reg_rd_done			(reg_rd_done),			// i-1
	.host_addr_reg			(host_addr_reg),		// i-16
	.SYS_ADDR				(SYS_ADDR),				//i-4
	
	.rx_auto_clr_en			(rx_auto_clr_en),		//i-1
	.tx_auto_clr_en			(tx_auto_clr_en),		//i-1
	
	.FMAC_REGDOUT			(FMAC_REGDOUT),			// o-32
	
		
	.FMAC_RX_PKT_CNT64_LO		(FMAC_RX_PKT_CNT64_LO),   
	.FMAC_RX_PKT_CNT64_HI		(FMAC_RX_PKT_CNT64_HI),   
	                        	
	.FMAC_RX_PKT_CNT127_LO		(FMAC_RX_PKT_CNT127_LO),  
	.FMAC_RX_PKT_CNT127_HI		(FMAC_RX_PKT_CNT127_HI),  
	                        	
	.FMAC_RX_PKT_CNT255_LO		(FMAC_RX_PKT_CNT255_LO),  
	.FMAC_RX_PKT_CNT255_HI		(FMAC_RX_PKT_CNT255_HI),  
	                      		  
	.FMAC_RX_PKT_CNT511_LO		(FMAC_RX_PKT_CNT511_LO),  
	.FMAC_RX_PKT_CNT511_HI		(FMAC_RX_PKT_CNT511_HI),  
	                        	
	.FMAC_RX_PKT_CNT1023_LO		(FMAC_RX_PKT_CNT1023_LO), 
	.FMAC_RX_PKT_CNT1023_HI		(FMAC_RX_PKT_CNT1023_HI), 
	                       		 
	.FMAC_RX_PKT_CNT1518_LO		(FMAC_RX_PKT_CNT1518_LO), 
	.FMAC_RX_PKT_CNT1518_HI		(FMAC_RX_PKT_CNT1518_HI), 
	                       		 
	.FMAC_RX_PKT_CNT2047_LO		(FMAC_RX_PKT_CNT2047_LO), 
	.FMAC_RX_PKT_CNT2047_HI		(FMAC_RX_PKT_CNT2047_HI), 
	                       		 
	.FMAC_RX_PKT_CNT4095_LO		(FMAC_RX_PKT_CNT4095_LO), 
	.FMAC_RX_PKT_CNT4095_HI		(FMAC_RX_PKT_CNT4095_HI), 
	                       		 
	.FMAC_RX_PKT_CNT8191_LO		(FMAC_RX_PKT_CNT8191_LO), 
	.FMAC_RX_PKT_CNT8191_HI		(FMAC_RX_PKT_CNT8191_HI), 
	                       		 
	.FMAC_RX_PKT_CNT9018_LO		(FMAC_RX_PKT_CNT9018_LO), 
	.FMAC_RX_PKT_CNT9018_HI		(FMAC_RX_PKT_CNT9018_HI), 
	                       		 
	.FMAC_RX_PKT_CNT9022_LO		(FMAC_RX_PKT_CNT9022_LO), 
	.FMAC_RX_PKT_CNT9022_HI		(FMAC_RX_PKT_CNT9022_HI), 
	                        
	.FMAC_RX_PKT_CNT9199P_LO	(FMAC_RX_PKT_CNT9199P_LO),
	.FMAC_RX_PKT_CNT9199P_HI	(FMAC_RX_PKT_CNT9199P_HI)

		
    );
    
*/    
    
 assign m1__DOT__mode_5G = mode_5G;
 assign m1__DOT__mode_2p5G = mode_2p5G;
 assign m1__DOT__mode_1G = mode_1G;
 assign m1__DOT__mode_10G = mode_10G;
 assign m1__DOT__TCORE_MODE = TCORE_MODE;
 assign m1__DOT__SYS_ADDR = SYS_ADDR;
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//

`timescale 1ns / 1ps
module asynch_fifo # (parameter WIDTH = 8,         // considering 8X8 fifo
								DEPTH = 16,
								PTR	= 4 )          // 2**3 = 8 (DEPTH)

(
			input wire 					reset_,
			//=== Signals for WRITE
			input  wire 				wrclk,        // Clk for writing data
			input  wire 				wren,         // request to write 
			input  wire [WIDTH-1 : 0]	datain,       // Data coming in 
			output reg					wrfull,       // indicates fifo is full or not (To avoid overiding)
			output reg 			 		wrempty,      // 0- some data is present (atleast 1 data is present)                                          
			output 		usedw_i,      // number of slots currently in use for writing                                                                                                
                                                    
			
			//=== Signals for READ

            input  wire 				rdclk,        // Clk for reading data    
			input  wire 				rden,         // Request to read from FIFO 
			output reg [WIDTH-1 : 0]	dataout,      // Data coming out 
			output wire 				rdfull,       // 1-FIFO IS FULL (DATA AVAILABLE FOR READ is == DEPTH)
			output reg 					rdempty,      // indicates fifo is empty or not (to avoid underflow)

			output 	 		dbg, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, output wire  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull, output wire  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren, output wire [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, output wire [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i, output wire [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_);



//=== INTERNAL SIGNALS
reg	[PTR  : 0]		wrusedw_i;	//async version
reg	[PTR  : 0]		rdusedw_i;	//async version
reg	[PTR  : 0]		wrusedw;
reg	[PTR  : 0]		rdusedw;
reg	[PTR  : 0]		usedw_i;        //sync version

reg [PTR : 0 ] wr_ptr, rd_ptr;
reg [PTR : 0 ] rd_ptr_d , wr_ptr_d  ;		
reg [PTR : 0 ] rd_ptr_d1, wr_ptr_d1 ;

reg [PTR : 0] ptr_diff;

reg [PTR : 0 ] wr_cnt, rd_cnt;

// MEMORY FOR FIFO USING REG
reg [WIDTH-1 : 0] mem[DEPTH-1:0] ;

// MEMORY FOR ILA verification
// reg [WIDTH-1 : 0] ILA_mem_2clk[DEPTH-1:0] ;
// reg [WIDTH-1 : 0] ILA_mem_3clk[DEPTH-1:0] ;
// reg [WIDTH-1 : 0] ILA_mem_4clk[DEPTH-1:0] ;
// reg [WIDTH-1 : 0] ILA_mem_5clk[DEPTH-1:0] ;
// reg [WIDTH-1 : 0] ILA_mem_6clk[DEPTH-1:0] ;

assign	dbg	=	1'b0;

// MEMORY FOR FIFO USING REG
// always @(wr_ptr,rd_ptr,wrusedw,rdusedw,wren,rden,reset_)
// 	begin
	
// 		//need to rise quickly to avoid false writing
// 		//wrusedw is sync to wrclk
// 		wrfull =    !reset_ ? 1'b0 : // for full 1 for empty 0
// 			(wrusedw_i >= DEPTH) // The original design is wrusedw instead of wrusedw_i 
// 			;
// 		wrempty =    !reset_ ? 1'b1 : // for full 1 for empty 0
// 			(wrusedw <= 0) 
// 			;
					
// 			//dependednt on wrusedw to avoid false reading
// 		rdusedw_i = 
// 			!reset_ ? 0 :
// 			!wrfull ?  wrusedw : DEPTH ;			
			
// 		rdempty =   !reset_ ? 1'b1 : // for full 0 for empty 1
// 			(rdusedw <= 0) 
// 			;
						
// 	end

always @(*)
begin

  wrfull = !reset_ ? 1'b0 : (usedw_i >= DEPTH);
  wrempty = !reset_ ? 1'b1 : (usedw_i <= 0);
  rdempty = !reset_ ? 1'b1 : (usedw_i <= 0);
end

always @(wr_ptr, rd_ptr)
begin
	
	ptr_diff =  wr_ptr > rd_ptr ? wr_ptr - rd_ptr :
		          wr_ptr < rd_ptr ? rd_ptr - wr_ptr : 0;
	// may add quickly on wr
	// may sub slowly on rd		   
	wrusedw_i =	
			!reset_ ? 0 :
			wren & rden ? (wrusedw == 0 ? 1'b1 : wrusedw) :  
			wr_ptr < rd_ptr ? DEPTH - ptr_diff :
		    wr_ptr > rd_ptr ? ptr_diff :
		    wr_ptr == rd_ptr ? (
		    	(wr_ptr_d > wr_ptr) & ( wrusedw==3)  ? DEPTH  : 			    	
		    	(wr_ptr_d < rd_ptr) & ( rd_ptr_d < rd_ptr)  ? 4'b0  : 
		    	(rd_ptr_d < wr_ptr) | (rd_ptr_d1 < wr_ptr)  ? 4'b0  :
		    	(rd_ptr_d > wr_ptr) 						            ? 4'b0  : 	
		    	(wr_ptr_d < rd_ptr) | ( wr_ptr_d1 < rd_ptr) ? DEPTH : 	
		    	wrusedw)  :
		    wrusedw_i ;
end	

always @(wrusedw_i, rdusedw_i)
begin
  
end

assign rdfull  = wrfull ? 1'b1 : 1'b0;                     

// === WRITE INTO FIFO
	always @(wrclk, wrusedw_i )
		begin
		if (!reset_ & !wrclk )
			begin
			wrusedw 	<= 0;
			end
		else
			begin
			wrusedw 	<= 
				!wrclk ? wrusedw_i :
				wrusedw ;
			end
			
		end	

	always @(posedge wrclk)
	begin
		if (!reset_)
			begin
			// clear the reset for verification from reset.
      wrusedw_i   <= 0;
			wr_ptr 	  	<= 0;
			wr_ptr_d  	<= 0;
			wr_ptr_d1 	<= 0;
			wr_cnt 		<= 0;
			end
		else
			begin
			wr_ptr 	   	<=  wren ? (!wrfull ? (wr_ptr >= DEPTH  ? 1 : wr_ptr + 1) : wr_ptr  ) :
					  		wr_ptr;
			
			mem [0]		<= 	wren ? (!wrfull ? (wr_ptr == DEPTH | 0 ? datain : mem[0]) : mem[0] ):
							mem[0];
							  		  
			mem[wr_ptr] <= 	wren & rden ? datain : 
							wren ? (!wrfull ? datain : mem[wr_ptr]) :             
						   	mem[wr_ptr];			   

			wr_cnt <= wren ? (!wrfull ? wr_cnt + 1 : wr_cnt) :
					  wr_cnt;
						   	
			wr_ptr_d  <= wr_ptr;
			wr_ptr_d1 <= wr_ptr_d;
                          
			end

	end
/*
	integer i;
	always @(posedge wrclk)
	begin
		for (i = 0; i < DEPTH; i = i+1)
			begin
				ILA_mem_2clk[i] <= mem[i];
				ILA_mem_3clk[i] <= ILA_mem_2clk[i];
				ILA_mem_4clk[i] <= ILA_mem_3clk[i];
				ILA_mem_5clk[i] <= ILA_mem_4clk[i];
				ILA_mem_6clk[i] <= ILA_mem_5clk[i];
			end
	end
*/
//=== READ FROM FIFO

	always @(rdclk, rdusedw_i )
		begin
		if (!reset_ & !rdclk )
			begin
			
			rdusedw 	<= 0;
			end
		else
			begin
			rdusedw 	<= 
				!rdclk ? rdusedw_i :
				rdusedw ;
			end
			
		end	


	always @(posedge rdclk)
	begin
		if (!reset_)
			begin
      rdusedw_i <= 0;
			rd_ptr 		<= 0;
			rd_ptr_d  	<= 0;
			rd_ptr_d1 	<= 0;
			dataout 	<= 0;
			rd_cnt  	<= 0;
			
			end
	else
			begin
			rd_ptr <= rden ? (!rdempty  ? (rd_ptr == DEPTH ?  8'd1 : rd_ptr + 8'd1 ): rd_ptr  ): 
					  rd_ptr;      
					                                                              
  			dataout <= 
  						wren & rden ? 
  							(rd_ptr <= (DEPTH - 1)  ? mem[rd_ptr]  : 
  							(rd_ptr == DEPTH) & !rdempty ? mem[0]  : 
  							dataout ) :
  						rden ? (rd_ptr <= DEPTH - 1  ? mem[rd_ptr]  : rd_ptr == DEPTH & !rdempty ? mem[0] : dataout ) :
  					  	dataout;                                                              			

  			rd_cnt <= rden ? ( !rdempty ? rd_cnt + 1 : rd_cnt ) :
  					  rd_cnt;
  							
			rd_ptr_d  <= rd_ptr;
			rd_ptr_d1 <= rd_ptr_d;
      rdusedw_i <= rdusedw_i + 1;
			
			end

	end

  always @ (posedge rdclk) 
  begin
    if (!reset_)
    begin
      usedw_i <= 0;
    end
    else 
    begin
      usedw_i <= wren & rden      ?   usedw_i :
                 wren & !rden     ?   (wrfull ? usedw_i : usedw_i + 1) :
                 !wren & rden     ?   (rdempty ? usedw_i : usedw_i - 1) :
                 usedw_i;
    end
  end



 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_ = mem[0];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_ = mem[10];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_ = mem[11];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_ = mem[12];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_ = mem[13];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_ = mem[14];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_ = mem[15];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_ = mem[1];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_ = mem[2];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_ = mem[3];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout = dataout;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_ = mem[5];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_ = mem[6];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_ = mem[7];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_ = mem[8];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_ = mem[9];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr = rd_ptr;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i = usedw_i;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr = wr_ptr;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren = wren;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull = wrfull;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_ = mem[4];
endmodule




//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on

module tcore_fmac_core(

// clock & reset
usr_clk,    		// i-1	250Mhz
x_clk,				// i-1	156.25 Mhz (really coreclkout)
usr_rst_,  			// i-1,	RESET if ext dev reset or PCIE reset 	
                	
mode_10G ,			//i-1, speed modes
mode_5G  ,			//i-1, 
mode_2p5G,	 		//i-1, 
mode_1G  ,			//i-1, 
                	
TCORE_MODE	,		//i-1

// register config
tx_xo_en,			// i-1
rx_xo_en,			// i-1
bcast_en,			// i-1
prom_mode,			// i-1         	
mac_addr0, 			// i-48
rx_size, 			// i-12
rx_check_crc,		// i-1

// txfifo interface
txfifo_din, 		// i-64
txfifo_wr_en,		// i-1
txfifo_full, 		// o-1
txfifo_usedw,		// o-13

// tx_encap interface
mac_pause_value,	// i-32
tx_b2b_dly,			// i-2

// rxfifo interface
rxfifo_rd_cycle,	// i-1, from EXTR
rxfifo_rd_en,		// i-1
rxfifo_dout,		// o-64
rxfifo_ctrl_dout,	//o-8
rxfifo_empty,		// o-1

//for field debug
rxfifo_full_dbg,	//o-1
rxfifo_usedw_dbg,	//o-12

//---- 1Nov13
drx_pkt_data		,      	//o-64	     
drx_pkt_start 		,       //o-1		     
drx_pkt_end 		,       //o-1		     
drx_pkt_we 			,       //o-1		     
drx_pkt_beat_bcnt	,  		//o-3	 
drx_pkt_be			,       //o-8	 
drx_crc32 			,       //o-32	
drx_crc_vld 		,       //o-1		     
drx_crc_err 		,       //o-1		     
drx_crc_err_dly1 	,     	//o-1		     


//PRE-parser FIFO
cs_fifo_rd_en	,		//i-1, also rd the pre-parser fifo
ipcs_fifo_dout	,		//o-64, {32'b0, fpseudo, fast_ipsum}	
cs_fifo_empty	,		//o-1, for debug

// rx_xgmii to iddr
xgmii_rxc,  			// i-8
xgmii_rxd,  			// i-64
xgmii_rxp,  			// i-8
                    	
br_sof4	,				//i-1

fmac_ctrl1_dly,			//i-32
                		
fmac_rxd_en	,			//i-1

// tx_xgmii to oddr
xgmii_txc,  			//	o-8
xgmii_txd,  			//	o-64

// to mac_register.v
FMAC_TX_PKT_CNT,  		// o-32
FMAC_RX_PKT_CNT_LO,     // o-32
FMAC_RX_PKT_CNT_HI,     // o-32

FMAC_TX_BYTE_CNT,		// o-32
FMAC_RX_BYTE_CNT_LO,    // o-32
FMAC_RX_BYTE_CNT_HI,    // o-32

FMAC_RX_UNDERSIZE_PKT_CNT,	// o-32
FMAC_RX_CRC_ERR_CNT,		// o-32
FMAC_DCNT_OVERRUN,			// o-32
FMAC_DCNT_LINK_ERR,			// o-32
FMAC_PKT_CNT_OVERSIZE,		// o-32
FIFO_OV_IPEND,				// o-1

FMAC_PKT_CNT_JABBER,		// o-32
FMAC_PKT_CNT_FRAGMENT,		// o-32

STAT_GROUP_LO_DOUT	,		//o-32
STAT_GROUP_HI_DOUT	,		//o-32
STAT_GROUP_addr		,		//i-10
STAT_GROUP_sel		,		//i-1
fmac_rx_clr_en		,		//i-1

fmac_tx_clr_en		,


FMAC_RX_PKT_CNT64_LO,   
FMAC_RX_PKT_CNT64_HI,   
                        
FMAC_RX_PKT_CNT127_LO,  
FMAC_RX_PKT_CNT127_HI,  
                        
FMAC_RX_PKT_CNT255_LO,  
FMAC_RX_PKT_CNT255_HI,  
                        
FMAC_RX_PKT_CNT511_LO,  
FMAC_RX_PKT_CNT511_HI,  
                        
FMAC_RX_PKT_CNT1023_LO, 
FMAC_RX_PKT_CNT1023_HI, 
                        
FMAC_RX_PKT_CNT1518_LO, 
FMAC_RX_PKT_CNT1518_HI, 
                        
FMAC_RX_PKT_CNT2047_LO, 
FMAC_RX_PKT_CNT2047_HI, 
                        
FMAC_RX_PKT_CNT4095_LO, 
FMAC_RX_PKT_CNT4095_HI, 
                        
FMAC_RX_PKT_CNT8191_LO, 
FMAC_RX_PKT_CNT8191_HI, 
                        
FMAC_RX_PKT_CNT9018_LO, 
FMAC_RX_PKT_CNT9018_HI, 
                        
FMAC_RX_PKT_CNT9022_LO, 
FMAC_RX_PKT_CNT9022_HI, 
                        
FMAC_RX_PKT_CNT9199P_LO,
FMAC_RX_PKT_CNT9199P_HI, m1__DOT__core__DOT__txfifo__DOT__rdreq, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull, m1__DOT__core__DOT__txfifo__DOT__wrfull, m1__DOT__core__DOT__txfifo_usedw, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout, m1__DOT__core__DOT__mode_1G, m1__DOT__core__DOT__mode_2p5G, m1__DOT__core__DOT__mode_5G, m1__DOT__core__DOT__rx_pause, m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly, m1__DOT__core__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes);
 output  m1__DOT__core__DOT__txfifo__DOT__rdreq;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
 output  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren;
 output  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull;
 output  m1__DOT__core__DOT__txfifo__DOT__wrfull;
 output [12:0] m1__DOT__core__DOT__txfifo_usedw;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout;
 output  m1__DOT__core__DOT__mode_1G;
 output  m1__DOT__core__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__mode_5G;
 output  m1__DOT__core__DOT__rx_pause;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output [1:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly;
 output  m1__DOT__core__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes;

parameter	FMAC_ID = 10;
parameter	RX_FIFO_DEPTH = 4096;
parameter	RX_FIFO_ADDR_WIDTH = 12;

parameter	RX_DRAM_DEPTH = 3072;		//only use 3K qwds	
parameter	RX_DRAM_ADDR_WIDTH = 12;
parameter	OVERSIZE_MARK = 9022;		//not used


// clock & reset
input usr_clk;
input x_clk;
input usr_rst_;
 
input mode_10G ;		//i-1, speed modes
input mode_5G  ;		//i-1,            
input mode_2p5G;	 	//i-1,           
input mode_1G  ;		//i-1,            
                                    
input TCORE_MODE;

// register config
input tx_xo_en;
input rx_xo_en;
input bcast_en;
input prom_mode;
input [47:0] mac_addr0;
input [11:0] rx_size;
input rx_check_crc;

// txfifo interface
input [63:0] txfifo_din;
input txfifo_wr_en;
output txfifo_full;
output [12:0] txfifo_usedw;

// tx_encap interface
input [31:0] mac_pause_value;
input [1:0]  tx_b2b_dly;

// rxfifo interface
input rxfifo_rd_cycle;
input rxfifo_rd_en;
output [63:0] rxfifo_dout;
output	[7:0]		rxfifo_ctrl_dout;		//rsvd, pkt_end, pkt_start
output rxfifo_empty;

//for debug
output								rxfifo_full_dbg;
output	[RX_FIFO_ADDR_WIDTH-1 : 0]	rxfifo_usedw_dbg;

output	[63:0]	drx_pkt_data	;             
output			drx_pkt_start ; 
output			drx_pkt_end ; 
output			drx_pkt_we ;
output	[2:0]	drx_pkt_beat_bcnt	;
output	[7:0]	drx_pkt_be	;
output	[31:0]	drx_crc32 ;
output			drx_crc_vld ;
output			drx_crc_err ;
output			drx_crc_err_dly1 ;

//pre-parser FIFO
input			cs_fifo_rd_en	;	//i-1
output [63:0] 	ipcs_fifo_dout	;	
output			cs_fifo_empty	;	//o-1, for debug

// front end interface
input [07:0] xgmii_rxc; 
input [63:0] xgmii_rxd; 
input [07:0] xgmii_rxp;

input			br_sof4 ;

input  [31:0] fmac_ctrl1_dly	;	//i-32
input		  fmac_rxd_en	;		//i-1
output [07:0] xgmii_txc; 
output [63:0] xgmii_txd;

// to mac_register.v
output [31:0] FMAC_TX_PKT_CNT;
output [31:0] FMAC_RX_PKT_CNT_LO;		
output [31:0] FMAC_RX_PKT_CNT_HI;		

output [31:0] FMAC_TX_BYTE_CNT;
output [31:0] FMAC_RX_BYTE_CNT_LO;		
output [31:0] FMAC_RX_BYTE_CNT_HI;		

output [31:0] FMAC_RX_UNDERSIZE_PKT_CNT;		
output [31:0] FMAC_RX_CRC_ERR_CNT;				
output [31:0] FMAC_DCNT_OVERRUN;
output [31:0] FMAC_DCNT_LINK_ERR;
output [31:0] FMAC_PKT_CNT_OVERSIZE;
output		  FIFO_OV_IPEND;

output [31:0] FMAC_PKT_CNT_JABBER;		
output [31:0] FMAC_PKT_CNT_FRAGMENT;	

//Interface to the FMAC reg IF
output	[31:0]	STAT_GROUP_LO_DOUT;		
output	[31:0]	STAT_GROUP_HI_DOUT;		
input	[9:0]	STAT_GROUP_addr; 
input			STAT_GROUP_sel; 
input			fmac_rx_clr_en;

input			fmac_tx_clr_en;


output	[32:0]		FMAC_RX_PKT_CNT64_LO;
output	[31:0]		FMAC_RX_PKT_CNT64_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT127_LO;
output	[31:0]		FMAC_RX_PKT_CNT127_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT255_LO;
output	[31:0]		FMAC_RX_PKT_CNT255_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT511_LO;
output	[31:0]		FMAC_RX_PKT_CNT511_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT1023_LO;
output	[31:0]		FMAC_RX_PKT_CNT1023_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT1518_LO;
output	[31:0]		FMAC_RX_PKT_CNT1518_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT2047_LO;
output	[31:0]		FMAC_RX_PKT_CNT2047_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT4095_LO;
output	[31:0]		FMAC_RX_PKT_CNT4095_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT8191_LO;
output	[31:0]		FMAC_RX_PKT_CNT8191_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT9018_LO;
output	[31:0]		FMAC_RX_PKT_CNT9018_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT9022_LO;
output	[31:0]		FMAC_RX_PKT_CNT9022_HI;
      	      		
output	[32:0]		FMAC_RX_PKT_CNT9199P_LO;
output	[31:0]		FMAC_RX_PKT_CNT9199P_HI;


reg		cs_fifo_rst ;		//reset pre-parser fifo

wire	wr_nbyte	;

wire	[15:0]	nbytes;

wire	[9:0]	ipcs_fifo_wrusedw ;		

wire	[63:0]	pkt_data;
wire			pkt_we, pkt_start, pkt_end ;


// wires between txfifo & tx_encap
wire txfifo_empty;

//pre signals: input to mux (to read from TX fifo) - 5 sep 2018
wire pre_txfifo_rd_en_1G;  	
wire pre_txfifo_rd_en_10G; 

wire txfifo_rd_en = mode_1G? pre_txfifo_rd_en_1G : 
						pre_txfifo_rd_en_10G;

wire [63:0] txfifo_dout; 

//pre output signals from 1G wrapper
wire	[7:0]	pre_gmii_txd;
wire			pre_gmii_txc;

//pre output signals from 10G wrapper
wire	[63:0]	pre_xgmii_txd;
wire	[7:0]	pre_xgmii_txc;

wire rxfifo_full;
reg	 rxfifo_full_dbg;

wire 	[RX_FIFO_ADDR_WIDTH : 0] rxfifo_rdusedw;	

wire 	[RX_FIFO_ADDR_WIDTH-1:0] rxfifo_usedw;		//not used, tie lo
assign	rxfifo_usedw	= 12'd0 ;		//keep from floating

reg 	[RX_FIFO_ADDR_WIDTH-1:0] rxfifo_usedw_dbg;

wire 	[RX_FIFO_ADDR_WIDTH : 0] rxfifo_wrusedw;

wire [RX_DRAM_ADDR_WIDTH:0]    xgmir2derx_wptr;
wire [RX_DRAM_ADDR_WIDTH-1:0]  raddr_marker;

wire	clr_pkt_cnt_oversize;

wire	add_lo_bcast	;		//  these signals are 250Mhz pre-synced
wire	add_lo_mcast	;		// 
wire	clr_carry_cast	;		// clr the carry of the B/Mcast group
wire	add_hi_cast		;		// add the HI reg of the B/Mcast group

// wires between rxdram & rx_xgmii
wire [63:0] xgmir2ram_wdata;
wire [RX_DRAM_ADDR_WIDTH-1:0]  xgmir2ram_waddr;
wire 		xgmir2ram_wen;

// wires between tx_encap & rx_xgmii
wire [15:0] rx_pvalue;
wire rx_pause;


//pre signals to differentiate the output to RX
wire pre_rx_pack_1G;
wire pre_rx_pack_10G;
wire rx_pack = mode_1G? pre_rx_pack_1G :
					pre_rx_pack_10G;

// wires between tx_decap & rx_decap
wire	xreq;
wire	xon;

wire pre_xdone_1G;
wire pre_xdone_10G;
wire xdone = mode_1G? pre_xdone_1G :
				pre_xdone_10G;

wire			xaui_mode;

reg	mode_10G_buf ; 
reg	mode_5G_buf  ; 
reg	mode_2p5G_buf; 
reg	mode_1G_buf  ; 


wire [31:0]	chk_crc;
wire [63:0] ram2derx_rdata = 0;

wire		crc32_ok;


wire [4:0] txfifo_usedw_int;   
assign txfifo_usedw = {8'h0, txfifo_usedw_int};

assign raddr_marker	= 12'b0;
assign xreq = 1'b0;
assign xon = 1'b0;

//packet cnt and bcnt from 1G and 10G wrapper 5 sep 2018
wire	[31:0]	PRE_FMAC_TX_PKT_CNT_1G;
wire	[31:0]	PRE_FMAC_TX_PKT_CNT_10G;
wire	[31:0]	PRE_FMAC_TX_BYTE_CNT_1G;
wire	[31:0]	PRE_FMAC_TX_BYTE_CNT_10G;


//buffer
always @(posedge usr_clk) 
	begin
	
		mode_10G_buf    <=	mode_10G ;
		mode_5G_buf     <=	mode_5G  ;
		mode_2p5G_buf	<=	mode_2p5G;
		mode_1G_buf     <=	mode_1G  ;
	
	end




// =========================================
// TRANSMIT PATH
// txfifo -> tx_encap -> tx_xgmii
// =========================================	
txfifo_1024x64 txfifo(
	.data(txfifo_din),
	.wrreq(txfifo_wr_en),
	.rdreq(txfifo_rd_en),
	.wrclk(usr_clk),
	.rdclk(x_clk),
	.aclr(~usr_rst_),
	.q(txfifo_dout),
	.wrfull(txfifo_full),
	.rdempty(txfifo_empty),
	.wrusedw(txfifo_usedw_int)
	 ,.m1__DOT__core__DOT__txfifo__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__wrfull) ,.m1__DOT__core__DOT__txfifo__DOT__rdreq(m1__DOT__core__DOT__txfifo__DOT__rdreq) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_));
	
/*	
	
tx_1G_wrap tx_1G_wrap(
	.x_clk					(x_clk),
	.usr_rst_				(usr_rst_),	

	//tx_encap interface
	.mac_addr0				(mac_addr0),
	.mac_pause_value		(mac_pause_value),
	.tx_b2b_dly				(tx_b2b_dly),
	
	.txfifo_dout			(txfifo_dout),
	.txfifo_empty			(txfifo_empty),
	.pre_txfifo_rd_en_1G	(pre_txfifo_rd_en_1G),				//o-1  read data from tx_fifo
	                                                        	
	.rx_pause				(rx_pause),                     	
	.rx_pvalue				(rx_pvalue),	                	
	.pre_rx_pack_1G			(pre_rx_pack_1G),					//o-1  output to rx
	                                                        	
	.xreq					(xreq),					        	
	.xon					(xon),                          	
	.pre_xdone_1G			(pre_xdone_1G),						//o-1  output to internal wire in tcore
		
	//tx_gmii interface
	.pre_gmii_txd				(pre_gmii_txd),					//o-8
	.pre_gmii_txc				(pre_gmii_txc),					//o-1
	.PRE_FMAC_TX_PKT_CNT_1G		(PRE_FMAC_TX_PKT_CNT_1G),		//o-32
	.PRE_FMAC_TX_BYTE_CNT_1G	(PRE_FMAC_TX_BYTE_CNT_1G),		//o-32
	.fmac_tx_clr_en				(fmac_tx_clr_en)

	);

*/
	
tx_10G_wrap tx_10G_wrap(
	.usr_clk				(usr_clk),			//i-1
	.x_clk					(x_clk),
	.usr_rst_				(usr_rst_),	
	
	.mode_10G 				(mode_10G_buf), 	//i-1, speed modes
	.mode_1G 				(mode_1G_buf), 		//i-1, speed modes
	.mode_5G  				(mode_5G_buf), 		//i-1, 
	.mode_2p5G				(mode_2p5G_buf), 	//i-1, 

	//tx_encap interface
	.mac_addr0				(mac_addr0),
	.mac_pause_value		(mac_pause_value),
	.tx_b2b_dly				(tx_b2b_dly),
	
	.txfifo_dout			(txfifo_dout),
	.txfifo_empty			(txfifo_empty),
	.pre_txfifo_rd_en_10G	(pre_txfifo_rd_en_10G),			//o-1  read data from tx_fifo
	
	.rx_pause				(rx_pause),
	.rx_pvalue				(rx_pvalue),	
	.pre_rx_pack_10G		(pre_rx_pack_10G), 				//o-1  output to rx
	
	.xreq					(xreq),					  
	.xon					(xon),
	.pre_xdone_10G			(pre_xdone_10G),				//o-1  output to internal wire in tcore
		
	//tx_gmii interface
	.xaui_mode					(xaui_mode),				//i-1 a wire 
	.pre_xgmii_txd				(pre_xgmii_txd),			//o-64
	.pre_xgmii_txc				(pre_xgmii_txc),			//o-8
	.PRE_FMAC_TX_PKT_CNT_10G	(PRE_FMAC_TX_PKT_CNT_10G),	//o-32
	.PRE_FMAC_TX_BYTE_CNT_10G	(PRE_FMAC_TX_BYTE_CNT_10G),	//o-32
	.fmac_tx_clr_en				(fmac_tx_clr_en)
	 ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state));	

	
assign	xaui_mode	= (mode_10G_buf);	

wire	rxfifo_wrempty156	;	
/*
fmac_fifo4Kx64 rxfifo(                      
	.aclr		(!usr_rst_ | !fmac_rxd_en)	,	//i-1	
	.data		(pkt_data),                     //i-64 from RX_XGMII 
	.rdclk 		(usr_clk),             			//i-1, 250Mhz         
	.rdreq		(rxfifo_rd_en),   				//i-1, from EXTR
	.wrclk		(x_clk),						//i-1, 156MHz
	.wrreq		(pkt_we),						//i-1
	.q			(rxfifo_dout),            		//o-64 to EXTR                  
	.rdempty	(rxfifo_empty),           		//o-1         (RD EMPTY 250) 
	.rdfull		(),								//o-1	
	.rdusedw	(rxfifo_rdusedw),				//o-12                    
	.wrempty	(rxfifo_wrempty156),			//o-1
	.wrfull		(),
	.wrusedw	(rxfifo_wrusedw)				//o-12
	);
	
wire	[7:0]	pktctrl_din	= {
					6'h0	,	//7:2
					pkt_end	,	//1
					pkt_start	//0
					};
					
reg		[7:0]	rxfifo_ctrl_dout ;
wire	[7:0]	rxfifo_ctrl_q ;

fmac_fifo4Kx8 pktctrl_fifo (
	.aclr		(!usr_rst_ | !fmac_rxd_en)	,	//i-1
	.data		(pktctrl_din ),					//i-8
	.rdclk 		(usr_clk),             			//i-1, 250Mhz         
	.rdreq		(rxfifo_rd_en),   				//i-1, from EXTR
	.wrclk		(x_clk),						//i-1, 156MHz
	.wrreq		(pkt_we),						//i-1   		
	.q			(rxfifo_ctrl_q),				//o-8
	.rdempty	(),
	.rdfull		(),
	.rdusedw	(),
	.wrempty	(),
	.wrfull		(),
	.wrusedw	()
	);
	
	
//always reserve 2048 bytes
assign	rxfifo_full	= (rxfifo_wrusedw >= 16'd3840 ) | (ipcs_fifo_wrusedw >= 9'd500) ;
	
//for field debug support
always @ (posedge usr_clk)
begin
	rxfifo_usedw_dbg 	<= 	rxfifo_usedw;
	rxfifo_full_dbg		<=	rxfifo_full;
	
	//reset the pattern search fifo on RESET and 
	cs_fifo_rst			<= 
		//reset
		!usr_rst_ ? 1'b1 :
		!fmac_rxd_en ? 1'b1 :
		//negate
		1'b0 ;
		
	rxfifo_ctrl_dout	<= 
		//reset
		!usr_rst_ ? 8'd0 :
		rxfifo_ctrl_q ;
	
end
	

wire	[63:0]	ipcs_fifo_din = {
					2'h0,		//63:62
					//nbyte_out[13:0],	//61:48
					nbytes[13:0],	//61:48
					16'h0,		//47:32
					//fpseudo,	//31:16
					16'h0	,	//31:16 temp???
					//fast_ipsum	//15:0
					16'h0			//15:0, temp???
					};
				

//NOTE:  NBYTES is only correct for non_ip pkts
fmac_fifo512x64_2clk ipcs_fifo (
	.aclr		(cs_fifo_rst),   	//i-1
	.data		(ipcs_fifo_din ),   //i-64
	.rdclk		(usr_clk),
	.rdreq		(cs_fifo_rd_en), 	//i-1, 1 pulse rd enable
	.wrclk		(x_clk),
	.wrreq		(wr_nbyte),			//i-1, from RX_XGMII	//26jul2018 kp
	.q			(ipcs_fifo_dout),   //o-64, data out to EXTR {32 rsvd, pseudo, ipsum)
	.rdempty	(cs_fifo_empty),	//26jul2018 kp, used to generate cs_fifo_empty	
	.rdfull		(),
	.rdusedw	(),
	.wrempty	(),
	.wrfull		(),
	.wrusedw	(ipcs_fifo_wrusedw)	//o-9
	);
	
				
	
tcore_rx_xgmii #(RX_DRAM_DEPTH, RX_DRAM_ADDR_WIDTH)	
	rx_xgmii(
	.clk156		(x_clk),		// i-1
	.clk250		(usr_clk),		// i-1
	.rst_		(usr_rst_),		// i-1
                                
	.TCORE_MODE	(TCORE_MODE	),	//i-1
	                                 
	.xaui_mode	(1'b1),			//i-1
		
	.pkt_data	(pkt_data),		//o-64
	.pkt_start	(pkt_start),	//o-1 
	.pkt_end	(pkt_end),		//o-1 
	.pkt_we		(pkt_we	),		//o-1 
	
	.drx_pkt_data		(drx_pkt_data  ),     	//o-64	
	.drx_pkt_start 		(drx_pkt_start ),     	//o-1	 
	.drx_pkt_end 		(drx_pkt_end   ),     	//o-1	 
	.drx_pkt_we 		(drx_pkt_we    ),     	//o-1	 
	.drx_pkt_beat_bcnt	(drx_pkt_beat_bcnt),  	//o-3	 
	.drx_pkt_be			(drx_pkt_be	 ),       	//o-8	 
	.drx_crc32 			(drx_crc32 	 ),       	//o-32	
	.drx_crc_vld 		(drx_crc_vld ),       	//o-1	 
	.drx_crc_err 		(drx_crc_err ),       	//o-1	 
	.drx_crc_err_dly1 	(drx_crc_err_dly1 ),  	//o-1	 
	
	.wen	(xgmir2ram_wen),			// o-1    
	.waddr	(xgmir2ram_waddr),			// o-param
	.wptr	(xgmir2derx_wptr),			// o-param
	.raddr_marker	(raddr_marker),		// i-param
	.wdata			(xgmir2ram_wdata),	// o-64   
	
	.rx_pause	(rx_pause),		   	// o-1                             
	.rx_pvalue	(rx_pvalue),		// o-16                            
	.rx_pack	(rx_pack),			// i-1                             
                                   	                                   
	.pause_en	(rx_xo_en),		   	// i-1                             
	.bcast_en	(bcast_en),		   	// i-1                             
	.pmode		(prom_mode),		// i-1, promiscuous mode enable bit
	.daddr0		(mac_addr0),		// i-48                            
	                               	
	.rsize		(rx_size),			// i-12                           
	.rxp		(xgmii_rxp),   		// i-8, not used, always 0                           
	.rxd		(xgmii_rxd),		// i-64
	.rxc		(xgmii_rxc),		// i-8 
	                                       
	.br_sof4	(br_sof4),		
	
	//from Register
	.fmac_ctrl1_dly	(fmac_ctrl1_dly),	//i-32, contains the max_pkt_size and enable	
	.fmac_rxd_en	(fmac_rxd_en),		//i-1, from TSPE_CTRL1  reg                 
	
	// To Register
	.FMAC_DCNT_OVERRUN	(FMAC_DCNT_OVERRUN),		    // o-32
	.FMAC_DCNT_LINK_ERR	(FMAC_DCNT_LINK_ERR),	    	// o-32
	.FMAC_PKT_CNT_OVERSIZE	(FMAC_PKT_CNT_OVERSIZE),	// o-32
	.FIFO_OV_IPEND			(FIFO_OV_IPEND),			// o-1 
	
	//from DECAP unit (instead of passing the addr bus around)
	.clr_pkt_cnt_oversize(clr_pkt_cnt_oversize),    	//i-1
	
	//to DECAP unit for register tracking
	.add_lo_bcast	(add_lo_bcast),		  // o-1, these signals are 250Mhz pre-synced
	.add_lo_mcast	(add_lo_mcast),		  // o-1                                     
	.clr_carry_cast	(clr_carry_cast),	  // o-1 clr the carry of the B/Mcast group  
	.add_hi_cast	(add_hi_cast),		  // o-1 add the HI reg of the B/Mcast group 
	
    .vlan_ip		(		),	          //o-1                                 
    .normal_ip		(	  	),	          //o-1                                 
    .non_ip			(		    ),	      //o-1                                 
    .pkt_reject		(	),		          //o-1, EXTR use to drop the pkt at end
    .pkt_jumbo_flag	(	),		          //o-1    (not used)                   
    .pkt_ipver		(	  	),	          //o-4    (not used)                   
    
    .wr_nbyte		(wr_nbyte	),        //o-1               
    .nbytes_out		(nbytes		),        //o-16, pkt byte cnt
    .rxfifo_full	(rxfifo_full),        //i-1               
    
    .chk_crc		(chk_crc),
    
    .crc32_ok		(crc32_ok),
    .fmac_rx_clr_en	(fmac_rx_clr_en)
	
	);	
	
	
	
rx_decap #(FMAC_ID, RX_FIFO_DEPTH, RX_FIFO_ADDR_WIDTH, RX_DRAM_DEPTH, RX_DRAM_ADDR_WIDTH) 
	rx_decap(
	.clk250		(usr_clk),				// i-1
	.clk156		(x_clk),				// i-1
	.rst_		(usr_rst_),				// i-1
	
	//output to pre-parser FIFO  for EXTR & filter				
	.full		(rxfifo_full),			// i-1				
	.usedw		(rxfifo_usedw),			// i-param 12
			
	.rx_check_crc		(rx_check_crc),		// i-1	From Register		
	.fmac_ctrl1_dly 	(fmac_ctrl1_dly),	//i-32 from reg
	.fmac_rxd_en		(fmac_rxd_en),		//i-1

	// To fmac_register_if
	.FMAC_RX_CRC_ERR_CNT		(FMAC_RX_CRC_ERR_CNT),			// o-32
	.FMAC_RX_UNDERSIZE_PKT_CNT	(FMAC_RX_UNDERSIZE_PKT_CNT),	// o-32
	.FMAC_RX_PKT_CNT_LO			(FMAC_RX_PKT_CNT_LO),			// o-32
	.FMAC_RX_PKT_CNT_HI			(FMAC_RX_PKT_CNT_HI),			// o-32
	.FMAC_RX_BYTE_CNT_LO		(FMAC_RX_BYTE_CNT_LO),			// o-32
	.FMAC_RX_BYTE_CNT_HI		(FMAC_RX_BYTE_CNT_HI),			// o-32
	
	.FMAC_PKT_CNT_JABBER(FMAC_PKT_CNT_JABBER),			// o-32
	.FMAC_PKT_CNT_FRAGMENT(FMAC_PKT_CNT_FRAGMENT),		// o-32
	
	//Interface to 64 bit Statistic register group, in DECAP
	.STAT_GROUP_LO_DOUT	(STAT_GROUP_LO_DOUT),			// o-32, clk250
	.STAT_GROUP_HI_DOUT	(STAT_GROUP_HI_DOUT),			// o-32, clk250
	.STAT_GROUP_addr	(STAT_GROUP_addr),				// i-10, address to select the register within the STAT GROUP
	.STAT_GROUP_sel		(STAT_GROUP_sel),				// i-1
	.fmac_rx_clr_en		(fmac_rx_clr_en),				//i-1
	
	.wptr				(xgmir2derx_wptr),	 			// i-param 13bit, from XGMII 156MHz signal           
	.rdata				(ram2derx_rdata),             	// i-64, from dual RAM buffer to DECAP, 250MHz
	
	//to RX_XGMII
	.clr_pkt_cnt_oversize	(clr_pkt_cnt_oversize),		//o-1
	
		//to RX_XGMII unit for register tracking
	.add_lo_bcast		(add_lo_bcast),		// i-1, these signals are 250Mhz pre-synced
	.add_lo_mcast		(add_lo_mcast),		// i-1                                     	
	.clr_carry_cast		(clr_carry_cast),	// i-1 clr the carry of the B/Mcast group	
	.add_hi_cast		(add_hi_cast),		// i-1 add the HI reg of the B/Mcast group  	
	
	// Interface to tx_encap
	.tx_xo_en			(tx_xo_en),			// i-1 From Register
	.xdone				(xdone),			// i-1		
	
						
		
	.FMAC_RX_PKT_CNT64_LO(FMAC_RX_PKT_CNT64_LO),
	.FMAC_RX_PKT_CNT64_HI(FMAC_RX_PKT_CNT64_HI),
	
	.FMAC_RX_PKT_CNT127_LO(FMAC_RX_PKT_CNT127_LO),
	.FMAC_RX_PKT_CNT127_HI(FMAC_RX_PKT_CNT127_HI),
	
	.FMAC_RX_PKT_CNT255_LO(FMAC_RX_PKT_CNT255_LO),
	.FMAC_RX_PKT_CNT255_HI(FMAC_RX_PKT_CNT255_HI),
	
	.FMAC_RX_PKT_CNT511_LO(FMAC_RX_PKT_CNT511_LO),
	.FMAC_RX_PKT_CNT511_HI(FMAC_RX_PKT_CNT511_HI),
	
	.FMAC_RX_PKT_CNT1023_LO(FMAC_RX_PKT_CNT1023_LO),
	.FMAC_RX_PKT_CNT1023_HI(FMAC_RX_PKT_CNT1023_HI),
	
	.FMAC_RX_PKT_CNT1518_LO(FMAC_RX_PKT_CNT1518_LO),
	.FMAC_RX_PKT_CNT1518_HI(FMAC_RX_PKT_CNT1518_HI),
	
	.FMAC_RX_PKT_CNT2047_LO(FMAC_RX_PKT_CNT2047_LO),
	.FMAC_RX_PKT_CNT2047_HI(FMAC_RX_PKT_CNT2047_HI),
	
	.FMAC_RX_PKT_CNT4095_LO(FMAC_RX_PKT_CNT4095_LO),
	.FMAC_RX_PKT_CNT4095_HI(FMAC_RX_PKT_CNT4095_HI),
	
	.FMAC_RX_PKT_CNT8191_LO(FMAC_RX_PKT_CNT8191_LO),
	.FMAC_RX_PKT_CNT8191_HI(FMAC_RX_PKT_CNT8191_HI),
	
	.FMAC_RX_PKT_CNT9018_LO(FMAC_RX_PKT_CNT9018_LO),
	.FMAC_RX_PKT_CNT9018_HI(FMAC_RX_PKT_CNT9018_HI),
	
	.FMAC_RX_PKT_CNT9022_LO(FMAC_RX_PKT_CNT9022_LO),
	.FMAC_RX_PKT_CNT9022_HI(FMAC_RX_PKT_CNT9022_HI),
	
	.FMAC_RX_PKT_CNT9199P_LO(FMAC_RX_PKT_CNT9199P_LO),
	.FMAC_RX_PKT_CNT9199P_HI(FMAC_RX_PKT_CNT9199P_HI),
	.nbyte 			(nbytes),
	.pkt_done		(wr_nbyte),
					
	.crc_chk		(chk_crc),
	.crc32			(drx_crc32),
	.crc32_vld_		(drx_crc_vld),
	
	.crc_ok 		(crc32_ok)
	
	);	

	
*/	
	
	
reg		[63:0]	xgmii_dout_reg;
reg		[7:0]	xgmii_cout_reg;
reg		[31:0]	FMAC_TX_PKT_CNT;
reg		[31:0]	FMAC_TX_BYTE_CNT;

always @(posedge x_clk)
begin
	if (!usr_rst_)
		begin
		FMAC_TX_PKT_CNT 		<= 32'h0;
		FMAC_TX_BYTE_CNT 		<= 32'h0;
		xgmii_dout_reg		<= 64'h0707070707070707;
		xgmii_cout_reg		<= 8'hFF;
		end
	else
		begin
		FMAC_TX_PKT_CNT <= mode_1G? PRE_FMAC_TX_PKT_CNT_1G : PRE_FMAC_TX_PKT_CNT_10G;
		FMAC_TX_BYTE_CNT <= mode_1G? PRE_FMAC_TX_BYTE_CNT_1G : PRE_FMAC_TX_BYTE_CNT_10G;
		
		xgmii_dout_reg[63:8] <= mode_1G? 56'h07070707070707 : pre_xgmii_txd[63:8];
		xgmii_dout_reg[7:0]	 <= mode_1G? pre_gmii_txd : pre_xgmii_txd[7:0];
		
		xgmii_cout_reg[7:1]	<=	mode_1G? 7'b1111111 : pre_xgmii_txc[7:1];
		xgmii_cout_reg[0]	<=	mode_1G? pre_gmii_txc : pre_xgmii_txc[0];	
		end
end		

assign xgmii_txd 	= xgmii_dout_reg;
assign xgmii_txc 	= xgmii_cout_reg;

	
	
	
 assign m1__DOT__core__DOT__txfifo_usedw = txfifo_usedw;
 assign m1__DOT__core__DOT__rx_pause = rx_pause;
 assign m1__DOT__core__DOT__mode_5G = mode_5G;
 assign m1__DOT__core__DOT__mode_2p5G = mode_2p5G;
 assign m1__DOT__core__DOT__mode_1G = mode_1G;
 assign m1__DOT__core__DOT__mode_10G = mode_10G;
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on


module tx_10G_wrap(
    usr_clk,				  	 //i-1 for gmii clk
    x_clk,				  	  	  //i-1	156.25 Mhz (really coreclkout)
    usr_rst_,				  
      
   	mode_10G ,				 //i-1, speed modes  
   	mode_1G ,				 //i-1, speed modes 
	mode_5G  ,				 //i-1, speed modes 
	mode_2p5G,				 //i-1, speed modes 

    mac_addr0,				 //i-48 input from top-level to (psaddr) and rx 
    mac_pause_value,		 //i-32 input from top-level to (mac_pause_value) 
    tx_b2b_dly,			 	 //i-2  input from top-level to (tx_b2b_dly) 
   	
    txfifo_dout,			  //i-64 input data from tx_fifo
    txfifo_empty,			  //i-1  indicates tx_fifo is empty   
    pre_txfifo_rd_en_10G,     //o-1  read data from tx_fifo
    
	rx_pause,				  //i-1  input from rx
    rx_pvalue,				  //i-16 input from rx
	pre_rx_pack_10G,		  //o-1  output to rx

	xreq,					   //i-1  input from internal wire in tcore (assign xreq = 0)
	xon,				       //i-1  input from internal wire in tcore (assign xon = 0)
	pre_xdone_10G,			   //o-1  output to internal wire in tcore
	
    xaui_mode,				   //i-1 input from internal wire in tcore (assign xaui_mode = 3'b000)
    
    pre_xgmii_txd,			   //o-64 data output to tcore
    pre_xgmii_txc,			   //o-8 ctrl output to tcore
    PRE_FMAC_TX_PKT_CNT_10G,   //o-32 output to tcore
    PRE_FMAC_TX_BYTE_CNT_10G,  //o-32 output to tcore
    
    fmac_tx_clr_en, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync, m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en);
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G;
 output [1:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en;
    
	input 			usr_clk;
	input 			x_clk;
	input 			usr_rst_;
	
	input			mode_10G ;
	input			mode_1G  ;
	input			mode_5G  ;
	input			mode_2p5G;
	
	//tx_encap interface
	input [47:0] 	mac_addr0;
	input [31:0] 	mac_pause_value;
	input [1:0]  	tx_b2b_dly;
	
	input [63:0] 	txfifo_dout;
	input 			txfifo_empty;
	output 			pre_txfifo_rd_en_10G;
	
	input 			rx_pause;
	input [15:0] 	rx_pvalue;
	output 			pre_rx_pack_10G;
	
	input			xreq;
	input			xon;
	output			pre_xdone_10G;
	
	//tx_gmii interface
	input			xaui_mode;
	output [63:0] 	pre_xgmii_txd;
	output [7:0]	pre_xgmii_txc;
	output [31:0] 	PRE_FMAC_TX_PKT_CNT_10G;
	output [31:0] 	PRE_FMAC_TX_BYTE_CNT_10G;
	input 			fmac_tx_clr_en;
	
	wire [63:0] 	entx2ram_wdata;
	wire [15:0] 	rbytes;
	wire 			rts_10G;
	wire 			cts_10G;
	
	
	reg	mode_10G_buf ; 
	reg	mode_1G_buf  ; 
	reg	mode_5G_buf  ; 
	reg	mode_2p5G_buf; 

	
always @(posedge x_clk) 
	begin
	
		mode_10G_buf    <=	mode_10G ;
		mode_1G_buf    	<=	mode_1G ;
		mode_5G_buf     <=	mode_5G  ;
		mode_2p5G_buf	<=	mode_2p5G;
	
	end




tx_encap tx_encap(
	.clk					(x_clk),     			// i-1 	
	.rst_					(usr_rst_),             // i-1     
	 											   // i-3
	.mode_10G 				(mode_10G_buf), 		//i-1, speed modes	
	.mode_1G 				(mode_1G_buf), 			//i-1, speed modes	
	.mode_5G  				(mode_5G_buf), 			//i-1, speed modes	
                                  	        
	.rts					(rts_10G),               // o-1   
	.wdata					(entx2ram_wdata),        // o-64	   
	.rbytes					(rbytes),                // o-16   
 	
	.psaddr					(mac_addr0),				// i-48
	.mac_pause_value 		(mac_pause_value),			// i-32 
	.tx_b2b_dly				(tx_b2b_dly),           	// i-2 
	                                   	        
	.rx_pause				(rx_pause),               	// i-1
	.rx_pvalue				(rx_pvalue),             	// i-16
	.rx_pack				(pre_rx_pack_10G),          // o-1 
	                                   	        
	.txfifo_empty 			(txfifo_empty),      		 // i-1
    .txfifo_rd_en 			(pre_txfifo_rd_en_10G),      // o-1 
	.txfifo_dout 			(txfifo_dout),        		 // i-64
	                                   	         	
	.xreq					(xreq),						 // 	i-1
	.xon					(xon),						 // 	i-1
	.xdone					(pre_xdone_10G)				 // 	o-1
	                        			   	           	
	 ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok));
	  
tx_xgmii tx_xgmii(
	.clk250					(x_clk),					  // i-1
	.clk156					(x_clk),					  // i-1
	.rst_					(usr_rst_),					  // i-1
     
   	.mode_10G 				(mode_10G_buf), 			  // i-1
   	.mode_1G 				(mode_1G_buf), 				  // i-1
	.mode_5G  				(mode_5G_buf), 				  // i-1
	.mode_2p5G				(mode_2p5G_buf), 			  // i-1
                       									 
	.xaui_mode				(xaui_mode),					 // i-1
	
	.rts					(rts_10G),						  // i-1
	.rdata					(entx2ram_wdata),				   // i-64
	.rbytes					(rbytes),						    // i-16
	
	.cts					(cts_10G),						 //o-1
                            			
	.txd					(pre_xgmii_txd),				 // o-64, use this for OLDer TX_XGMII
	.txc					(pre_xgmii_txc),				 // o-8
	
	.FMAC_TX_PKT_CNT		(PRE_FMAC_TX_PKT_CNT_10G), 		  // o-32
	.FMAC_TX_BYTE_CNT		(PRE_FMAC_TX_BYTE_CNT_10G),		  // o-32
	.fmac_tx_clr_en			(fmac_tx_clr_en)				   // i-1
	 ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel)); 
	
	
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G = mode_2p5G;
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on


module tx_1G_wrap(
    x_clk,				  			   //i-1 for encap clk
    usr_rst_,			

    mac_addr0,						   //i-48 input from top-level to (psaddr) and rx
    mac_pause_value,				   //i-32 input from top-level to (mac_pause_value)
    tx_b2b_dly,			 			    //i-2  input from top-level to (tx_b2b_dly)
   	
    txfifo_dout,					   //i-64 input data from tx_fifo
    txfifo_empty,					   //i-1  indicates tx_fifo is empty 
    pre_txfifo_rd_en_1G,  			   //o-1  read data from tx_fifo
    
	rx_pause,						   //i-1  input from rx 
    rx_pvalue,						   //i-16 input from rx
	pre_rx_pack_1G,					   //o-1  output to rx

	xreq,							   //i-1  input from internal wire in tcore (assign xreq = 0)
	xon,				  			   //i-1  input from internal wire in tcore (assign xon = 0)
	pre_xdone_1G,					   //o-1  output to internal wire in tcore
	
    pre_gmii_txd,			  		   //o-8 data output to tcore
    pre_gmii_txc,			  		   //o-1 ctrl output to tcore
    PRE_FMAC_TX_PKT_CNT_1G,			   //o-32 output to tcore
    PRE_FMAC_TX_BYTE_CNT_1G,		   //o-32 output to tcore
    fmac_tx_clr_en	  				   //i-1 output to internal wire in tcore

    );
    
	input 			x_clk;
	input 			usr_rst_;

	//tx_encap interface
	input [47:0] 	mac_addr0;			   //i-48 input from top-level to (psaddr) and rx
	input [31:0] 	mac_pause_value;	    //i-32 input from top-level to (mac_pause_value)
	input [1:0]  	tx_b2b_dly;			  //i-2  input from top-level to (tx_b2b_dly)
	
	input [63:0] 	txfifo_dout;		   //i-64 input data from tx_fifo
	input 			txfifo_empty;		   //i-1  indicates tx_fifo is empty
	output 			pre_txfifo_rd_en_1G;   //o-1  read data from tx_fifo
	
	input 			rx_pause;			   //i-1  input from rx
	input [15:0] 	rx_pvalue;			   //i-16 input from rx
	output 			pre_rx_pack_1G;		   //o-1  output to rx
	
	input			xreq;				   //i-1  input from internal wire in tcore (assign xreq = 0)
	input			xon;				   //i-1  input from internal wire in tcore (assign xon = 0)
	output			pre_xdone_1G;		   //o-1  output to internal wire in tcore
	
	output [7:0] 	pre_gmii_txd;		   //o-8 data output to tcore
	output 			pre_gmii_txc;			//o-1 ctrl output to tcore
	output [31:0] 	PRE_FMAC_TX_PKT_CNT_1G;	  //o-32 output to tcore
	output [31:0] 	PRE_FMAC_TX_BYTE_CNT_1G;  //o-32 output to tcore
	input 			fmac_tx_clr_en;			  //i-1 output to internal wire in tcore
	
	wire [63:0] 	entx2ram_wdata;
	wire [15:0] 	rbytes;
	wire 			rts_1G;
	wire 			cts_1G;
	


gige_tx_encap gige_tx_encap(
	
	.clk					(x_clk),     			//i, 156.25 Mhz clock	
	.rst_					(usr_rst_),             //i,      	

	.rts					(rts_1G),               //o,          	
	.wdata					(entx2ram_wdata),       //o-64, data output from encap     	
	.rbytes					(rbytes),               //o-16, holds data size    	
     
	.cts					(cts_1G),				//i, from gmii		
	
	.psaddr					(mac_addr0),					
	.mac_pause_value 		(mac_pause_value),	
	.tx_b2b_dly				(tx_b2b_dly),           	
	                                   	
	.rx_pause				(rx_pause),               	
	.rx_pvalue				(rx_pvalue),           
	.rx_pack				(pre_rx_pack_1G),	
	                                   	
	.txfifo_empty 			(txfifo_empty),      	  //i, Indicates is FIFO is empty or not
    .txfifo_rd_en 			(pre_txfifo_rd_en_1G), 	  //o, read request from Gmii to FIFO
	.txfifo_dout 			(txfifo_dout),        	  //i,64 input data to encap
	                                   	
	.xreq					(xreq),						
	.xon					(xon),							
	.xdone					(pre_xdone_1G)					
	                        			
	); 
	
gige_tx_gmii gige_tx_gmii(

	.clk250					(x_clk),					  //i, clock
	.clk125					(x_clk),   	
	.rst_					(usr_rst_),		

	.rts					(rts_1G),    				 //i, to gmii from encap
	.rdata					(entx2ram_wdata),			 //i-64 input data from encap to gmii
	.rbytes					(rbytes),					 //i-16, holds data size in Bytes
	.cts					(cts_1G),					 //o,
	                            	
	.gmii_txd				(pre_gmii_txd),				  //o-64,
	.gmii_txc				(pre_gmii_txc),				  //o,
	.gmii_tx_en				(),		
	.gmii_tx_vld			(),		
	
	.FMAC_TX_PKT_CNT		(PRE_FMAC_TX_PKT_CNT_1G),  
	.FMAC_TX_BYTE_CNT		(PRE_FMAC_TX_BYTE_CNT_1G),	
	.fmac_tx_clr_en			(fmac_tx_clr_en)  
	
    );   
    
    
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on

module tx_encap(
	clk,			// i-1
	rst_,			// i-1
	
	mode_10G ,		//i-1, speed modes
	mode_1G  ,		//i-1, 
	mode_5G,		//i-1, 

	rts,			// o-1
	wdata,			// o-64
	rbytes,			// o-16

	psaddr,				  // i-48
	mac_pause_value,	  // i-32
	tx_b2b_dly,			  // i-2
	
	rx_pause,			  // i-1
	rx_pvalue,			  // i-16
	rx_pack,			  // o-1
	
	txfifo_empty,		  // i-1
	txfifo_rd_en,		  // o-1
	txfifo_dout,		  // i-64
	
	xreq,				  // i-1
	xon,				  // i-1
	xdone, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout);
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output [1:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout;
	

input [47:0] psaddr;		// pause source address, source mac address in the pause frame to transmit
input [31:0] mac_pause_value;	   // [31:16] = tx_pause_value,	[15:0] = rx_pause_value
input [1:0]	 tx_b2b_dly;
				
input txfifo_empty;				  // i, high if FIFO is empty
output txfifo_rd_en;			  //o, read request to the FIFO

input [63:0] txfifo_dout; 		  // output of FIFO to input of this module

input clk;						  //i,
input rst_;						  //i,

input	mode_10G ;				  //i, indicates the speed mode.
input	mode_1G  ;				   //i, indicates the speed mode.
input	mode_5G;				   //i, indicates the speed mode.

output rts;						  //o, Request to send data to tx_xgmii.
output [63:0] wdata;			  //o-64, data output
output [15:0] rbytes;			 //o-16, holds the data size in Bytes

input rx_pause;
input [15:0] rx_pvalue;
output rx_pack;

input	xreq; 					  // need to transmit a pause frame, pause value is determined by xon
input	xon;    				  // 1: use tx_pause value as in register , 0: use pause value of 0 to abort the previous pause
output	xdone;  				  // pause frame has been transmitted   
	
reg txfifo_rd_en;
reg [15:0] rbytes;
reg rts;
reg [63:0] wdata;				 // o-64 data output

reg wsel;
reg [16:0] ptimer;
reg [3:0] p_reg_count;
reg p_start;

reg tx_rdy;						  // tell if there is no pause frame activating
reg rx_pack;
reg rx_pause_sync;
reg [15:0] rx_pvalue_sync;

reg [15:0] bytes_remain;		// keeps track of total bytes remaning to transmit

reg [2:0] counter;			   // used for different speed mode. 
reg pulse_0;
reg pulse_1;


parameter[7:0] 
	IDLE		= 8'h01 ,
	READSIZE	= 8'h02 ,
	READ1		= 8'h04 ,
	MAC_HDR		= 8'h08 ,
	MAC_DAT     = 8'h10 ,
	P_REQ		= 8'h20 ,
	P_PREAM		= 8'h40 ,
	P_PKT		= 8'h80	;
reg [7:0] state;

wire st_idle;		assign	st_idle		=	state[0];
wire st_readsize;	assign	st_readsize = 	state[1];
wire st_read1;	    assign	st_read1    = 	state[2];
wire st_mac_hdr;	assign	st_mac_hdr = 	state[3];
wire st_mac_dat;	assign	st_mac_dat	=	state[4];
wire st_p_req;		assign	st_p_req 	=	state[5];
wire st_p_pkt;		assign 	st_p_pkt	=	state[7];

reg tx_dvld;

// Counter for tx_b2b_dly
reg [5:0] b2b_cnt_val ;
always @(posedge clk)
begin
	if(!rst_)
	begin
		b2b_cnt_val <= 2'd0 ;
	end
	else
	begin
		case(tx_b2b_dly)
		2'b10 : b2b_cnt_val <= 6'd5  ; 
		2'b11 : b2b_cnt_val <= 6'd61 ; 	  // 64x64 bit delay (design already has 2, count another 62 clks (61 to 0))
		default: b2b_cnt_val <= 6'd0 ; 
		endcase
	end
end

reg [5:0] b2b_counter;
reg		  b2b_ok;
always @ (posedge clk)
begin
	if (!rst_)
	begin
		b2b_counter	<=	6'd0;
		b2b_ok		<=	1'b1;
	end
	
	else
	begin
		b2b_counter <= (st_mac_dat)? b2b_cnt_val : ((st_idle & |b2b_counter)? (b2b_counter - 6'd1) : b2b_counter);
		b2b_ok		<=	!(|b2b_counter); // b2b_counter == 6'h0
	end
end


// PAUSE TX
always @ (posedge clk)
begin
	rx_pause_sync <=   rx_pause;
	rx_pvalue_sync<=   rx_pvalue;
end

always @ (posedge clk)
begin
	if (!rst_)
	begin
		ptimer <=   17'h1ffff;
		p_reg_count <=   4'h7 ;
		p_start <=   0;
	end
	
	else
	begin
		ptimer    <=   rx_pause_sync ? {rx_pvalue_sync - 17'h1} : (ptimer[16] ? ptimer : ((|p_reg_count)? ptimer: (ptimer - 17'h1)));
		p_start <=   ptimer[16]? 1'b0 : (rx_pause_sync? 1'b0 : 1'b1);
		p_reg_count <=   p_start? ((|p_reg_count)? (p_reg_count - 4'h1) : 4'h7) : 4'h7;
	end
end


// Transmit Pause
reg [63:0] 	p_data;
reg	[2:0]	p_cnt;
reg			p_1;
reg			p_done;
reg			p_send;
reg			xdone;

always @ (posedge clk)
begin
	if (!rst_)
	begin
		p_data <= 64'h0;
		p_cnt <= 3'd7;
		p_1 <= 1'b0;
		p_done <= 1'b0;
		p_send <= 1'b0;
		xdone  <= 1'h0; 
	end
	
	else
	begin
		p_cnt <= st_p_pkt? (p_cnt - 3'd1) : 3'd7;
		p_1 <= st_p_req; // The state machine will never enter the state p_req. 
		p_done <= p_cnt == 3'h0;
		p_send <= p_1? 1'b1 : (p_done? 1'b0 : p_send);
		xdone  <= p_cnt == 3'h1;
		
		case ({p_1, p_cnt})
		4'b1111: p_data <= {psaddr[39:32], psaddr[47:40], 48'h0100_00c2_8001}; 
		4'b0111: p_data <= {32'h0100_0888, psaddr[7:0], psaddr[15:8], psaddr[23:16], psaddr[31:24]};	
		4'b0110: p_data <= xon? {48'h0, mac_pause_value[23:16], mac_pause_value[31:24]}: 64'h0;
		default: p_data <= 64'h0;
		endcase
	end
end


 // PAUSE TX
always@(posedge clk)
begin

	if(!rst_)
		wdata <= 64'hd5555555555555FB;
	
	else
	// The p_send will always stay 0, thus the output cannot be the p_data.
		wdata	<=	mode_10G? (p_send? p_data : (wsel? 64'hd5555555555555FB : txfifo_dout)) :
	            	(p_send? p_data : 
	            	(wsel? ((st_idle & pulse_0)? 64'hd5555555555555FB : wdata) : (( (st_mac_hdr | st_mac_dat) & pulse_0)? txfifo_dout : wdata))); 
	            	
end

// STATE MACHINE

always@(posedge clk)
if(!rst_)
begin
	state 	<=  IDLE;
	rbytes 	<=  16'h0;
	wsel   	<=  1'b1;
	rx_pack	<=  1'b0;
	tx_rdy 	<=  1'b0;
	tx_dvld <= 	1'b0;
	bytes_remain <=   16'h0;
	txfifo_rd_en <=   1'b0;
	rts <= 1'b0;
// different values for different speed modes.	
	counter <= (mode_10G | mode_1G)? 3'd0 :
	           (mode_5G? 3'd1 : 3'd3);
	           
	pulse_0 <= 1'b0;
    pulse_1 <= 1'b0;
end
else
begin
	tx_rdy    <=   ptimer[16];
	rx_pack   <=   rx_pause_sync; 
	rts		  <=   mode_10G? (st_readsize | st_p_req) :
	               ((st_read1 & pulse_1)  | st_p_req);
	
    counter <= (mode_10G | mode_1G)? counter :
               (mode_5G? ((|counter)? counter - 3'd1 : 3'd1) :
               ((|counter)? counter - 3'd1 : 3'd3));
                  
    pulse_0 <= (mode_10G | mode_1G)? pulse_0 :
               ((pulse_1)? 1'b1 : 1'b0);
    pulse_1 <= (mode_10G | mode_1G)? pulse_1 :
               ((counter == 3'd1)? 1'b1 : 1'b0);
	
	case(state)
	
	IDLE:
	begin
		wsel  <= 1'b1;
		
		if (b2b_ok && xreq) // Notice: For now, the xreq is assigned to zero all the time. Thus, the state machine will never go in the state P_REQ.
		begin
			state <= P_REQ;
			txfifo_rd_en <= 1'b0;
		end
		
		else if (b2b_ok && !txfifo_empty && tx_rdy && !rx_pause_sync)
		begin
			state <= mode_10G? READSIZE : 
			         (pulse_0? READSIZE : IDLE); 
			txfifo_rd_en <= mode_10G? 1'b1 : txfifo_rd_en;
		end
		
		else
		begin
			state <= IDLE;
			txfifo_rd_en <= 1'b0;
		end
	end
	
	READSIZE:
	begin
		wsel  <= 1'b1;
		txfifo_rd_en <=   mode_10G? 1'b1 :
                         (pulse_1? 1'b1 : 1'b0);
		state <=  mode_10G? READ1 : 
		          (pulse_0? READ1 : READSIZE);
	end
// read the size of data in bytes, caluclate byte remaining.	
	READ1:
	begin
		txfifo_rd_en <=  mode_10G? 1'b1 :
                         (pulse_1? 1'b1 : 1'b0);
		state <=   mode_10G? MAC_HDR :
		           (pulse_0? MAC_HDR : READ1);
		rbytes <=  mode_10G? txfifo_dout[15:0] :
		           (pulse_0? txfifo_dout[15:0] : rbytes);
		bytes_remain <=  mode_10G? txfifo_dout[15:0]-16'h8 :
		                 (pulse_0? txfifo_dout[15:0]-16'h8 : bytes_remain);
		wsel <= mode_10G? 1'b0 :
		        (pulse_0? 1'b0 : wsel);
		
	end
	
	MAC_HDR:
	begin
		wsel  <=   1'b0;
		state <=   mode_10G? MAC_DAT : 
		           (pulse_0? MAC_DAT : MAC_HDR);
		tx_dvld <= mode_10G? 1'b1 :
		           (pulse_0? 1'b1 : tx_dvld);
		txfifo_rd_en <=  mode_10G? 1'b1 :
                        (pulse_1? 1'b1 : 1'b0);
		bytes_remain <=   mode_10G? bytes_remain - 16'h8 :
		                  (pulse_0? bytes_remain - 16'h8 : bytes_remain);
	end
	
	MAC_DAT:
	begin
		wsel <= 1'b0;
		
		state <=   mode_10G? ((tx_dvld) ? MAC_DAT : IDLE) : 
		           ( tx_dvld? MAC_DAT : (pulse_0? IDLE : MAC_DAT) );
		           
		bytes_remain <=   mode_10G? bytes_remain - 16'h8 :
		                  (pulse_0? bytes_remain - 16'h8 : bytes_remain);
		                  
		tx_dvld <=    mode_10G? ((bytes_remain[15] || bytes_remain == 0)? 1'b0: 1'b1) :
		              ((bytes_remain[15] || bytes_remain == 0)? ((pulse_0)? 1'b0: tx_dvld) : tx_dvld);
		              
		txfifo_rd_en <=   mode_10G? ((bytes_remain > 8 && !bytes_remain[15])? 1'b1 : 1'b0) :
		                  ( (bytes_remain > 0 && !bytes_remain[15] && pulse_1)? 1'b1 : 1'b0);
		                  
	end
	
	P_REQ:
	begin
		state <= P_PREAM;			
	end
		
	P_PREAM:
	begin
		state <= P_PKT;
		rbytes <= 16'd60;
	end
		
	P_PKT:
	begin
		state <= p_done? IDLE : P_PKT;
	end	
	
	default:
	begin
		state <=   IDLE;
		
	end
	endcase

end


//synopsys translate_off
reg [(8*32)-1:0] ascii_state;

always@(state)
begin
	case(state)
	IDLE: 		ascii_state = "IDLE";
	READSIZE: 	ascii_state = "READSIZE";
	READ1: 		ascii_state = "READ1";
	MAC_HDR: 	ascii_state = "MAC_HDR";
	MAC_DAT: 	ascii_state = "MAC_DAT";
	P_REQ:	    ascii_state = "P_REQ";  
	P_PREAM:	ascii_state = "P_PREAM";
	P_PKT:	    ascii_state = "P_PKT";
	default: 	ascii_state = "unknown";
	
	endcase
	
end
//synopsys translate_on


 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout = txfifo_dout;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly = tx_b2b_dly;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state = state;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync = rx_pause_sync;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts = rts;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G = mode_5G;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G = mode_1G;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G = mode_10G;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok = b2b_ok;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter = b2b_counter;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val = b2b_cnt_val;
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


`timescale 1ns/10ps

module tx_mac10g_crc32x64(
   	clk,         	//i-1 
   	rst_,           //i-1 
   	                      
   	clr_,           //i-1 
   	bytes,          //i-3 
   	we_,            //i-1 
   	last_,          //i-1 
   	cdin,           //i-64
   	pdin,           //i-64
   	                      
   	pulse_0,        //i-1
   	pulse_1,        //i-1
   	mode_10G,       //i-1
   	
   	crc32,          //o-32
   	crc32_vld_      , m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32);
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
   
input clk;
input rst_;
input clr_;
input [63:0] cdin;
input [63:0] pdin;
input [02:0] bytes;
input we_;
input last_;
input pulse_0;
input pulse_1;
input mode_10G;
output [31:0] crc32;
output crc32_vld_;
reg    crc32_vld_;
reg    [31:0] new_crc;
wire [63:0] din_int;
//reg we_int_;
reg last_int_;
reg [31:0] init_value;
reg [63:0] bdin;


parameter[02:0] 
    IDLE	= 3'h1 ,
	CALC  	= 3'h2 ,
	WAIT1 	= 3'h4 ;
reg [02:0] state;

/*
`define IDLE   1
`define CALC   2
`define WAIT1  4
*/

assign din_int[63:0] = {
		    bdin[0], bdin[1], bdin[2], bdin[3], bdin[4], bdin[5], bdin[6], bdin[7],
		    bdin[8], bdin[9], bdin[10], bdin[11], bdin[12], bdin[13], bdin[14], bdin[15], 
		    bdin[16], bdin[17], bdin[18], bdin[19], bdin[20], bdin[21], bdin[22], bdin[23],
		    bdin[24], bdin[25], bdin[26], bdin[27], bdin[28], bdin[29], bdin[30], bdin[31], 
		    bdin[32], bdin[33], bdin[34], bdin[35], bdin[36], bdin[37], bdin[38], bdin[39], 
		    bdin[40], bdin[41], bdin[42], bdin[43], bdin[44], bdin[45], bdin[46], bdin[47], 
		    bdin[48], bdin[49], bdin[50], bdin[51], bdin[52], bdin[53], bdin[54], bdin[55],
		    bdin[56], bdin[57], bdin[58], bdin[59], bdin[60], bdin[61], bdin[62], bdin[63]};

assign crc32 = ~{new_crc[24],new_crc[25],new_crc[26],new_crc[27],new_crc[28],new_crc[29],new_crc[30],new_crc[31],new_crc[16],new_crc[17],new_crc[18],new_crc[19],new_crc[20],new_crc[21],new_crc[22],new_crc[23],new_crc[8],new_crc[9],new_crc[10],new_crc[11],new_crc[12],new_crc[13],new_crc[14],new_crc[15],new_crc[0],new_crc[1],new_crc[2],new_crc[3],new_crc[4],new_crc[5],new_crc[6],new_crc[7]};

always@(bytes)
begin
	case(bytes)
	0: init_value = 32'hffffffff;
	1: init_value = 32'h955a6162;
	2: init_value = 32'h68b932f5;
	3: init_value = 32'h339fde2f;
	4: init_value = 32'h46af6449;
	5: init_value = 32'h816474c5;
	6: init_value = 32'h09b93859;
	7: init_value = 32'h9bf1a90f;
	endcase
end

always@(posedge clk)
begin
	if (!rst_) begin
		new_crc <= 32'b0;
		bdin <= 64'b0;
	end
	else begin
	new_crc   <=   mode_10G ? state[0] ? init_value : (state[1] ? nextCRC32_D64(din_int,new_crc) : new_crc):
				   (state[0] & pulse_0) ? init_value : ((pulse_0 & state[1]) ? nextCRC32_D64(din_int,new_crc) : new_crc);
	case(bytes)
	0: bdin <=   mode_10G ? cdin:
			     pulse_0 ? cdin : bdin;
			     
	1: bdin <=   mode_10G ? state[0] ? {cdin[7:0], 56'h0} : {cdin[7:0], pdin[63:8]}:
				 pulse_0 ? state[0] ? {cdin[7:0], 56'h0} : {cdin[7:0], pdin[63:8]} : bdin;
				 
	2: bdin <=   mode_10G ? state[0] ? {cdin[15:0], 48'h0} : {cdin[15:0], pdin[63:16]}:
				 pulse_0 ? state[0] ? {cdin[15:0], 48'h0} : {cdin[15:0], pdin[63:16]}: bdin;
				 
	3: bdin <=   mode_10G ? state[0] ? {cdin[23:0], 40'h0} : {cdin[23:0], pdin[63:24]}:
				 pulse_0 ? state[0] ? {cdin[23:0], 40'h0} : {cdin[23:0], pdin[63:24]}: bdin;
				 
	4: bdin <=   mode_10G ? state[0] ? {cdin[31:0], 32'h0} : {cdin[31:0], pdin[63:32]}:
				 pulse_0 ? state[0] ? {cdin[31:0], 32'h0} : {cdin[31:0], pdin[63:32]}: bdin;
				 
	5: bdin <=   mode_10G ? state[0] ? {cdin[39:0], 24'h0} : {cdin[39:0], pdin[63:40]}:
				 pulse_0 ? state[0] ? {cdin[39:0], 24'h0} : {cdin[39:0], pdin[63:40]}: bdin;
				 
	6: bdin <=   mode_10G ? state[0] ? {cdin[47:0], 16'h0} : {cdin[47:0], pdin[63:48]}:
				 pulse_0 ? state[0] ? {cdin[47:0], 16'h0} : {cdin[47:0], pdin[63:48]}: bdin;
				 
	7: bdin <=   mode_10G ? state[0] ? {cdin[55:0], 8'h0}  : {cdin[55:0], pdin[63:56]}:
				 pulse_0 ? state[0] ? {cdin[55:0], 8'h0}  : {cdin[55:0], pdin[63:56]}: bdin ;
	endcase
	end
end

always@(posedge clk)
if(!rst_)
begin
	state   <=   IDLE;

	crc32_vld_<=   1;
	last_int_ <=   1;
end
else
begin
	last_int_ <=   mode_10G ? last_:
				   pulse_0 ? last_ : last_int_ ;
	crc32_vld_<=   mode_10G ? last_int_:
				pulse_0 ? last_int_ : crc32_vld_ ;
	
	case(state)
	IDLE: 
	begin
		state   <=   mode_10G ? we_ ? IDLE : CALC :
					pulse_0 ? we_ ? IDLE : CALC : state ;
	end
	CALC:
	begin
		state   <=  mode_10G ? last_int_ ? CALC : WAIT1:
				    pulse_0 ? last_int_ ? CALC : WAIT1 : state ;
					
	end
	WAIT1:
	begin
		state   <=   mode_10G ? clr_ ? WAIT1 : IDLE:
					 pulse_0 ? clr_ ? WAIT1 : IDLE: state;
	end
	default:
	begin
		state <=   IDLE;
	end
	endcase
end

function [31:0] nextCRC32_D64;

    input [63:0] Data;
    input [31:0] CRC;

    reg [63:0] D;
    reg [31:0] C;
    reg [31:0] NewCRC;

  begin

    D = Data;
    C = CRC;

    NewCRC[0] = D[63] ^ D[61] ^ D[60] ^ D[58] ^ D[55] ^ D[54] ^ D[53] ^ 
                D[50] ^ D[48] ^ D[47] ^ D[45] ^ D[44] ^ D[37] ^ D[34] ^ 
                D[32] ^ D[31] ^ D[30] ^ D[29] ^ D[28] ^ D[26] ^ D[25] ^ 
                D[24] ^ D[16] ^ D[12] ^ D[10] ^ D[9] ^ D[6] ^ D[0] ^ 
                C[0] ^ C[2] ^ C[5] ^ C[12] ^ C[13] ^ C[15] ^ C[16] ^ 
                C[18] ^ C[21] ^ C[22] ^ C[23] ^ C[26] ^ C[28] ^ C[29] ^ 
                C[31];
    NewCRC[1] = D[63] ^ D[62] ^ D[60] ^ D[59] ^ D[58] ^ D[56] ^ D[53] ^ 
                D[51] ^ D[50] ^ D[49] ^ D[47] ^ D[46] ^ D[44] ^ D[38] ^ 
                D[37] ^ D[35] ^ D[34] ^ D[33] ^ D[28] ^ D[27] ^ D[24] ^ 
                D[17] ^ D[16] ^ D[13] ^ D[12] ^ D[11] ^ D[9] ^ D[7] ^ 
                D[6] ^ D[1] ^ D[0] ^ C[1] ^ C[2] ^ C[3] ^ C[5] ^ C[6] ^ 
                C[12] ^ C[14] ^ C[15] ^ C[17] ^ C[18] ^ C[19] ^ C[21] ^ 
                C[24] ^ C[26] ^ C[27] ^ C[28] ^ C[30] ^ C[31];
    NewCRC[2] = D[59] ^ D[58] ^ D[57] ^ D[55] ^ D[53] ^ D[52] ^ D[51] ^ 
                D[44] ^ D[39] ^ D[38] ^ D[37] ^ D[36] ^ D[35] ^ D[32] ^ 
                D[31] ^ D[30] ^ D[26] ^ D[24] ^ D[18] ^ D[17] ^ D[16] ^ 
                D[14] ^ D[13] ^ D[9] ^ D[8] ^ D[7] ^ D[6] ^ D[2] ^ 
                D[1] ^ D[0] ^ C[0] ^ C[3] ^ C[4] ^ C[5] ^ C[6] ^ C[7] ^ 
                C[12] ^ C[19] ^ C[20] ^ C[21] ^ C[23] ^ C[25] ^ C[26] ^ 
                C[27];
    NewCRC[3] = D[60] ^ D[59] ^ D[58] ^ D[56] ^ D[54] ^ D[53] ^ D[52] ^ 
                D[45] ^ D[40] ^ D[39] ^ D[38] ^ D[37] ^ D[36] ^ D[33] ^ 
                D[32] ^ D[31] ^ D[27] ^ D[25] ^ D[19] ^ D[18] ^ D[17] ^ 
                D[15] ^ D[14] ^ D[10] ^ D[9] ^ D[8] ^ D[7] ^ D[3] ^ 
                D[2] ^ D[1] ^ C[0] ^ C[1] ^ C[4] ^ C[5] ^ C[6] ^ C[7] ^ 
                C[8] ^ C[13] ^ C[20] ^ C[21] ^ C[22] ^ C[24] ^ C[26] ^ 
                C[27] ^ C[28];
    NewCRC[4] = D[63] ^ D[59] ^ D[58] ^ D[57] ^ D[50] ^ D[48] ^ D[47] ^ 
                D[46] ^ D[45] ^ D[44] ^ D[41] ^ D[40] ^ D[39] ^ D[38] ^ 
                D[33] ^ D[31] ^ D[30] ^ D[29] ^ D[25] ^ D[24] ^ D[20] ^ 
                D[19] ^ D[18] ^ D[15] ^ D[12] ^ D[11] ^ D[8] ^ D[6] ^ 
                D[4] ^ D[3] ^ D[2] ^ D[0] ^ C[1] ^ C[6] ^ C[7] ^ C[8] ^ 
                C[9] ^ C[12] ^ C[13] ^ C[14] ^ C[15] ^ C[16] ^ C[18] ^ 
                C[25] ^ C[26] ^ C[27] ^ C[31];
    NewCRC[5] = D[63] ^ D[61] ^ D[59] ^ D[55] ^ D[54] ^ D[53] ^ D[51] ^ 
                D[50] ^ D[49] ^ D[46] ^ D[44] ^ D[42] ^ D[41] ^ D[40] ^ 
                D[39] ^ D[37] ^ D[29] ^ D[28] ^ D[24] ^ D[21] ^ D[20] ^ 
                D[19] ^ D[13] ^ D[10] ^ D[7] ^ D[6] ^ D[5] ^ D[4] ^ 
                D[3] ^ D[1] ^ D[0] ^ C[5] ^ C[7] ^ C[8] ^ C[9] ^ C[10] ^ 
                C[12] ^ C[14] ^ C[17] ^ C[18] ^ C[19] ^ C[21] ^ C[22] ^ 
                C[23] ^ C[27] ^ C[29] ^ C[31];
    NewCRC[6] = D[62] ^ D[60] ^ D[56] ^ D[55] ^ D[54] ^ D[52] ^ D[51] ^ 
                D[50] ^ D[47] ^ D[45] ^ D[43] ^ D[42] ^ D[41] ^ D[40] ^ 
                D[38] ^ D[30] ^ D[29] ^ D[25] ^ D[22] ^ D[21] ^ D[20] ^ 
                D[14] ^ D[11] ^ D[8] ^ D[7] ^ D[6] ^ D[5] ^ D[4] ^ 
                D[2] ^ D[1] ^ C[6] ^ C[8] ^ C[9] ^ C[10] ^ C[11] ^ 
                C[13] ^ C[15] ^ C[18] ^ C[19] ^ C[20] ^ C[22] ^ C[23] ^ 
                C[24] ^ C[28] ^ C[30];
    NewCRC[7] = D[60] ^ D[58] ^ D[57] ^ D[56] ^ D[54] ^ D[52] ^ D[51] ^ 
                D[50] ^ D[47] ^ D[46] ^ D[45] ^ D[43] ^ D[42] ^ D[41] ^ 
                D[39] ^ D[37] ^ D[34] ^ D[32] ^ D[29] ^ D[28] ^ D[25] ^ 
                D[24] ^ D[23] ^ D[22] ^ D[21] ^ D[16] ^ D[15] ^ D[10] ^ 
                D[8] ^ D[7] ^ D[5] ^ D[3] ^ D[2] ^ D[0] ^ C[0] ^ C[2] ^ 
                C[5] ^ C[7] ^ C[9] ^ C[10] ^ C[11] ^ C[13] ^ C[14] ^ 
                C[15] ^ C[18] ^ C[19] ^ C[20] ^ C[22] ^ C[24] ^ C[25] ^ 
                C[26] ^ C[28];
    NewCRC[8] = D[63] ^ D[60] ^ D[59] ^ D[57] ^ D[54] ^ D[52] ^ D[51] ^ 
                D[50] ^ D[46] ^ D[45] ^ D[43] ^ D[42] ^ D[40] ^ D[38] ^ 
                D[37] ^ D[35] ^ D[34] ^ D[33] ^ D[32] ^ D[31] ^ D[28] ^ 
                D[23] ^ D[22] ^ D[17] ^ D[12] ^ D[11] ^ D[10] ^ D[8] ^ 
                D[4] ^ D[3] ^ D[1] ^ D[0] ^ C[0] ^ C[1] ^ C[2] ^ C[3] ^ 
                C[5] ^ C[6] ^ C[8] ^ C[10] ^ C[11] ^ C[13] ^ C[14] ^ 
                C[18] ^ C[19] ^ C[20] ^ C[22] ^ C[25] ^ C[27] ^ C[28] ^ 
                C[31];
    NewCRC[9] = D[61] ^ D[60] ^ D[58] ^ D[55] ^ D[53] ^ D[52] ^ D[51] ^ 
                D[47] ^ D[46] ^ D[44] ^ D[43] ^ D[41] ^ D[39] ^ D[38] ^ 
                D[36] ^ D[35] ^ D[34] ^ D[33] ^ D[32] ^ D[29] ^ D[24] ^ 
                D[23] ^ D[18] ^ D[13] ^ D[12] ^ D[11] ^ D[9] ^ D[5] ^ 
                D[4] ^ D[2] ^ D[1] ^ C[0] ^ C[1] ^ C[2] ^ C[3] ^ C[4] ^ 
                C[6] ^ C[7] ^ C[9] ^ C[11] ^ C[12] ^ C[14] ^ C[15] ^ 
                C[19] ^ C[20] ^ C[21] ^ C[23] ^ C[26] ^ C[28] ^ C[29];
    NewCRC[10] = D[63] ^ D[62] ^ D[60] ^ D[59] ^ D[58] ^ D[56] ^ D[55] ^ 
                 D[52] ^ D[50] ^ D[42] ^ D[40] ^ D[39] ^ D[36] ^ D[35] ^ 
                 D[33] ^ D[32] ^ D[31] ^ D[29] ^ D[28] ^ D[26] ^ D[19] ^ 
                 D[16] ^ D[14] ^ D[13] ^ D[9] ^ D[5] ^ D[3] ^ D[2] ^ 
                 D[0] ^ C[0] ^ C[1] ^ C[3] ^ C[4] ^ C[7] ^ C[8] ^ C[10] ^ 
                 C[18] ^ C[20] ^ C[23] ^ C[24] ^ C[26] ^ C[27] ^ C[28] ^ 
                 C[30] ^ C[31];
    NewCRC[11] = D[59] ^ D[58] ^ D[57] ^ D[56] ^ D[55] ^ D[54] ^ D[51] ^ 
                 D[50] ^ D[48] ^ D[47] ^ D[45] ^ D[44] ^ D[43] ^ D[41] ^ 
                 D[40] ^ D[36] ^ D[33] ^ D[31] ^ D[28] ^ D[27] ^ D[26] ^ 
                 D[25] ^ D[24] ^ D[20] ^ D[17] ^ D[16] ^ D[15] ^ D[14] ^ 
                 D[12] ^ D[9] ^ D[4] ^ D[3] ^ D[1] ^ D[0] ^ C[1] ^ C[4] ^ 
                 C[8] ^ C[9] ^ C[11] ^ C[12] ^ C[13] ^ C[15] ^ C[16] ^ 
                 C[18] ^ C[19] ^ C[22] ^ C[23] ^ C[24] ^ C[25] ^ C[26] ^ 
                 C[27];
    NewCRC[12] = D[63] ^ D[61] ^ D[59] ^ D[57] ^ D[56] ^ D[54] ^ D[53] ^ 
                 D[52] ^ D[51] ^ D[50] ^ D[49] ^ D[47] ^ D[46] ^ D[42] ^ 
                 D[41] ^ D[31] ^ D[30] ^ D[27] ^ D[24] ^ D[21] ^ D[18] ^ 
                 D[17] ^ D[15] ^ D[13] ^ D[12] ^ D[9] ^ D[6] ^ D[5] ^ 
                 D[4] ^ D[2] ^ D[1] ^ D[0] ^ C[9] ^ C[10] ^ C[14] ^ 
                 C[15] ^ C[17] ^ C[18] ^ C[19] ^ C[20] ^ C[21] ^ C[22] ^ 
                 C[24] ^ C[25] ^ C[27] ^ C[29] ^ C[31];
    NewCRC[13] = D[62] ^ D[60] ^ D[58] ^ D[57] ^ D[55] ^ D[54] ^ D[53] ^ 
                 D[52] ^ D[51] ^ D[50] ^ D[48] ^ D[47] ^ D[43] ^ D[42] ^ 
                 D[32] ^ D[31] ^ D[28] ^ D[25] ^ D[22] ^ D[19] ^ D[18] ^ 
                 D[16] ^ D[14] ^ D[13] ^ D[10] ^ D[7] ^ D[6] ^ D[5] ^ 
                 D[3] ^ D[2] ^ D[1] ^ C[0] ^ C[10] ^ C[11] ^ C[15] ^ 
                 C[16] ^ C[18] ^ C[19] ^ C[20] ^ C[21] ^ C[22] ^ C[23] ^ 
                 C[25] ^ C[26] ^ C[28] ^ C[30];
    NewCRC[14] = D[63] ^ D[61] ^ D[59] ^ D[58] ^ D[56] ^ D[55] ^ D[54] ^ 
                 D[53] ^ D[52] ^ D[51] ^ D[49] ^ D[48] ^ D[44] ^ D[43] ^ 
                 D[33] ^ D[32] ^ D[29] ^ D[26] ^ D[23] ^ D[20] ^ D[19] ^ 
                 D[17] ^ D[15] ^ D[14] ^ D[11] ^ D[8] ^ D[7] ^ D[6] ^ 
                 D[4] ^ D[3] ^ D[2] ^ C[0] ^ C[1] ^ C[11] ^ C[12] ^ 
                 C[16] ^ C[17] ^ C[19] ^ C[20] ^ C[21] ^ C[22] ^ C[23] ^ 
                 C[24] ^ C[26] ^ C[27] ^ C[29] ^ C[31];
    NewCRC[15] = D[62] ^ D[60] ^ D[59] ^ D[57] ^ D[56] ^ D[55] ^ D[54] ^ 
                 D[53] ^ D[52] ^ D[50] ^ D[49] ^ D[45] ^ D[44] ^ D[34] ^ 
                 D[33] ^ D[30] ^ D[27] ^ D[24] ^ D[21] ^ D[20] ^ D[18] ^ 
                 D[16] ^ D[15] ^ D[12] ^ D[9] ^ D[8] ^ D[7] ^ D[5] ^ 
                 D[4] ^ D[3] ^ C[1] ^ C[2] ^ C[12] ^ C[13] ^ C[17] ^ 
                 C[18] ^ C[20] ^ C[21] ^ C[22] ^ C[23] ^ C[24] ^ C[25] ^ 
                 C[27] ^ C[28] ^ C[30];
    NewCRC[16] = D[57] ^ D[56] ^ D[51] ^ D[48] ^ D[47] ^ D[46] ^ D[44] ^ 
                 D[37] ^ D[35] ^ D[32] ^ D[30] ^ D[29] ^ D[26] ^ D[24] ^ 
                 D[22] ^ D[21] ^ D[19] ^ D[17] ^ D[13] ^ D[12] ^ D[8] ^ 
                 D[5] ^ D[4] ^ D[0] ^ C[0] ^ C[3] ^ C[5] ^ C[12] ^ C[14] ^ 
                 C[15] ^ C[16] ^ C[19] ^ C[24] ^ C[25];
    NewCRC[17] = D[58] ^ D[57] ^ D[52] ^ D[49] ^ D[48] ^ D[47] ^ D[45] ^ 
                 D[38] ^ D[36] ^ D[33] ^ D[31] ^ D[30] ^ D[27] ^ D[25] ^ 
                 D[23] ^ D[22] ^ D[20] ^ D[18] ^ D[14] ^ D[13] ^ D[9] ^ 
                 D[6] ^ D[5] ^ D[1] ^ C[1] ^ C[4] ^ C[6] ^ C[13] ^ C[15] ^ 
                 C[16] ^ C[17] ^ C[20] ^ C[25] ^ C[26];
    NewCRC[18] = D[59] ^ D[58] ^ D[53] ^ D[50] ^ D[49] ^ D[48] ^ D[46] ^ 
                 D[39] ^ D[37] ^ D[34] ^ D[32] ^ D[31] ^ D[28] ^ D[26] ^ 
                 D[24] ^ D[23] ^ D[21] ^ D[19] ^ D[15] ^ D[14] ^ D[10] ^ 
                 D[7] ^ D[6] ^ D[2] ^ C[0] ^ C[2] ^ C[5] ^ C[7] ^ C[14] ^ 
                 C[16] ^ C[17] ^ C[18] ^ C[21] ^ C[26] ^ C[27];
    NewCRC[19] = D[60] ^ D[59] ^ D[54] ^ D[51] ^ D[50] ^ D[49] ^ D[47] ^ 
                 D[40] ^ D[38] ^ D[35] ^ D[33] ^ D[32] ^ D[29] ^ D[27] ^ 
                 D[25] ^ D[24] ^ D[22] ^ D[20] ^ D[16] ^ D[15] ^ D[11] ^ 
                 D[8] ^ D[7] ^ D[3] ^ C[0] ^ C[1] ^ C[3] ^ C[6] ^ C[8] ^ 
                 C[15] ^ C[17] ^ C[18] ^ C[19] ^ C[22] ^ C[27] ^ C[28];
    NewCRC[20] = D[61] ^ D[60] ^ D[55] ^ D[52] ^ D[51] ^ D[50] ^ D[48] ^ 
                 D[41] ^ D[39] ^ D[36] ^ D[34] ^ D[33] ^ D[30] ^ D[28] ^ 
                 D[26] ^ D[25] ^ D[23] ^ D[21] ^ D[17] ^ D[16] ^ D[12] ^ 
                 D[9] ^ D[8] ^ D[4] ^ C[1] ^ C[2] ^ C[4] ^ C[7] ^ C[9] ^ 
                 C[16] ^ C[18] ^ C[19] ^ C[20] ^ C[23] ^ C[28] ^ C[29];
    NewCRC[21] = D[62] ^ D[61] ^ D[56] ^ D[53] ^ D[52] ^ D[51] ^ D[49] ^ 
                 D[42] ^ D[40] ^ D[37] ^ D[35] ^ D[34] ^ D[31] ^ D[29] ^ 
                 D[27] ^ D[26] ^ D[24] ^ D[22] ^ D[18] ^ D[17] ^ D[13] ^ 
                 D[10] ^ D[9] ^ D[5] ^ C[2] ^ C[3] ^ C[5] ^ C[8] ^ C[10] ^ 
                 C[17] ^ C[19] ^ C[20] ^ C[21] ^ C[24] ^ C[29] ^ C[30];
    NewCRC[22] = D[62] ^ D[61] ^ D[60] ^ D[58] ^ D[57] ^ D[55] ^ D[52] ^ 
                 D[48] ^ D[47] ^ D[45] ^ D[44] ^ D[43] ^ D[41] ^ D[38] ^ 
                 D[37] ^ D[36] ^ D[35] ^ D[34] ^ D[31] ^ D[29] ^ D[27] ^ 
                 D[26] ^ D[24] ^ D[23] ^ D[19] ^ D[18] ^ D[16] ^ D[14] ^ 
                 D[12] ^ D[11] ^ D[9] ^ D[0] ^ C[2] ^ C[3] ^ C[4] ^ 
                 C[5] ^ C[6] ^ C[9] ^ C[11] ^ C[12] ^ C[13] ^ C[15] ^ 
                 C[16] ^ C[20] ^ C[23] ^ C[25] ^ C[26] ^ C[28] ^ C[29] ^ 
                 C[30];
    NewCRC[23] = D[62] ^ D[60] ^ D[59] ^ D[56] ^ D[55] ^ D[54] ^ D[50] ^ 
                 D[49] ^ D[47] ^ D[46] ^ D[42] ^ D[39] ^ D[38] ^ D[36] ^ 
                 D[35] ^ D[34] ^ D[31] ^ D[29] ^ D[27] ^ D[26] ^ D[20] ^ 
                 D[19] ^ D[17] ^ D[16] ^ D[15] ^ D[13] ^ D[9] ^ D[6] ^ 
                 D[1] ^ D[0] ^ C[2] ^ C[3] ^ C[4] ^ C[6] ^ C[7] ^ C[10] ^ 
                 C[14] ^ C[15] ^ C[17] ^ C[18] ^ C[22] ^ C[23] ^ C[24] ^ 
                 C[27] ^ C[28] ^ C[30];
    NewCRC[24] = D[63] ^ D[61] ^ D[60] ^ D[57] ^ D[56] ^ D[55] ^ D[51] ^ 
                 D[50] ^ D[48] ^ D[47] ^ D[43] ^ D[40] ^ D[39] ^ D[37] ^ 
                 D[36] ^ D[35] ^ D[32] ^ D[30] ^ D[28] ^ D[27] ^ D[21] ^ 
                 D[20] ^ D[18] ^ D[17] ^ D[16] ^ D[14] ^ D[10] ^ D[7] ^ 
                 D[2] ^ D[1] ^ C[0] ^ C[3] ^ C[4] ^ C[5] ^ C[7] ^ C[8] ^ 
                 C[11] ^ C[15] ^ C[16] ^ C[18] ^ C[19] ^ C[23] ^ C[24] ^ 
                 C[25] ^ C[28] ^ C[29] ^ C[31];
    NewCRC[25] = D[62] ^ D[61] ^ D[58] ^ D[57] ^ D[56] ^ D[52] ^ D[51] ^ 
                 D[49] ^ D[48] ^ D[44] ^ D[41] ^ D[40] ^ D[38] ^ D[37] ^ 
                 D[36] ^ D[33] ^ D[31] ^ D[29] ^ D[28] ^ D[22] ^ D[21] ^ 
                 D[19] ^ D[18] ^ D[17] ^ D[15] ^ D[11] ^ D[8] ^ D[3] ^ 
                 D[2] ^ C[1] ^ C[4] ^ C[5] ^ C[6] ^ C[8] ^ C[9] ^ C[12] ^ 
                 C[16] ^ C[17] ^ C[19] ^ C[20] ^ C[24] ^ C[25] ^ C[26] ^ 
                 C[29] ^ C[30];
    NewCRC[26] = D[62] ^ D[61] ^ D[60] ^ D[59] ^ D[57] ^ D[55] ^ D[54] ^ 
                 D[52] ^ D[49] ^ D[48] ^ D[47] ^ D[44] ^ D[42] ^ D[41] ^ 
                 D[39] ^ D[38] ^ D[31] ^ D[28] ^ D[26] ^ D[25] ^ D[24] ^ 
                 D[23] ^ D[22] ^ D[20] ^ D[19] ^ D[18] ^ D[10] ^ D[6] ^ 
                 D[4] ^ D[3] ^ D[0] ^ C[6] ^ C[7] ^ C[9] ^ C[10] ^ C[12] ^ 
                 C[15] ^ C[16] ^ C[17] ^ C[20] ^ C[22] ^ C[23] ^ C[25] ^ 
                 C[27] ^ C[28] ^ C[29] ^ C[30];
    NewCRC[27] = D[63] ^ D[62] ^ D[61] ^ D[60] ^ D[58] ^ D[56] ^ D[55] ^ 
                 D[53] ^ D[50] ^ D[49] ^ D[48] ^ D[45] ^ D[43] ^ D[42] ^ 
                 D[40] ^ D[39] ^ D[32] ^ D[29] ^ D[27] ^ D[26] ^ D[25] ^ 
                 D[24] ^ D[23] ^ D[21] ^ D[20] ^ D[19] ^ D[11] ^ D[7] ^ 
                 D[5] ^ D[4] ^ D[1] ^ C[0] ^ C[7] ^ C[8] ^ C[10] ^ C[11] ^ 
                 C[13] ^ C[16] ^ C[17] ^ C[18] ^ C[21] ^ C[23] ^ C[24] ^ 
                 C[26] ^ C[28] ^ C[29] ^ C[30] ^ C[31];
    NewCRC[28] = D[63] ^ D[62] ^ D[61] ^ D[59] ^ D[57] ^ D[56] ^ D[54] ^ 
                 D[51] ^ D[50] ^ D[49] ^ D[46] ^ D[44] ^ D[43] ^ D[41] ^ 
                 D[40] ^ D[33] ^ D[30] ^ D[28] ^ D[27] ^ D[26] ^ D[25] ^ 
                 D[24] ^ D[22] ^ D[21] ^ D[20] ^ D[12] ^ D[8] ^ D[6] ^ 
                 D[5] ^ D[2] ^ C[1] ^ C[8] ^ C[9] ^ C[11] ^ C[12] ^ 
                 C[14] ^ C[17] ^ C[18] ^ C[19] ^ C[22] ^ C[24] ^ C[25] ^ 
                 C[27] ^ C[29] ^ C[30] ^ C[31];
    NewCRC[29] = D[63] ^ D[62] ^ D[60] ^ D[58] ^ D[57] ^ D[55] ^ D[52] ^ 
                 D[51] ^ D[50] ^ D[47] ^ D[45] ^ D[44] ^ D[42] ^ D[41] ^ 
                 D[34] ^ D[31] ^ D[29] ^ D[28] ^ D[27] ^ D[26] ^ D[25] ^ 
                 D[23] ^ D[22] ^ D[21] ^ D[13] ^ D[9] ^ D[7] ^ D[6] ^ 
                 D[3] ^ C[2] ^ C[9] ^ C[10] ^ C[12] ^ C[13] ^ C[15] ^ 
                 C[18] ^ C[19] ^ C[20] ^ C[23] ^ C[25] ^ C[26] ^ C[28] ^ 
                 C[30] ^ C[31];
    NewCRC[30] = D[63] ^ D[61] ^ D[59] ^ D[58] ^ D[56] ^ D[53] ^ D[52] ^ 
                 D[51] ^ D[48] ^ D[46] ^ D[45] ^ D[43] ^ D[42] ^ D[35] ^ 
                 D[32] ^ D[30] ^ D[29] ^ D[28] ^ D[27] ^ D[26] ^ D[24] ^ 
                 D[23] ^ D[22] ^ D[14] ^ D[10] ^ D[8] ^ D[7] ^ D[4] ^ 
                 C[0] ^ C[3] ^ C[10] ^ C[11] ^ C[13] ^ C[14] ^ C[16] ^ 
                 C[19] ^ C[20] ^ C[21] ^ C[24] ^ C[26] ^ C[27] ^ C[29] ^ 
                 C[31];
    NewCRC[31] = D[62] ^ D[60] ^ D[59] ^ D[57] ^ D[54] ^ D[53] ^ D[52] ^ 
                 D[49] ^ D[47] ^ D[46] ^ D[44] ^ D[43] ^ D[36] ^ D[33] ^ 
                 D[31] ^ D[30] ^ D[29] ^ D[28] ^ D[27] ^ D[25] ^ D[24] ^ 
                 D[23] ^ D[15] ^ D[11] ^ D[9] ^ D[8] ^ D[5] ^ C[1] ^ 
                 C[4] ^ C[11] ^ C[12] ^ C[14] ^ C[15] ^ C[17] ^ C[20] ^ 
                 C[21] ^ C[22] ^ C[25] ^ C[27] ^ C[28] ^ C[30];

    nextCRC32_D64 = NewCRC;

  end

  endfunction



 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32 = crc32;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin = bdin;
endmodule


//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


// synopsys translate_off
`timescale 1ns/10ps
// synopsys translate_on

module tx_xgmii(
	clk250,			// i-1
	clk156,			 // i-1, this really is coreclkout (can be 156 or 125MHz)
	rst_,  			 	// i-1
	
	mode_10G ,			//i-1, speed modes
	mode_5G  ,	
	mode_2p5G,	
	mode_1G  ,	
	
	xaui_mode,
	
	rts,    		   // i-1
	rdata,  		   // i-64
	rbytes,			  // i-16
	cts,			  //o-1, enable ENCAP to read the next QWD (NOT USED, keep for I/O compatibility)
	
	txd,			  // o-64
	txc,			  // o-8
	
	FMAC_TX_PKT_CNT,  	   // o-32
	FMAC_TX_BYTE_CNT,	   // o-32
	fmac_tx_clr_en	, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in);
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;

	

input clk250;
input clk156;		 // 156.25 Mhz
input rst_;
//speed modes
input	mode_10G ;
input	mode_5G  ;
input	mode_2p5G;
input	mode_1G  ;
        
input	xaui_mode	;

input   rts;			  //request to send from encap
input  [63:0] rdata;	  // data input
input   [15:0] rbytes;	   //holds the size of data in Bytes

output	cts;		 wire  cts = 1'b0 ; 	//not used tie low

output [63:0] txd;		 //o, data ouput
output [07:0] txc;		 //o, control output

output [31:0] FMAC_TX_PKT_CNT;
output [31:0] FMAC_TX_BYTE_CNT;
input		  fmac_tx_clr_en;
	

reg    [63:0] bdata1;			  // buffer input data
reg    [63:0] bdata2;
reg    [15:0] wcnt;
reg		 [15:0] ila_wcnt_ini; // register for holding the initial value of wcnt.


wire	[15:0] nbytes;
reg  	[15:0] nbytes_reg;
reg 	[15:0] rbytes_reg;


reg    [63:0] txd;				  //output data
reg    [07:0] txc;				  // control output
reg    [07:0] txc_int;

reg    IDLE_sel;
reg    insert_crc;					// indicates when to transmit CRC frame

reg    crc_we_;
reg    crc_last_;
reg    crc_clr_;
reg    [15:0] crc_cnt;
wire   [31:0] crc32;			   // CRC output
wire	 [31:0] ILA_crc_in;    // signal for an internal state of ILA model. 
assign ILA_crc_in = ~crc32;  // Let's try if the parser can find the wire. If it cannot find it, then we can add the register at the bottom module.

reg		sent;
reg		sent_dly;

reg		[31:0]   pkt_transmitted;
reg		[31:0]   FMAC_TX_PKT_CNT;
reg 	[31:0]   accumulated_bcnt;
reg		[31:0]   FMAC_TX_BYTE_CNT;

reg [2:0] counter;
reg pulse_0;
reg pulse_1;


parameter[4:0] 
    IDLE		= 5'h01 ,
	GET_WAIT1   = 5'h02 ,
	GET_WAIT2   = 5'h04 ,
	TX_DAT		= 5'h08 ,
	TX_CRC		= 5'h10 ;
reg    [4:0] state;

wire st_IDLE;			assign	st_IDLE			=	state[0];
wire st_GET_WAIT1;  	assign	st_GET_WAIT1	=	state[1];
wire st_GET_WAIT2;  	assign	st_GET_WAIT2	=	state[2];
wire st_TX_DAT;     	assign	st_TX_DAT		=	state[3];
wire st_TX_CRC;        	assign	st_TX_CRC		=	state[4];

assign nbytes = {(rbytes[15:3] + |rbytes[2:0]),3'b000};


//   BUFFER
always@(posedge clk156)
begin
	bdata1 <=   (!rst_)? 64'hD5555555555555FB :
						mode_10G? rdata:
						(pulse_0 ? rdata :bdata1);
	bdata2 <=   (!rst_)? 64'hD5555555555555FB :
						mode_10G? bdata1:
						(pulse_0 ? bdata1 : bdata2);
	nbytes_reg <= (!rst_)? 16'b0 : 
				  mode_10G? nbytes :
	              (pulse_0? nbytes : nbytes_reg);
	rbytes_reg <= (!rst_)?16'b0:
				  mode_10G? rbytes:
				  (pulse_0? rbytes: rbytes_reg);
end


//   FMAC_TX_PKT_CNT REGISTER

always@ (posedge clk156)
begin
	if (!rst_)
	begin
		sent	<=	1'b0;
		sent_dly <= 1'b0;
	end
	
	else
	begin
		sent	<=	mode_10G ? st_TX_CRC:
					pulse_1 ? st_TX_CRC : 1'b0;
		sent_dly <= sent;
	end
end

always@ (posedge clk156)
begin
	if (!rst_ | fmac_tx_clr_en)
		pkt_transmitted	<=	32'h0;
	else
		pkt_transmitted	<=	(sent)? (pkt_transmitted + 32'h1) : pkt_transmitted ;
end

reg		capture_en0_clk250;
reg		capture_en1_clk250;

//detect the capture en for clk250 (if see 2 zeroes in a row)
wire	capture_en_clk250 = capture_en0_clk250 & capture_en1_clk250;

always @ (posedge clk250)
	begin
	
	capture_en0_clk250	<= !sent;
	capture_en1_clk250	<=  capture_en0_clk250;
	
	if ( !rst_  | fmac_tx_clr_en)
		FMAC_TX_PKT_CNT <= 32'h0;
	else
		FMAC_TX_PKT_CNT	<= (capture_en_clk250) ? pkt_transmitted : FMAC_TX_PKT_CNT;
	
	end


always@ (posedge clk156)
begin
	if (!rst_ | fmac_tx_clr_en)
		accumulated_bcnt	<=	32'h0;
	else
		accumulated_bcnt	<=	(sent)? (accumulated_bcnt + rbytes_reg) : accumulated_bcnt ;
end


always @ (posedge clk250)
begin
	if (!rst_ | fmac_tx_clr_en)
		FMAC_TX_BYTE_CNT <= 32'h0;
		
	else
		FMAC_TX_BYTE_CNT <= capture_en_clk250? accumulated_bcnt : FMAC_TX_BYTE_CNT ;
end


//  STATE MACHINE
always@(posedge clk156)
if(!rst_)
begin
	state <=   IDLE;
	txd   <=   64'h0707070707070707;  // IDLE for xgmii interface (normal inter-frame)
	txc   <=   8'hff; 

	txc_int <=   8'hff;
	IDLE_sel  <=   1;
	insert_crc<=   0;

	wcnt <=   0;
	//ila_wcnt_ini <= 0; // don't initialize the ila_wcnt_ini for global
	//invariant regulation --> the package length must greater than
	//zero
	
	crc_we_ <=   1;
	crc_last_<=   1;
	crc_cnt  <=   0;
	crc_clr_ <=   1;
	
    counter <= (mode_10G | mode_1G)? 3'd0 :
           	   (mode_5G? 3'd1 : 3'd3);
               
    pulse_0 <= 1'b0;
    pulse_1 <= 1'b0;
end
else
begin	
	 //on last qwd in TX_DATa state, insert CRC & EOF
	if (IDLE_sel)	
		begin 
		if (insert_crc)
			begin 
		  //depends on the pkt's byte cnt (last 3 bits indicate the offset
				//to where CRC and EOF should be inserted.
			case (rbytes_reg[2:0])
			3'd0: txd <=   {32'h070707FD, crc32 };
			3'd1: txd <=   {64'h0707070707070707};
			3'd2: txd <=   {64'h0707070707070707};
			3'd3: txd <=   {64'h0707070707070707};
			3'd4: txd <=   {64'h07070707070707FD};
			3'd5: txd <=   {32'h07070707, 24'h0707FD, crc32[31:24] };
			3'd6: txd <=   {32'h07070707, 16'h07FD, crc32[31:16] };
			3'd7: txd <=   {32'h07070707, 8'hFD, crc32[31:8] };
			endcase	
			end
			
		else txd <=   mode_10G	?	64'h0707070707070707:
					  pulse_0	?	64'h0707070707070707:	txd;
		end
		
	else
		begin
			  //on last qwd transmit (in states other than TX_DATa)
		if ((mode_10G & wcnt[15])| (!mode_10G & wcnt[15] & pulse_0))
			begin
			case (rbytes_reg[2:0])
			3'd0: txd <=   {bdata2[63:32], bdata2[31:0] };
			3'd1: txd <=   {24'h0707FD, crc32[31:0], bdata2[7:0] };
			3'd2: txd <=   {16'h07FD, crc32[31:0], bdata2[15:0] };
			3'd3: txd <=   {8'hFD, crc32[31:0], bdata2[23:0] };
			3'd4: txd <=   {crc32, bdata2[31:0]};
			3'd5: txd <=   {crc32[23:0], bdata2[39:0] };
			3'd6: txd <=   {crc32[15:0], bdata2[47:0] };
			3'd7: txd <=   {crc32[7:0], bdata2[55:0] };
			endcase
				
			end
		
		else txd <=   mode_10G	?	{bdata2[63:0]}	:
					  (pulse_0	?	{bdata2[63:0]}	: txd);
		end
	
	txc  <=   mode_10G ? txc_int:
	          pulse_0 ? txc_int : txc;
	insert_crc <=   mode_10G ? (st_TX_DAT && wcnt[15]):
					(st_TX_CRC && pulse_1 && wcnt[15]);

	crc_we_    <=   mode_10G ?	(crc_we_ ? !st_GET_WAIT1 : !crc_last_):
					pulse_0	?	(crc_we_ ? !st_GET_WAIT1 : !crc_last_): crc_we_;  
	
	crc_last_  <=   mode_10G ?	(crc_last_ ? (crc_we_ || !crc_cnt[15]) : 1'b1):
					pulse_0	?	(crc_last_ ? (crc_we_ || !crc_cnt[15]) : 1'b1) : crc_last_;
					
	crc_cnt    <=   mode_10G ? (st_GET_WAIT1 ? (rbytes - 16'd17) : ((st_GET_WAIT2 || st_TX_DAT)? (crc_cnt - 16'd8) : crc_cnt)):
					pulse_0 ?  (st_GET_WAIT1 ? (rbytes - 16'd17) : ((st_GET_WAIT2 || st_TX_DAT)? (crc_cnt - 16'd8) : crc_cnt)): crc_cnt;
					
	crc_clr_   <=   mode_10G ? (!(st_IDLE || st_TX_CRC)):
					pulse_0 ?  (!(st_IDLE || st_TX_CRC)): crc_clr_;
	
    counter <= (mode_10G | mode_1G)? counter :
           	   (mode_5G	? ((|counter)? counter - 3'd1 : 3'd1) :
               ((|counter)? counter - 3'd1 : 3'd3));
                  
    pulse_0 <= (mode_10G | mode_1G)? pulse_0 :
               ((pulse_1)? 1'b1 : 1'b0);
    pulse_1 <= (mode_10G | mode_1G)? pulse_1 :
               ((counter == 3'd1)? 1'b1 : 1'b0);
               
	case(state)
	IDLE:
	begin
		state <= rts? GET_WAIT1: IDLE;
	end

	GET_WAIT1:
	begin
		state <=   mode_10G? GET_WAIT2 : 
		           (pulse_0? GET_WAIT2 : GET_WAIT1);
	end

	GET_WAIT2:
	begin
		state   <=   mode_10G? TX_DAT : 
		             (pulse_0? TX_DAT : GET_WAIT2); 
		             
		wcnt    <=   mode_10G ? nbytes_reg - 16'd1:
					 (pulse_0 ? nbytes_reg - 16'd1 : wcnt);

		ila_wcnt_ini  <=   mode_10G ? nbytes_reg - 16'd1:
					 (pulse_0 ? nbytes_reg - 16'd1 : wcnt);
					 
		txc_int <=   mode_10G ? 8'h01:
					 (pulse_0 ? 8'h01 : txc_int) ;
					 
		IDLE_sel<=   mode_10G ? 1'b0:
					 (pulse_0 ? 1'b0 : IDLE_sel);
	end
	
	TX_DAT:
	begin
	
	   IDLE_sel <= mode_10G ? wcnt[15] : 
	   				pulse_0 ? wcnt[15] : IDLE_sel;
		
		state  <=   mode_10G? (wcnt[15] ? TX_CRC : TX_DAT) : 
		            pulse_0? (wcnt[15] ?  TX_CRC : TX_DAT) : state; 
		
		
		
		wcnt   <=   mode_10G ? wcnt - 16'd8:
					(pulse_0 ? wcnt - 16'd8 : wcnt);
					
		  if ((mode_10G & wcnt[15]) | (!mode_10G & wcnt[15] & pulse_0))			
		
			begin
			case (rbytes_reg[2:0])
			3'd0: txc_int <=   8'hF0;
			3'd1: txc_int <=   8'hFF;
			3'd2: txc_int <=   8'hFF;
			3'd3: txc_int <=   8'hFF;
			3'd4: txc_int <=   8'hFF;
			3'd5: txc_int <=   8'hFE;
			3'd6: txc_int <=   8'hFC;
			3'd7: txc_int <=   8'hF8;
			endcase
			end
		else
			begin
			if ((mode_10G & wcnt <= 7) | (!mode_10G & wcnt <=7 & pulse_0))
				begin
				case (rbytes_reg[2:0])
				3'd0: txc_int <=   8'h00;
				3'd1: txc_int <=   8'hE0;
				3'd2: txc_int <=   8'hC0;
				3'd3: txc_int <=   8'h80;
				3'd4: txc_int <=   8'h00;
				3'd5: txc_int <=   8'h00;
				3'd6: txc_int <=   8'h00;
				3'd7: txc_int <=   8'h00;
				endcase
				end
		else txc_int <=   mode_10G ? 8'h00:
			(pulse_0 ? 8'h00 : txc_int);
			end
	end
	TX_CRC:
	begin
	
		state <=   mode_10G? (rts? GET_WAIT1: IDLE) : 
		           pulse_0 ? (rts ? GET_WAIT1: IDLE) : TX_CRC;
		txc_int <=   mode_10G ? 8'hff:
					(pulse_0 ? 8'hff : txc_int);
	end
	
	default:
	begin
		state <=   IDLE;
	end
	endcase
end

tx_mac10g_crc32x64 tx_mac10g_crc32x64(

   	.clk (clk156),				 //i, 156.25 Mhz
   	.rst_(rst_),				 //i,
   	.pulse_0(pulse_0),			 //for slower speed modes
   	.pulse_1(pulse_1),
   	.mode_10G(mode_10G), 
   	
   	.bytes  (rbytes_reg[2:0]), 		//i, valid data in last qwd
   	
   	.clr_  (crc_clr_),
   	.we_   (crc_we_),
   	.last_ (crc_last_),
   	.cdin  (rdata),				   //i, input data
   	.pdin  (bdata1),
   	
   	.crc32({crc32[7:0],crc32[15:8],crc32[23:16],crc32[31:24]}), //o,crc value
   	.crc32_vld_()
     ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32));

       
//synopsys translate_off
reg [(32 *8)-1:0] ascii_state;
always@(state)
begin
	case(state)
	IDLE: ascii_state = "IDLE";
	GET_WAIT1: ascii_state = "GET_WAIT1";
	GET_WAIT2: ascii_state = "GET_WAIT2";
	TX_DAT: ascii_state = "TX_DAT";
	TX_CRC: ascii_state = "TX_CRC";
	default: ascii_state = "unknown";
	endcase
	
end
//synopsys translate_on


 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in = ILA_crc_in;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt = accumulated_bcnt;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 = bdata1;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en = fmac_tx_clr_en;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini = ila_wcnt_ini;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc = insert_crc;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G = mode_10G;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G = mode_1G;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G = mode_2p5G;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel = IDLE_sel;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes = nbytes;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg = nbytes_reg;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted = pkt_transmitted;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes = rbytes;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg = rbytes_reg;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state = state;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc = txc;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int = txc_int;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd = txd;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt = wcnt;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G = mode_5G;
endmodule
//
// Copyright (C) 2018 LeWiz Communications, Inc. 
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with this library release; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
// 
// LeWiz can be contacted at:  support@lewiz.com
// or address:  
// PO Box 9276
// San Jose, CA 95157-9276
// www.lewiz.com
// 
//    Author: LeWiz Communications, Inc.
//    Language: Verilog
//


`timescale 1ns / 1ns


module txfifo_1024x64

(
			aclr,

			wrclk,     	// Clk for writing data  
			wrreq,     	// request to write
			data,       // Data coming in              
			wrfull,    	// indicates fifo is full or not (To avoid overiding)
		                           
            wrusedw,     // number of slots currently in use for writting                

		    rdclk,     	  // Clk for reading data 
			rdreq,     	  // Request to read from FIFO
			q, 	    	  // Data coming out 
			rdempty , m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, m1__DOT__core__DOT__txfifo__DOT__wrfull, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, m1__DOT__core__DOT__txfifo__DOT__rdreq, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout);
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
 output  m1__DOT__core__DOT__txfifo__DOT__wrfull;
 output  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull;
 output  m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
 output  m1__DOT__core__DOT__txfifo__DOT__rdreq;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;


	parameter WIDTH = 64,
			  DEPTH = 16,
			  PTR	= 4;
			  
			  
			input wire 					aclr;

			input  wire 				wrclk;      // Clk for writing data  
			input  wire 				wrreq;      // request to write 
			input  wire [WIDTH-1 : 0]	data;     	 // Data coming in
			output wire					wrfull;      // indicates fifo is full or not (To avoid overiding)
            output wire	[PTR  : 0]		wrusedw;     // number of slots currently in use for writting  

		    input  wire 				rdclk;       // Clk for reading data
			input  wire 				rdreq;       // Request to read from FIFO 
			output wire [WIDTH-1 : 0]	q; 	    	 // Data coming out
			output wire 				rdempty;  	// indicates fifo is empty or not (to avoid underflow) 


asynch_fifo	#(.WIDTH ( WIDTH),		  				
					  	  .DEPTH (DEPTH),
					 	  .PTR	 (PTR) )		  	
 											
	tx_f (
			.reset_	(~aclr),		
			
			.wrclk	(wrclk),		// Clk to write data
			.wren	(wrreq),	   	// write enable
			.datain	(data),			// write data
			.wrfull	(wrfull),		// indicates fifo is full or not (To avoid overiding)
			.wrempty(),				
			.usedw_i(wrusedw),		// wrusedw -number of locations filled in fifo

			.rdclk	(rdclk),		// i-1, Clk to read data
			.rden	(rdreq),		// i-1, read enable of data FIFO
			.dataout(q),			// Dataout of data FIFO
			.rdfull	(),				// indicates fifo is full or not (To avoid overiding) (Not used)
			.rdempty(rdempty),		// indicates fifo is empty or not (to avoid underflow)

			.dbg()

		  ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_));
 assign m1__DOT__core__DOT__txfifo__DOT__wrfull = wrfull;
 assign m1__DOT__core__DOT__txfifo__DOT__rdreq = rdreq;
endmodule
