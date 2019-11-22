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
__m68__,
__m69__,
__m71__,
__m72__,
__m73__,
__m74__,
__m76__,
__m78__,
__m7__,
__m80__,
__m9__,
additional_mapping_control_assume__m105__,
additional_mapping_control_assume__m106__,
additional_mapping_control_assume__m107__,
additional_mapping_control_assume__m108__,
additional_mapping_control_assume__m109__,
additional_mapping_control_assume__m110__,
additional_mapping_control_assume__m111__,
additional_mapping_control_assume__m112__,
additional_mapping_control_assume__m113__,
additional_mapping_control_assume__m114__,
additional_mapping_control_assume__m115__,
additional_mapping_control_assume__m116__,
invariant_assume__m100__,
invariant_assume__m101__,
invariant_assume__m102__,
invariant_assume__m103__,
invariant_assume__m104__,
invariant_assume__m82__,
invariant_assume__m83__,
invariant_assume__m84__,
invariant_assume__m85__,
invariant_assume__m86__,
invariant_assume__m87__,
invariant_assume__m88__,
invariant_assume__m89__,
invariant_assume__m90__,
invariant_assume__m91__,
invariant_assume__m92__,
invariant_assume__m93__,
invariant_assume__m94__,
invariant_assume__m95__,
invariant_assume__m96__,
invariant_assume__m97__,
invariant_assume__m98__,
invariant_assume__m99__,
issue_decode__m117__,
issue_valid__m118__,
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
post_value_holder__m119__,
post_value_holder__m120__,
post_value_holder__m121__,
post_value_holder__m122__,
post_value_holder__m123__,
post_value_holder__m124__,
post_value_holder__m125__,
post_value_holder__m126__,
post_value_holder__m127__,
post_value_holder__m128__,
post_value_holder__m129__,
post_value_holder__m130__,
post_value_holder__m131__,
post_value_holder__m132__,
post_value_holder__m133__,
post_value_holder__m134__,
post_value_holder__m135__,
post_value_holder__m136__,
post_value_holder__m137__,
post_value_holder__m138__,
post_value_holder__m139__,
post_value_holder__m140__,
post_value_holder__m141__,
post_value_holder__m142__,
post_value_holder__m143__,
tx_mac_full,
tx_mac_usedw,
variable_map_assert__p70__,
variable_map_assert__p75__,
variable_map_assert__p77__,
variable_map_assert__p79__,
variable_map_assert__p81__,
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
output            __m68__;
output            __m69__;
output            __m71__;
output            __m72__;
output            __m73__;
output            __m74__;
output            __m76__;
output            __m78__;
output            __m7__;
output            __m80__;
output            __m9__;
output            additional_mapping_control_assume__m105__;
output            additional_mapping_control_assume__m106__;
output            additional_mapping_control_assume__m107__;
output            additional_mapping_control_assume__m108__;
output            additional_mapping_control_assume__m109__;
output            additional_mapping_control_assume__m110__;
output            additional_mapping_control_assume__m111__;
output            additional_mapping_control_assume__m112__;
output            additional_mapping_control_assume__m113__;
output            additional_mapping_control_assume__m114__;
output            additional_mapping_control_assume__m115__;
output            additional_mapping_control_assume__m116__;
output            invariant_assume__m100__;
output            invariant_assume__m101__;
output            invariant_assume__m102__;
output            invariant_assume__m103__;
output            invariant_assume__m104__;
output            invariant_assume__m82__;
output            invariant_assume__m83__;
output            invariant_assume__m84__;
output            invariant_assume__m85__;
output            invariant_assume__m86__;
output            invariant_assume__m87__;
output            invariant_assume__m88__;
output            invariant_assume__m89__;
output            invariant_assume__m90__;
output            invariant_assume__m91__;
output            invariant_assume__m92__;
output            invariant_assume__m93__;
output            invariant_assume__m94__;
output            invariant_assume__m95__;
output            invariant_assume__m96__;
output            invariant_assume__m97__;
output            invariant_assume__m98__;
output            invariant_assume__m99__;
output            issue_decode__m117__;
output            issue_valid__m118__;
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
output            post_value_holder__m119__;
output            post_value_holder__m120__;
output            post_value_holder__m121__;
output            post_value_holder__m122__;
output            post_value_holder__m123__;
output            post_value_holder__m124__;
output            post_value_holder__m125__;
output            post_value_holder__m126__;
output            post_value_holder__m127__;
output            post_value_holder__m128__;
output            post_value_holder__m129__;
output            post_value_holder__m130__;
output            post_value_holder__m131__;
output            post_value_holder__m132__;
output            post_value_holder__m133__;
output            post_value_holder__m134__;
output            post_value_holder__m135__;
output            post_value_holder__m136__;
output            post_value_holder__m137__;
output            post_value_holder__m138__;
output            post_value_holder__m139__;
output            post_value_holder__m140__;
output            post_value_holder__m141__;
output            post_value_holder__m142__;
output            post_value_holder__m143__;
output            tx_mac_full;
output     [12:0] tx_mac_usedw;
output            variable_map_assert__p70__;
output            variable_map_assert__p75__;
output            variable_map_assert__p77__;
output            variable_map_assert__p79__;
output            variable_map_assert__p81__;
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
(* keep *) wire            __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__;
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
(* keep *) wire            __m68__;
(* keep *) wire            __m69__;
(* keep *) wire            __m71__;
(* keep *) wire            __m72__;
(* keep *) wire            __m73__;
(* keep *) wire            __m74__;
(* keep *) wire            __m76__;
(* keep *) wire            __m78__;
(* keep *) wire            __m7__;
(* keep *) wire            __m80__;
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
(* keep *) wire            additional_mapping_control_assume__m105__;
(* keep *) wire            additional_mapping_control_assume__m106__;
(* keep *) wire            additional_mapping_control_assume__m107__;
(* keep *) wire            additional_mapping_control_assume__m108__;
(* keep *) wire            additional_mapping_control_assume__m109__;
(* keep *) wire            additional_mapping_control_assume__m110__;
(* keep *) wire            additional_mapping_control_assume__m111__;
(* keep *) wire            additional_mapping_control_assume__m112__;
(* keep *) wire            additional_mapping_control_assume__m113__;
(* keep *) wire            additional_mapping_control_assume__m114__;
(* keep *) wire            additional_mapping_control_assume__m115__;
(* keep *) wire            additional_mapping_control_assume__m116__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire            invariant_assume__m100__;
(* keep *) wire            invariant_assume__m101__;
(* keep *) wire            invariant_assume__m102__;
(* keep *) wire            invariant_assume__m103__;
(* keep *) wire            invariant_assume__m104__;
(* keep *) wire            invariant_assume__m82__;
(* keep *) wire            invariant_assume__m83__;
(* keep *) wire            invariant_assume__m84__;
(* keep *) wire            invariant_assume__m85__;
(* keep *) wire            invariant_assume__m86__;
(* keep *) wire            invariant_assume__m87__;
(* keep *) wire            invariant_assume__m88__;
(* keep *) wire            invariant_assume__m89__;
(* keep *) wire            invariant_assume__m90__;
(* keep *) wire            invariant_assume__m91__;
(* keep *) wire            invariant_assume__m92__;
(* keep *) wire            invariant_assume__m93__;
(* keep *) wire            invariant_assume__m94__;
(* keep *) wire            invariant_assume__m95__;
(* keep *) wire            invariant_assume__m96__;
(* keep *) wire            invariant_assume__m97__;
(* keep *) wire            invariant_assume__m98__;
(* keep *) wire            invariant_assume__m99__;
(* keep *) wire            issue_decode__m117__;
(* keep *) wire            issue_valid__m118__;
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
(* keep *) wire            post_value_holder__m119__;
(* keep *) wire            post_value_holder__m120__;
(* keep *) wire            post_value_holder__m121__;
(* keep *) wire            post_value_holder__m122__;
(* keep *) wire            post_value_holder__m123__;
(* keep *) wire            post_value_holder__m124__;
(* keep *) wire            post_value_holder__m125__;
(* keep *) wire            post_value_holder__m126__;
(* keep *) wire            post_value_holder__m127__;
(* keep *) wire            post_value_holder__m128__;
(* keep *) wire            post_value_holder__m129__;
(* keep *) wire            post_value_holder__m130__;
(* keep *) wire            post_value_holder__m131__;
(* keep *) wire            post_value_holder__m132__;
(* keep *) wire            post_value_holder__m133__;
(* keep *) wire            post_value_holder__m134__;
(* keep *) wire            post_value_holder__m135__;
(* keep *) wire            post_value_holder__m136__;
(* keep *) wire            post_value_holder__m137__;
(* keep *) wire            post_value_holder__m138__;
(* keep *) wire            post_value_holder__m139__;
(* keep *) wire            post_value_holder__m140__;
(* keep *) wire            post_value_holder__m141__;
(* keep *) wire            post_value_holder__m142__;
(* keep *) wire            post_value_holder__m143__;
wire            rst;
(* keep *) wire            tx_mac_full;
(* keep *) wire     [12:0] tx_mac_usedw;
(* keep *) wire            variable_map_assert__p70__;
(* keep *) wire            variable_map_assert__p75__;
(* keep *) wire            variable_map_assert__p77__;
(* keep *) wire            variable_map_assert__p79__;
(* keep *) wire            variable_map_assert__p81__;
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
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 6) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
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
assign __m67__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_)&&( __ILA_SO_TXFIFO_BUFF_1 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_)&&( __ILA_SO_TXFIFO_BUFF_2 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_)&&( __ILA_SO_TXFIFO_BUFF_3 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_)&&( __ILA_SO_TXFIFO_BUFF_4 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_)&&( __ILA_SO_TXFIFO_BUFF_5 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_)&&( __ILA_SO_TXFIFO_BUFF_6 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_)&&( __ILA_SO_TXFIFO_BUFF_7 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_)&&( __ILA_SO_TXFIFO_BUFF_8 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_)&&( __ILA_SO_TXFIFO_BUFF_9 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_)&&( __ILA_SO_TXFIFO_BUFF_10 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_)&&( __ILA_SO_TXFIFO_BUFF_11 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_)&&( __ILA_SO_TXFIFO_BUFF_12 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_)&&( __ILA_SO_TXFIFO_BUFF_13 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_)&&( __ILA_SO_TXFIFO_BUFF_14 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_)&&( __ILA_SO_TXFIFO_BUFF_15 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ;
assign __m68__ = m1__DOT__core__DOT__txfifo__DOT__rdreq == __ILA_SO_TXFIFO_RD_EN ;
assign __m69__ = txfifo_rd_en_end == __ILA_SO_TXFIFO_RD_EN ;
assign variable_map_assert__p70__ = (~ __IEND__) || ((~ ((__START__) ) || (__m68__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m69__))) ;
assign __m71__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign __m72__ = b2b_counter_RdByteCnt_end == __ILA_SO_TX_B2B_CNTR ;
assign __m73__ = b2b_counter_WrPktPayload_end == __ILA_SO_TX_B2B_CNTR ;
assign __m74__ = b2b_counter_LastOne_end == __ILA_SO_TX_B2B_CNTR ;
assign variable_map_assert__p75__ = (~ __IEND__) || ((~ ((__START__) ) || (__m71__) )&&( ~ (~(__START__)&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1)) ) || (__m72__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2)) ) || (__m73__) )&&( ~ (~(__START__)&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 1))&&~(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 2))&&(__IEND__ && (__ILA_SO_TX_FUNC_INSTR == 3)) ) || (__m74__))) ;
assign __m76__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok == __ILA_SO_TX_B2B_OK ;
assign variable_map_assert__p77__ = (~ __IEND__) || (__m76__) ;
assign __m78__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == __ILA_SO_XGMII_COUT_REG ;
assign variable_map_assert__p79__ = (~ __IEND__) || (__m78__) ;
assign __m80__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == __ILA_SO_XGMII_DOUT_REG ;
assign variable_map_assert__p81__ = (~ __IEND__) || (__m80__) ;
assign invariant_assume__m82__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state <= 8'h10) ;
assign invariant_assume__m83__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h01) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h02) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04) || ( m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h10) ;
assign invariant_assume__m84__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h01) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h02) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h10) ;
assign invariant_assume__m85__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 1) || ((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 1) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 8) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 16)) ;
assign invariant_assume__m86__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h02) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 1) ;
assign invariant_assume__m87__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 1) ;
assign invariant_assume__m88__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 2) ;
assign invariant_assume__m89__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h10) || ((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h08)) ;
assign invariant_assume__m90__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts == 0)) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h04 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rts == 1) ;
assign invariant_assume__m91__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel == 0) || (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h04) && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel == 1) ;
assign invariant_assume__m92__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h05 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc == 1) || ( ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h05) && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__insert_crc == 0) ;
assign invariant_assume__m93__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc_int == 8'hff) ;
assign invariant_assume__m94__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == 8'hff) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == 64'h0707070707070707) ;
assign invariant_assume__m95__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 == 64'hd5555555555555fb) ;
assign invariant_assume__m96__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt <= 104) ;
assign invariant_assume__m97__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes <= 104) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__nbytes_reg <= 104) ;
assign invariant_assume__m98__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h10) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes == m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ;
assign invariant_assume__m99__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter < 6) ;
assign invariant_assume__m100__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state > 8'h01) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_cnt_val == 5) ;
assign invariant_assume__m101__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 8'h10 && m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == 5) ;
assign invariant_assume__m102__ = ~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state >= 5'h08) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter > 0) ;
assign invariant_assume__m103__ = ~((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter <= 4) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter > 0)) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_ok == 0) ;
assign invariant_assume__m104__ = ~((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state <= 5'h04) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == 5'h10)) || (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__IDLE_sel == 1) ;
assign additional_mapping_control_assume__m105__ = (m1__DOT__TCORE_MODE == 1) ;
assign additional_mapping_control_assume__m106__ = (m1__DOT__SYS_ADDR == 1) ;
assign additional_mapping_control_assume__m107__ = (m1__DOT__mode_10G == 1) && (m1__DOT__core__DOT__mode_10G == 1) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_10G == 1) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_10G == 1) ;
assign additional_mapping_control_assume__m108__ = (m1__DOT__mode_5G == 0 ) && (m1__DOT__core__DOT__mode_5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_5G == 0) ;
assign additional_mapping_control_assume__m109__ = (m1__DOT__mode_2p5G == 0) && (m1__DOT__core__DOT__mode_2p5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__mode_2p5G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_2p5G == 0) ;
assign additional_mapping_control_assume__m110__ = (m1__DOT__mode_1G == 0) && (m1__DOT__core__DOT__mode_1G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__mode_1G == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__mode_1G == 0) ;
assign additional_mapping_control_assume__m111__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state > 1) || (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__usedw_i > 0)) ;
assign additional_mapping_control_assume__m112__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state > 1) || (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wren == 0)) ;
assign additional_mapping_control_assume__m113__ = (~(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == 4) || ((m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout[15:0] > 60) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__txfifo_dout[15:0] < 100))) ;
assign additional_mapping_control_assume__m114__ = (m1__DOT__core__DOT__rx_pause == 0) && (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__rx_pause_sync == 0) ;
assign additional_mapping_control_assume__m115__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_b2b_dly == 2) ;
assign additional_mapping_control_assume__m116__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__fmac_tx_clr_en == 0) ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign issue_decode__m117__ = (~ __START__) || (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) ;
assign issue_valid__m118__ = (~ __START__) || (__ILA_TX_FUNC_valid__) ;
assign __ISSUE__ = 1 ;
assign post_value_holder__m119__ = (~(__CYCLE_CNT__ == 1) || ((b2b_counter_LastOne_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m120__ = (~(__CYCLE_CNT__ == 5) || ((b2b_counter_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m121__ = (~(__CYCLE_CNT__ == 1) || ((b2b_counter_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m122__ = (~(__CYCLE_CNT__ == 2) || ((crc_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32))) ;
assign post_value_holder__m123__ = (~(__CYCLE_CNT__ == 1) || ((crc_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32))) ;
assign post_value_holder__m124__ = (~(__CYCLE_CNT__ == 2) || ((crc_in_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in))) ;
assign post_value_holder__m125__ = (~(__CYCLE_CNT__ == 1) || ((crc_in_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in))) ;
assign post_value_holder__m126__ = (~(__CYCLE_CNT__ == 4) || ((tx_pkt_byte_cnt_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg))) ;
assign post_value_holder__m127__ = (~(__CYCLE_CNT__ == 4) || ((tx_st_encap_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state))) ;
assign post_value_holder__m128__ = (~(__CYCLE_CNT__ == 1) || ((tx_st_encap_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state))) ;
assign post_value_holder__m129__ = (~(__CYCLE_CNT__ == 1) || ((tx_state_LastOne_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m130__ = (~(__CYCLE_CNT__ == 5) || ((tx_state_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m131__ = (~(__CYCLE_CNT__ == 1) || ((tx_state_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m132__ = (~(__CYCLE_CNT__ == 5) || ((tx_wcnt_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt))) ;
assign post_value_holder__m133__ = (~(__CYCLE_CNT__ == 1) || ((tx_wcnt_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt))) ;
assign post_value_holder__m134__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_buff_rd_output_RdByteCnt_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout))) ;
assign post_value_holder__m135__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_buff_rd_output_normal_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout))) ;
assign post_value_holder__m136__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_buff_rd_ptr_RdByteCnt_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr))) ;
assign post_value_holder__m137__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_buff_rd_ptr_normal_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr))) ;
assign post_value_holder__m138__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_buff_wr_ptr_RdByteCnt_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr))) ;
assign post_value_holder__m139__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_buff_wr_ptr_normal_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr))) ;
assign post_value_holder__m140__ = (~(__START__ == 1) || ((txfifo_full_end) == (m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wrfull))) ;
assign post_value_holder__m141__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_rd_en_end) == (m1__DOT__core__DOT__txfifo__DOT__rdreq))) ;
assign post_value_holder__m142__ = (~(__CYCLE_CNT__ == 2) || ((txfifo_wused_RdByte_end) == (m1__DOT__core__DOT__txfifo_usedw))) ;
assign post_value_holder__m143__ = (~(__CYCLE_CNT__ == 1) || ((txfifo_wused_normal_end) == (m1__DOT__core__DOT__txfifo_usedw))) ;

TX_FUNC__DOT__SET_B2B_CNTR_10G m0 (
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
   .__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__(__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__),
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
   .__COUNTER_start__n11()
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
module TX_FUNC__DOT__SET_B2B_CNTR_10G(
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
__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__,
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
__COUNTER_start__n11
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
output            __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__;
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
output reg      [7:0] __COUNTER_start__n11;
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
wire            __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__;
wire            __ILA_TX_FUNC_valid__;
wire            __START__;
wire            clk;
wire            n0____DOLLAR__165;
wire            n10____DOLLAR__193;
wire            n12____DOLLAR__202;
wire      [5:0] n13____DOLLAR__199;
wire      [5:0] n14____DOLLAR__204;
wire            n15____DOLLAR__211;
wire            n16____DOLLAR__213;
wire     [31:0] n17____DOLLAR__225;
wire     [63:0] n18____DOLLAR__231;
wire            n1____DOLLAR__170;
wire            n2____DOLLAR__190;
wire            n3____DOLLAR__175;
wire            n4____DOLLAR__191;
wire            n5____DOLLAR__180;
wire            n6____DOLLAR__182;
wire            n7____DOLLAR__184;
wire            n8____DOLLAR__192;
wire            n9____DOLLAR__188;
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
assign n0____DOLLAR__165 =  ( MODE_10G ) == ( 1'b1 )  ;
assign n1____DOLLAR__170 =  ( TX_STATE ) == ( 5'd1 )  ;
assign n2____DOLLAR__190 =  ( n0____DOLLAR__165 ) & (n1____DOLLAR__170 )  ;
assign n3____DOLLAR__175 =  ( TX_STATE_ENCAP ) == ( 8'd1 )  ;
assign n4____DOLLAR__191 =  ( n2____DOLLAR__190 ) & (n3____DOLLAR__175 )  ;
assign n5____DOLLAR__180 =  ( TX_B2B_CNTR ) == ( 6'd0 )  ;
assign n6____DOLLAR__182 =  $signed( TX_B2B_CNTR ) > $signed( 6'd0 )  ;
assign n7____DOLLAR__184 =  ( n5____DOLLAR__180 ) | ( n6____DOLLAR__182 )  ;
assign n8____DOLLAR__192 =  ( n4____DOLLAR__191 ) & (n7____DOLLAR__184 )  ;
assign n9____DOLLAR__188 =  ( TX_B2B_OK ) == ( 1'b0 )  ;
assign n10____DOLLAR__193 =  ( n8____DOLLAR__192 ) & (n9____DOLLAR__188 )  ;
assign __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__ = n10____DOLLAR__193 ;
assign n12____DOLLAR__202 =  ( TX_B2B_CNTR ) == ( 6'd0 )  ;
assign n13____DOLLAR__199 =  ( TX_B2B_CNTR ) - ( 6'd1 )  ;
assign n14____DOLLAR__204 =  ( n12____DOLLAR__202 ) ? ( TX_B2B_CNTR ) : ( n13____DOLLAR__199 ) ;
assign n15____DOLLAR__211 =  ( TX_B2B_CNTR ) == ( 6'd0 )  ;
assign n16____DOLLAR__213 =  ( n15____DOLLAR__211 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n17____DOLLAR__225 =  { ( 16'd1799 ) , ( 16'd1799 ) }  ;
assign n18____DOLLAR__231 =  { ( n17____DOLLAR__225 ) , ( 32'd117901063 ) }  ;
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
       __COUNTER_start__n11 <= 0;
   end
   else if(__START__ && __ILA_TX_FUNC_valid__) begin
       if ( __ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__ ) begin 
           __COUNTER_start__n11 <= 1; end
       else if( (__COUNTER_start__n11 >= 1 ) && ( __COUNTER_start__n11 < 255 )) begin
           __COUNTER_start__n11 <= __COUNTER_start__n11 + 1; end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_FULL <= TXFIFO_FULL ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TXFIFO_RD_EN <= 1'd0 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_STATE <= TX_STATE ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_STATE_ENCAP <= TX_STATE_ENCAP ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_B2B_CNTR <= n14____DOLLAR__204 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_B2B_OK <= n16____DOLLAR__213 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_PACKET_BYTE_CNT <= TX_PACKET_BYTE_CNT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_WCNT <= TX_WCNT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           XGMII_DOUT_REG <= n18____DOLLAR__231 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           XGMII_COUT_REG <= 8'd255 ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_PKT_SENT <= TX_PKT_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_BYTE_SENT <= TX_BYTE_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           CRC <= CRC ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           CRC_DAT_IN <= CRC_DAT_IN ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           CRC_IN <= CRC_IN ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_WCNT_INI <= TX_WCNT_INI ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_BUF <= TX_BUF ;
       end
       if (__ILA_TX_FUNC_decode_of_SET_B2B_CNTR_10G__) begin
           TX_FUNC_INSTR <= 3'd0 ;
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
