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
__tx_pkt_byte_cnt_RdByteCnt_end_init__,
__tx_st_encap_RdByteCnt_end_init__,
__tx_st_encap_WrPktPayload_end_init__,
__tx_state_LastOne_end_init__,
__tx_state_RdByteCnt_end_init__,
__tx_state_WrPktPayload_end_init__,
__tx_wcnt_RdByteCnt_end_init__,
__tx_wcnt_WrPktPaylaod_end_init__,
clk,
dummy_reset,
rst,
__ILA_SO_CRC,
__ILA_SO_CRC_DAT_IN,
__ILA_SO_CRC_IN,
__ILA_SO_TXFIFO_BUFF_RD_PTR,
__ILA_SO_TXFIFO_BUFF_WR_PTR,
__ILA_SO_TXFIFO_FULL,
__ILA_SO_TXFIFO_RD_OUTPUT,
__ILA_SO_TXFIFO_WUSED_QWD,
__ILA_SO_TX_B2B_CNTR,
__ILA_SO_TX_BUF,
__ILA_SO_TX_BYTE_SENT,
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
__m11__,
__m13__,
__m15__,
__m17__,
__m19__,
__m1__,
__m21__,
__m23__,
__m25__,
__m27__,
__m29__,
__m31__,
__m33__,
__m35__,
__m37__,
__m39__,
__m3__,
__m41__,
__m43__,
__m45__,
__m47__,
__m48__,
__m50__,
__m52__,
__m54__,
__m56__,
__m58__,
__m5__,
__m60__,
__m62__,
__m64__,
__m66__,
__m7__,
__m9__,
additional_mapping_control_assume__m68__,
additional_mapping_control_assume__m69__,
additional_mapping_control_assume__m70__,
additional_mapping_control_assume__m71__,
additional_mapping_control_assume__m72__,
additional_mapping_control_assume__m73__,
additional_mapping_control_assume__m74__,
additional_mapping_control_assume__m75__,
additional_mapping_control_assume__m76__,
issue_decode__m77__,
issue_valid__m78__,
m1__DOT__SYS_ADDR,
m1__DOT__TCORE_MODE,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd,
m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt,
m1__DOT__core__DOT__tx_b2b_dly,
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
m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr,
m1__DOT__core__DOT__txfifo_wr_en,
m1__DOT__mode_10G,
m1__DOT__mode_1G,
m1__DOT__mode_2p5G,
m1__DOT__mode_5G,
m1__DOT__tx_mac_full,
m1__DOT__tx_mac_usedw,
noreset__m0__,
post_value_holder__m79__,
post_value_holder__m80__,
post_value_holder__m81__,
post_value_holder__m82__,
post_value_holder__m83__,
post_value_holder__m84__,
post_value_holder__m85__,
post_value_holder__m86__,
post_value_holder__m87__,
post_value_holder__m88__,
post_value_holder__m89__,
tx_mac_full,
tx_mac_usedw,
variable_map_assert__p42__,
variable_map_assert__p44__,
variable_map_assert__p46__,
variable_map_assert__p49__,
variable_map_assert__p51__,
variable_map_assert__p53__,
variable_map_assert__p55__,
variable_map_assert__p57__,
variable_map_assert__p59__,
variable_map_assert__p61__,
variable_map_assert__p63__,
variable_map_assert__p65__,
variable_map_assert__p67__,
variable_map_assume__m10__,
variable_map_assume__m12__,
variable_map_assume__m14__,
variable_map_assume__m16__,
variable_map_assume__m18__,
variable_map_assume__m20__,
variable_map_assume__m22__,
variable_map_assume__m24__,
variable_map_assume__m26__,
variable_map_assume__m28__,
variable_map_assume__m2__,
variable_map_assume__m30__,
variable_map_assume__m32__,
variable_map_assume__m34__,
variable_map_assume__m36__,
variable_map_assume__m38__,
variable_map_assume__m40__,
variable_map_assume__m4__,
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
tx_pkt_byte_cnt_RdByteCnt_end,
tx_st_encap_RdByteCnt_end,
tx_st_encap_WrPktPayload_end,
tx_state_LastOne_end,
tx_state_RdByteCnt_end,
tx_state_WrPktPayload_end,
tx_wcnt_RdByteCnt_end,
tx_wcnt_WrPktPaylaod_end
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
input     [15:0] __tx_pkt_byte_cnt_RdByteCnt_end_init__;
input      [7:0] __tx_st_encap_RdByteCnt_end_init__;
input      [7:0] __tx_st_encap_WrPktPayload_end_init__;
input      [7:0] __tx_state_LastOne_end_init__;
input      [7:0] __tx_state_RdByteCnt_end_init__;
input      [7:0] __tx_state_WrPktPayload_end_init__;
input     [15:0] __tx_wcnt_RdByteCnt_end_init__;
input     [15:0] __tx_wcnt_WrPktPaylaod_end_init__;
input            clk;
input            dummy_reset;
input            rst;
output     [31:0] __ILA_SO_CRC;
output     [63:0] __ILA_SO_CRC_DAT_IN;
output     [31:0] __ILA_SO_CRC_IN;
output      [4:0] __ILA_SO_TXFIFO_BUFF_RD_PTR;
output      [4:0] __ILA_SO_TXFIFO_BUFF_WR_PTR;
output            __ILA_SO_TXFIFO_FULL;
output     [63:0] __ILA_SO_TXFIFO_RD_OUTPUT;
output     [12:0] __ILA_SO_TXFIFO_WUSED_QWD;
output      [5:0] __ILA_SO_TX_B2B_CNTR;
output     [63:0] __ILA_SO_TX_BUF;
output     [31:0] __ILA_SO_TX_BYTE_SENT;
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
output            __m11__;
output            __m13__;
output            __m15__;
output            __m17__;
output            __m19__;
output            __m1__;
output            __m21__;
output            __m23__;
output            __m25__;
output            __m27__;
output            __m29__;
output            __m31__;
output            __m33__;
output            __m35__;
output            __m37__;
output            __m39__;
output            __m3__;
output            __m41__;
output            __m43__;
output            __m45__;
output            __m47__;
output            __m48__;
output            __m50__;
output            __m52__;
output            __m54__;
output            __m56__;
output            __m58__;
output            __m5__;
output            __m60__;
output            __m62__;
output            __m64__;
output            __m66__;
output            __m7__;
output            __m9__;
output            additional_mapping_control_assume__m68__;
output            additional_mapping_control_assume__m69__;
output            additional_mapping_control_assume__m70__;
output            additional_mapping_control_assume__m71__;
output            additional_mapping_control_assume__m72__;
output            additional_mapping_control_assume__m73__;
output            additional_mapping_control_assume__m74__;
output            additional_mapping_control_assume__m75__;
output            additional_mapping_control_assume__m76__;
output            issue_decode__m77__;
output            issue_valid__m78__;
output      [3:0] m1__DOT__SYS_ADDR;
output            m1__DOT__TCORE_MODE;
output      [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
output      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
output            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
output      [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
output     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
output      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
output     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
output     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
output      [1:0] m1__DOT__core__DOT__tx_b2b_dly;
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
output      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
output            m1__DOT__core__DOT__txfifo_wr_en;
output            m1__DOT__mode_10G;
output            m1__DOT__mode_1G;
output            m1__DOT__mode_2p5G;
output            m1__DOT__mode_5G;
output            m1__DOT__tx_mac_full;
output     [12:0] m1__DOT__tx_mac_usedw;
output            noreset__m0__;
output            post_value_holder__m79__;
output            post_value_holder__m80__;
output            post_value_holder__m81__;
output            post_value_holder__m82__;
output            post_value_holder__m83__;
output            post_value_holder__m84__;
output            post_value_holder__m85__;
output            post_value_holder__m86__;
output            post_value_holder__m87__;
output            post_value_holder__m88__;
output            post_value_holder__m89__;
output            tx_mac_full;
output     [12:0] tx_mac_usedw;
output            variable_map_assert__p42__;
output            variable_map_assert__p44__;
output            variable_map_assert__p46__;
output            variable_map_assert__p49__;
output            variable_map_assert__p51__;
output            variable_map_assert__p53__;
output            variable_map_assert__p55__;
output            variable_map_assert__p57__;
output            variable_map_assert__p59__;
output            variable_map_assert__p61__;
output            variable_map_assert__p63__;
output            variable_map_assert__p65__;
output            variable_map_assert__p67__;
output            variable_map_assume__m10__;
output            variable_map_assume__m12__;
output            variable_map_assume__m14__;
output            variable_map_assume__m16__;
output            variable_map_assume__m18__;
output            variable_map_assume__m20__;
output            variable_map_assume__m22__;
output            variable_map_assume__m24__;
output            variable_map_assume__m26__;
output            variable_map_assume__m28__;
output            variable_map_assume__m2__;
output            variable_map_assume__m30__;
output            variable_map_assume__m32__;
output            variable_map_assume__m34__;
output            variable_map_assume__m36__;
output            variable_map_assume__m38__;
output            variable_map_assume__m40__;
output            variable_map_assume__m4__;
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
output reg     [15:0] tx_pkt_byte_cnt_RdByteCnt_end;
output reg      [7:0] tx_st_encap_RdByteCnt_end;
output reg      [7:0] tx_st_encap_WrPktPayload_end;
output reg      [7:0] tx_state_LastOne_end;
output reg      [7:0] tx_state_RdByteCnt_end;
output reg      [7:0] tx_state_WrPktPayload_end;
output reg     [15:0] tx_wcnt_RdByteCnt_end;
output reg     [15:0] tx_wcnt_WrPktPaylaod_end;
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
(* keep *) wire     [63:0] __ILA_SO_TXFIFO_RD_OUTPUT;
(* keep *) wire     [12:0] __ILA_SO_TXFIFO_WUSED_QWD;
(* keep *) wire      [5:0] __ILA_SO_TX_B2B_CNTR;
(* keep *) wire     [63:0] __ILA_SO_TX_BUF;
(* keep *) wire     [31:0] __ILA_SO_TX_BYTE_SENT;
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
(* keep *) wire            __m11__;
(* keep *) wire            __m13__;
(* keep *) wire            __m15__;
(* keep *) wire            __m17__;
(* keep *) wire            __m19__;
(* keep *) wire            __m1__;
(* keep *) wire            __m21__;
(* keep *) wire            __m23__;
(* keep *) wire            __m25__;
(* keep *) wire            __m27__;
(* keep *) wire            __m29__;
(* keep *) wire            __m31__;
(* keep *) wire            __m33__;
(* keep *) wire            __m35__;
(* keep *) wire            __m37__;
(* keep *) wire            __m39__;
(* keep *) wire            __m3__;
(* keep *) wire            __m41__;
(* keep *) wire            __m43__;
(* keep *) wire            __m45__;
(* keep *) wire            __m47__;
(* keep *) wire            __m48__;
(* keep *) wire            __m50__;
(* keep *) wire            __m52__;
(* keep *) wire            __m54__;
(* keep *) wire            __m56__;
(* keep *) wire            __m58__;
(* keep *) wire            __m5__;
(* keep *) wire            __m60__;
(* keep *) wire            __m62__;
(* keep *) wire            __m64__;
(* keep *) wire            __m66__;
(* keep *) wire            __m7__;
(* keep *) wire            __m9__;
wire     [15:0] __tx_pkt_byte_cnt_RdByteCnt_end_init__;
wire      [7:0] __tx_st_encap_RdByteCnt_end_init__;
wire      [7:0] __tx_st_encap_WrPktPayload_end_init__;
wire      [7:0] __tx_state_LastOne_end_init__;
wire      [7:0] __tx_state_RdByteCnt_end_init__;
wire      [7:0] __tx_state_WrPktPayload_end_init__;
wire     [15:0] __tx_wcnt_RdByteCnt_end_init__;
wire     [15:0] __tx_wcnt_WrPktPaylaod_end_init__;
(* keep *) wire            additional_mapping_control_assume__m68__;
(* keep *) wire            additional_mapping_control_assume__m69__;
(* keep *) wire            additional_mapping_control_assume__m70__;
(* keep *) wire            additional_mapping_control_assume__m71__;
(* keep *) wire            additional_mapping_control_assume__m72__;
(* keep *) wire            additional_mapping_control_assume__m73__;
(* keep *) wire            additional_mapping_control_assume__m74__;
(* keep *) wire            additional_mapping_control_assume__m75__;
(* keep *) wire            additional_mapping_control_assume__m76__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire            issue_decode__m77__;
(* keep *) wire            issue_valid__m78__;
(* keep *) wire      [3:0] m1__DOT__SYS_ADDR;
(* keep *) wire            m1__DOT__TCORE_MODE;
(* keep *) wire      [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
(* keep *) wire      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
(* keep *) wire            m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
(* keep *) wire      [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
(* keep *) wire     [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
(* keep *) wire      [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
(* keep *) wire     [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
(* keep *) wire     [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
(* keep *) wire      [1:0] m1__DOT__core__DOT__tx_b2b_dly;
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
(* keep *) wire      [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
(* keep *) wire            m1__DOT__core__DOT__txfifo_wr_en;
(* keep *) wire            m1__DOT__mode_10G;
(* keep *) wire            m1__DOT__mode_1G;
(* keep *) wire            m1__DOT__mode_2p5G;
(* keep *) wire            m1__DOT__mode_5G;
(* keep *) wire            m1__DOT__tx_mac_full;
(* keep *) wire     [12:0] m1__DOT__tx_mac_usedw;
(* keep *) wire            noreset__m0__;
(* keep *) wire            post_value_holder__m79__;
(* keep *) wire            post_value_holder__m80__;
(* keep *) wire            post_value_holder__m81__;
(* keep *) wire            post_value_holder__m82__;
(* keep *) wire            post_value_holder__m83__;
(* keep *) wire            post_value_holder__m84__;
(* keep *) wire            post_value_holder__m85__;
(* keep *) wire            post_value_holder__m86__;
(* keep *) wire            post_value_holder__m87__;
(* keep *) wire            post_value_holder__m88__;
(* keep *) wire            post_value_holder__m89__;
wire            rst;
(* keep *) wire            tx_mac_full;
(* keep *) wire     [12:0] tx_mac_usedw;
(* keep *) wire            variable_map_assert__p42__;
(* keep *) wire            variable_map_assert__p44__;
(* keep *) wire            variable_map_assert__p46__;
(* keep *) wire            variable_map_assert__p49__;
(* keep *) wire            variable_map_assert__p51__;
(* keep *) wire            variable_map_assert__p53__;
(* keep *) wire            variable_map_assert__p55__;
(* keep *) wire            variable_map_assert__p57__;
(* keep *) wire            variable_map_assert__p59__;
(* keep *) wire            variable_map_assert__p61__;
(* keep *) wire            variable_map_assert__p63__;
(* keep *) wire            variable_map_assert__p65__;
(* keep *) wire            variable_map_assert__p67__;
(* keep *) wire            variable_map_assume__m10__;
(* keep *) wire            variable_map_assume__m12__;
(* keep *) wire            variable_map_assume__m14__;
(* keep *) wire            variable_map_assume__m16__;
(* keep *) wire            variable_map_assume__m18__;
(* keep *) wire            variable_map_assume__m20__;
(* keep *) wire            variable_map_assume__m22__;
(* keep *) wire            variable_map_assume__m24__;
(* keep *) wire            variable_map_assume__m26__;
(* keep *) wire            variable_map_assume__m28__;
(* keep *) wire            variable_map_assume__m2__;
(* keep *) wire            variable_map_assume__m30__;
(* keep *) wire            variable_map_assume__m32__;
(* keep *) wire            variable_map_assume__m34__;
(* keep *) wire            variable_map_assume__m36__;
(* keep *) wire            variable_map_assume__m38__;
(* keep *) wire            variable_map_assume__m40__;
(* keep *) wire            variable_map_assume__m4__;
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
assign variable_map_assume__m2__ = (~ __START__ )|| (__m1__) ;
assign __m3__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin == __ILA_SO_CRC_DAT_IN ;
assign variable_map_assume__m4__ = (~ __START__ )|| (__m3__) ;
assign __m5__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in == __ILA_SO_CRC_IN ;
assign variable_map_assume__m6__ = (~ __START__ )|| (__m5__) ;
assign __m7__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_)&&( __ILA_SO_TXFIFO_BUFF_1 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_)&&( __ILA_SO_TXFIFO_BUFF_2 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_)&&( __ILA_SO_TXFIFO_BUFF_3 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_)&&( __ILA_SO_TXFIFO_BUFF_4 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_)&&( __ILA_SO_TXFIFO_BUFF_5 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_)&&( __ILA_SO_TXFIFO_BUFF_6 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_)&&( __ILA_SO_TXFIFO_BUFF_7 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_)&&( __ILA_SO_TXFIFO_BUFF_8 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_)&&( __ILA_SO_TXFIFO_BUFF_9 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_)&&( __ILA_SO_TXFIFO_BUFF_10 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_)&&( __ILA_SO_TXFIFO_BUFF_11 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_)&&( __ILA_SO_TXFIFO_BUFF_12 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_)&&( __ILA_SO_TXFIFO_BUFF_13 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_)&&( __ILA_SO_TXFIFO_BUFF_14 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_)&&( __ILA_SO_TXFIFO_BUFF_15 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ;
assign variable_map_assume__m8__ = (~ __START__ )|| (__m7__) ;
assign __m9__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign variable_map_assume__m10__ = (~ __START__ )|| (__m9__) ;
assign __m11__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr == __ILA_SO_TXFIFO_BUFF_WR_PTR ;
assign variable_map_assume__m12__ = (~ __START__ )|| (__m11__) ;
assign __m13__ = m1__DOT__tx_mac_full == __ILA_SO_TXFIFO_FULL ;
assign variable_map_assume__m14__ = (~ __START__ )|| (__m13__) ;
assign __m15__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign variable_map_assume__m16__ = (~ __START__ )|| (__m15__) ;
assign __m17__ = m1__DOT__tx_mac_usedw == __ILA_SO_TXFIFO_WUSED_QWD ;
assign variable_map_assume__m18__ = (~ __START__ )|| (__m17__) ;
assign __m19__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign variable_map_assume__m20__ = (~ __START__ )|| (__m19__) ;
assign __m21__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 == __ILA_SO_TX_BUF ;
assign variable_map_assume__m22__ = (~ __START__ )|| (__m21__) ;
assign __m23__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt == __ILA_SO_TX_BYTE_SENT ;
assign variable_map_assume__m24__ = (~ __START__ )|| (__m23__) ;
assign __m25__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg == __ILA_SO_TX_PACKET_BYTE_CNT ;
assign variable_map_assume__m26__ = (~ __START__ )|| (__m25__) ;
assign __m27__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted == __ILA_SO_TX_PKT_SENT ;
assign variable_map_assume__m28__ = (~ __START__ )|| (__m27__) ;
assign __m29__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == __ILA_SO_TX_STATE ;
assign variable_map_assume__m30__ = (~ __START__ )|| (__m29__) ;
assign __m31__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == __ILA_SO_TX_STATE_ENCAP ;
assign variable_map_assume__m32__ = (~ __START__ )|| (__m31__) ;
assign __m33__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt == __ILA_SO_TX_WCNT ;
assign variable_map_assume__m34__ = (~ __START__ )|| (__m33__) ;
assign __m35__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini == __ILA_SO_TX_WCNT_INI ;
assign variable_map_assume__m36__ = (~ __START__ )|| (__m35__) ;
assign __m37__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == __ILA_SO_XGMII_COUT_REG ;
assign variable_map_assume__m38__ = (~ __START__ )|| (__m37__) ;
assign __m39__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == __ILA_SO_XGMII_DOUT_REG ;
assign variable_map_assume__m40__ = (~ __START__ )|| (__m39__) ;
assign __m41__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32 == __ILA_SO_CRC ;
assign variable_map_assert__p42__ = (~ __IEND__) || (__m41__) ;
assign __m43__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin == __ILA_SO_CRC_DAT_IN ;
assign variable_map_assert__p44__ = (~ __IEND__) || (__m43__) ;
assign __m45__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in == __ILA_SO_CRC_IN ;
assign variable_map_assert__p46__ = (~ __IEND__) || (__m45__) ;
assign __m47__ = ( __ILA_SO_TXFIFO_BUFF_0 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_)&&( __ILA_SO_TXFIFO_BUFF_1 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_)&&( __ILA_SO_TXFIFO_BUFF_2 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_)&&( __ILA_SO_TXFIFO_BUFF_3 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_)&&( __ILA_SO_TXFIFO_BUFF_4 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_)&&( __ILA_SO_TXFIFO_BUFF_5 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_)&&( __ILA_SO_TXFIFO_BUFF_6 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_)&&( __ILA_SO_TXFIFO_BUFF_7 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_)&&( __ILA_SO_TXFIFO_BUFF_8 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_)&&( __ILA_SO_TXFIFO_BUFF_9 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_)&&( __ILA_SO_TXFIFO_BUFF_10 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_)&&( __ILA_SO_TXFIFO_BUFF_11 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_)&&( __ILA_SO_TXFIFO_BUFF_12 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_)&&( __ILA_SO_TXFIFO_BUFF_13 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_)&&( __ILA_SO_TXFIFO_BUFF_14 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_)&&( __ILA_SO_TXFIFO_BUFF_15 == m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ;
assign __m48__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr == __ILA_SO_TXFIFO_BUFF_RD_PTR ;
assign variable_map_assert__p49__ = (~ __IEND__) || (__m48__) ;
assign __m50__ = m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout == __ILA_SO_TXFIFO_RD_OUTPUT ;
assign variable_map_assert__p51__ = (~ __IEND__) || (__m50__) ;
assign __m52__ = m1__DOT__tx_mac_usedw == __ILA_SO_TXFIFO_WUSED_QWD ;
assign variable_map_assert__p53__ = (~ __IEND__) || (__m52__) ;
assign __m54__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter == __ILA_SO_TX_B2B_CNTR ;
assign variable_map_assert__p55__ = (~ __IEND__) || (__m54__) ;
assign __m56__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 == __ILA_SO_TX_BUF ;
assign variable_map_assert__p57__ = (~ __IEND__) || (__m56__) ;
assign __m58__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state == __ILA_SO_TX_STATE ;
assign variable_map_assert__p59__ = (~ __IEND__) || (__m58__) ;
assign __m60__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state == __ILA_SO_TX_STATE_ENCAP ;
assign variable_map_assert__p61__ = (~ __IEND__) || (__m60__) ;
assign __m62__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt == __ILA_SO_TX_WCNT ;
assign variable_map_assert__p63__ = (~ __IEND__) || (__m62__) ;
assign __m64__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc == __ILA_SO_XGMII_COUT_REG ;
assign variable_map_assert__p65__ = (~ __IEND__) || (__m64__) ;
assign __m66__ = m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd == __ILA_SO_XGMII_DOUT_REG ;
assign variable_map_assert__p67__ = (~ __IEND__) || (__m66__) ;
assign additional_mapping_control_assume__m68__ = (m1__DOT__TCORE_MODE == 1) ;
assign additional_mapping_control_assume__m69__ = (m1__DOT__SYS_ADDR == 1) ;
assign additional_mapping_control_assume__m70__ = (m1__DOT__mode_10G == 1) ;
assign additional_mapping_control_assume__m71__ = (m1__DOT__mode_5G == 0) ;
assign additional_mapping_control_assume__m72__ = (m1__DOT__mode_2p5G == 0) ;
assign additional_mapping_control_assume__m73__ = (m1__DOT__mode_1G == 0) ;
assign additional_mapping_control_assume__m74__ = (m1__DOT__core__DOT__tx_b2b_dly == 2) ;
assign additional_mapping_control_assume__m75__ = (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy == 1) ;
assign additional_mapping_control_assume__m76__ = (m1__DOT__core__DOT__txfifo_wr_en == 0) ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign issue_decode__m77__ = (~ __START__) || (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) ;
assign issue_valid__m78__ = (~ __START__) || (__ILA_TX_FUNC_valid__) ;
assign __ISSUE__ = 1 ;
assign post_value_holder__m79__ = (~(__CYCLE_CNT__ == 1) || ((b2b_counter_LastOne_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m80__ = (~(__CYCLE_CNT__ == 5) || ((b2b_counter_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m81__ = (~(__CYCLE_CNT__ == 1) || ((b2b_counter_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter))) ;
assign post_value_holder__m82__ = (~(__CYCLE_CNT__ == 4) || ((tx_pkt_byte_cnt_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg))) ;
assign post_value_holder__m83__ = (~(__CYCLE_CNT__ == 4) || ((tx_st_encap_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state))) ;
assign post_value_holder__m84__ = (~(__CYCLE_CNT__ == 1) || ((tx_st_encap_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state))) ;
assign post_value_holder__m85__ = (~(__CYCLE_CNT__ == 1) || ((tx_state_LastOne_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m86__ = (~(__CYCLE_CNT__ == 5) || ((tx_state_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m87__ = (~(__CYCLE_CNT__ == 1) || ((tx_state_WrPktPayload_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state))) ;
assign post_value_holder__m88__ = (~(__CYCLE_CNT__ == 5) || ((tx_wcnt_RdByteCnt_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt))) ;
assign post_value_holder__m89__ = (~(__CYCLE_CNT__ == 1) || ((tx_wcnt_WrPktPaylaod_end) == (m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt))) ;

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
   .TX_STATE(__ILA_SO_TX_STATE),
   .TX_STATE_ENCAP(__ILA_SO_TX_STATE_ENCAP),
   .TX_B2B_CNTR(__ILA_SO_TX_B2B_CNTR),
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
   .__COUNTER_start__n4()
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
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd),
    .m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt),
    .m1__DOT__core__DOT__tx_b2b_dly(m1__DOT__core__DOT__tx_b2b_dly),
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
    .m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr),
    .m1__DOT__core__DOT__txfifo_wr_en(m1__DOT__core__DOT__txfifo_wr_en),
    .m1__DOT__mode_10G(m1__DOT__mode_10G),
    .m1__DOT__mode_1G(m1__DOT__mode_1G),
    .m1__DOT__mode_2p5G(m1__DOT__mode_2p5G),
    .m1__DOT__mode_5G(m1__DOT__mode_5G),
    .m1__DOT__tx_mac_full(m1__DOT__tx_mac_full),
    .m1__DOT__tx_mac_usedw(m1__DOT__tx_mac_usedw),
    .mac_addr0(__VLG_I_mac_addr0),
    .mac_pause_value(__VLG_I_mac_pause_value),
    .mode_10G(__ILA_I_MODE_10G),
    .mode_1G(__ILA_I_MODE_1G),
    .mode_2p5G(__ILA_I_MODE_2P5G),
    .mode_5G(__ILA_I_MODE_5G),
    .reg_rd_done_out(__VLG_O_reg_rd_done_out),
    .reg_rd_start(__VLG_I_reg_rd_start),
    .reset_(__ILA_I_RESETN),
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
       tx_pkt_byte_cnt_RdByteCnt_end <= __tx_pkt_byte_cnt_RdByteCnt_end_init__;
       tx_st_encap_RdByteCnt_end <= __tx_st_encap_RdByteCnt_end_init__;
       tx_st_encap_WrPktPayload_end <= __tx_st_encap_WrPktPayload_end_init__;
       tx_state_LastOne_end <= __tx_state_LastOne_end_init__;
       tx_state_RdByteCnt_end <= __tx_state_RdByteCnt_end_init__;
       tx_state_WrPktPayload_end <= __tx_state_WrPktPayload_end_init__;
       tx_wcnt_RdByteCnt_end <= __tx_wcnt_RdByteCnt_end_init__;
       tx_wcnt_WrPktPaylaod_end <= __tx_wcnt_WrPktPaylaod_end_init__;
   end
   else if(1) begin
       b2b_counter_LastOne_end <= b2b_counter_LastOne_end;
       b2b_counter_RdByteCnt_end <= b2b_counter_RdByteCnt_end;
       b2b_counter_WrPktPayload_end <= b2b_counter_WrPktPayload_end;
       tx_pkt_byte_cnt_RdByteCnt_end <= tx_pkt_byte_cnt_RdByteCnt_end;
       tx_st_encap_RdByteCnt_end <= tx_st_encap_RdByteCnt_end;
       tx_st_encap_WrPktPayload_end <= tx_st_encap_WrPktPayload_end;
       tx_state_LastOne_end <= tx_state_LastOne_end;
       tx_state_RdByteCnt_end <= tx_state_RdByteCnt_end;
       tx_state_WrPktPayload_end <= tx_state_WrPktPayload_end;
       tx_wcnt_RdByteCnt_end <= tx_wcnt_RdByteCnt_end;
       tx_wcnt_WrPktPaylaod_end <= tx_wcnt_WrPktPaylaod_end;
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
TX_STATE,
TX_STATE_ENCAP,
TX_B2B_CNTR,
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
__COUNTER_start__n4
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
output reg      [4:0] TX_STATE;
output reg      [7:0] TX_STATE_ENCAP;
output reg      [5:0] TX_B2B_CNTR;
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
output reg      [7:0] __COUNTER_start__n4;
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
(* keep *) wire     [63:0] TXFIFO_RD_OUTPUT_randinit;
(* keep *) wire     [12:0] TXFIFO_WUSED_QWD_randinit;
(* keep *) wire      [5:0] TX_B2B_CNTR_randinit;
(* keep *) wire     [63:0] TX_BUF_randinit;
(* keep *) wire     [31:0] TX_BYTE_SENT_randinit;
wire     [63:0] TX_DATA;
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
wire            n0____DOLLAR__137;
wire     [63:0] n100____DOLLAR__3099;
wire     [63:0] n101____DOLLAR__3104;
wire     [63:0] n102____DOLLAR__3109;
wire     [63:0] n103____DOLLAR__3114;
wire     [63:0] n104____DOLLAR__3078;
wire     [63:0] n105____DOLLAR__3119;
wire     [63:0] n106____DOLLAR__3162;
wire     [63:0] n107____DOLLAR__3167;
wire            n108____DOLLAR__2878;
wire            n109____DOLLAR__2868;
wire      [4:0] n10____DOLLAR__499;
wire            n110____DOLLAR__2870;
wire            n111____DOLLAR__2872;
wire            n112____DOLLAR__2863;
wire            n113____DOLLAR__2856;
wire            n114____DOLLAR__2849;
wire            n115____DOLLAR__2842;
wire            n116____DOLLAR__2835;
wire            n117____DOLLAR__2828;
wire            n118____DOLLAR__2821;
wire      [7:0] n119____DOLLAR__2823;
wire      [4:0] n11____DOLLAR__506;
wire      [7:0] n120____DOLLAR__2830;
wire      [7:0] n121____DOLLAR__2837;
wire      [7:0] n122____DOLLAR__2844;
wire      [7:0] n123____DOLLAR__2851;
wire      [7:0] n124____DOLLAR__2858;
wire      [7:0] n125____DOLLAR__2865;
wire            n126____DOLLAR__2812;
wire            n127____DOLLAR__2807;
wire            n128____DOLLAR__2800;
wire            n129____DOLLAR__2793;
wire      [4:0] n12____DOLLAR__511;
wire            n130____DOLLAR__2786;
wire            n131____DOLLAR__2779;
wire            n132____DOLLAR__2772;
wire            n133____DOLLAR__2765;
wire      [7:0] n134____DOLLAR__2767;
wire      [7:0] n135____DOLLAR__2774;
wire      [7:0] n136____DOLLAR__2781;
wire      [7:0] n137____DOLLAR__2788;
wire      [7:0] n138____DOLLAR__2795;
wire      [7:0] n139____DOLLAR__2802;
wire            n13____DOLLAR__494;
wire      [7:0] n140____DOLLAR__2809;
wire      [7:0] n141____DOLLAR__2814;
wire      [7:0] n142____DOLLAR__2873;
wire      [7:0] n143____DOLLAR__2880;
wire            n144____DOLLAR__2718;
wire     [31:0] n145____DOLLAR__2709;
wire     [31:0] n146____DOLLAR__2710;
wire     [31:0] n147____DOLLAR__2703;
wire     [31:0] n148____DOLLAR__2704;
wire     [31:0] n149____DOLLAR__2711;
wire     [63:0] n14____DOLLAR__490;
wire     [31:0] n150____DOLLAR__2697;
wire     [31:0] n151____DOLLAR__2698;
wire     [31:0] n152____DOLLAR__2712;
wire     [31:0] n153____DOLLAR__2691;
wire     [31:0] n154____DOLLAR__2687;
wire     [31:0] n155____DOLLAR__2692;
wire     [31:0] n156____DOLLAR__2713;
wire     [31:0] n157____DOLLAR__2714;
wire     [31:0] n158____DOLLAR__2720;
wire            n159____DOLLAR__521;
wire     [63:0] n15____DOLLAR__496;
wire            n160____DOLLAR__756;
wire            n161____DOLLAR__751;
wire      [7:0] n162____DOLLAR__741;
wire     [55:0] n163____DOLLAR__739;
wire     [63:0] n164____DOLLAR__747;
wire            n165____DOLLAR__728;
wire     [15:0] n166____DOLLAR__718;
wire     [47:0] n167____DOLLAR__716;
wire     [63:0] n168____DOLLAR__724;
wire            n169____DOLLAR__705;
wire            n16____DOLLAR__3182;
wire     [23:0] n170____DOLLAR__695;
wire     [39:0] n171____DOLLAR__693;
wire     [63:0] n172____DOLLAR__701;
wire            n173____DOLLAR__682;
wire     [31:0] n174____DOLLAR__672;
wire     [63:0] n175____DOLLAR__678;
wire            n176____DOLLAR__667;
wire     [39:0] n177____DOLLAR__657;
wire     [63:0] n178____DOLLAR__663;
wire            n179____DOLLAR__652;
wire      [4:0] n17____DOLLAR__3184;
wire     [47:0] n180____DOLLAR__642;
wire     [63:0] n181____DOLLAR__648;
wire     [55:0] n182____DOLLAR__632;
wire     [63:0] n183____DOLLAR__638;
wire     [63:0] n184____DOLLAR__654;
wire     [63:0] n185____DOLLAR__669;
wire     [63:0] n186____DOLLAR__684;
wire     [63:0] n187____DOLLAR__707;
wire     [63:0] n188____DOLLAR__730;
wire     [63:0] n189____DOLLAR__753;
wire            n18____DOLLAR__3189;
wire     [63:0] n190____DOLLAR__758;
wire            n191____DOLLAR__627;
wire            n192____DOLLAR__622;
wire      [7:0] n193____DOLLAR__612;
wire     [55:0] n194____DOLLAR__610;
wire     [63:0] n195____DOLLAR__618;
wire            n196____DOLLAR__607;
wire     [15:0] n197____DOLLAR__597;
wire     [47:0] n198____DOLLAR__595;
wire     [63:0] n199____DOLLAR__603;
wire      [7:0] n19____DOLLAR__3191;
wire            n1____DOLLAR__480;
wire            n200____DOLLAR__592;
wire     [23:0] n201____DOLLAR__582;
wire     [39:0] n202____DOLLAR__580;
wire     [63:0] n203____DOLLAR__588;
wire            n204____DOLLAR__577;
wire     [31:0] n205____DOLLAR__567;
wire     [31:0] n206____DOLLAR__565;
wire     [63:0] n207____DOLLAR__573;
wire            n208____DOLLAR__562;
wire     [39:0] n209____DOLLAR__552;
wire            n20____DOLLAR__3173;
wire     [23:0] n210____DOLLAR__550;
wire     [63:0] n211____DOLLAR__558;
wire            n212____DOLLAR__547;
wire     [47:0] n213____DOLLAR__537;
wire     [15:0] n214____DOLLAR__535;
wire     [63:0] n215____DOLLAR__543;
wire     [55:0] n216____DOLLAR__527;
wire      [7:0] n217____DOLLAR__525;
wire     [63:0] n218____DOLLAR__533;
wire     [63:0] n219____DOLLAR__549;
wire      [5:0] n21____DOLLAR__3170;
wire     [63:0] n220____DOLLAR__564;
wire     [63:0] n221____DOLLAR__579;
wire     [63:0] n222____DOLLAR__594;
wire     [63:0] n223____DOLLAR__609;
wire     [63:0] n224____DOLLAR__624;
wire     [63:0] n225____DOLLAR__629;
wire     [63:0] n226____DOLLAR__759;
wire            n227____DOLLAR__2676;
wire      [7:0] n228____DOLLAR__769;
wire      [7:0] n229____DOLLAR__762;
wire      [5:0] n22____DOLLAR__3175;
wire      [7:0] n230____DOLLAR__771;
wire      [7:0] n231____DOLLAR__772;
wire            n232____DOLLAR__877;
wire            n233____DOLLAR__870;
wire            n234____DOLLAR__863;
wire            n235____DOLLAR__856;
wire            n236____DOLLAR__849;
wire            n237____DOLLAR__842;
wire            n238____DOLLAR__835;
wire            n239____DOLLAR__828;
wire     [15:0] n23____DOLLAR__3194;
wire            n240____DOLLAR__821;
wire            n241____DOLLAR__814;
wire            n242____DOLLAR__807;
wire            n243____DOLLAR__800;
wire            n244____DOLLAR__793;
wire            n245____DOLLAR__786;
wire            n246____DOLLAR__779;
wire     [31:0] n247____DOLLAR__781;
wire     [31:0] n248____DOLLAR__788;
wire     [31:0] n249____DOLLAR__795;
wire            n24____DOLLAR__3165;
wire     [31:0] n250____DOLLAR__802;
wire     [31:0] n251____DOLLAR__809;
wire     [31:0] n252____DOLLAR__816;
wire     [31:0] n253____DOLLAR__823;
wire     [31:0] n254____DOLLAR__830;
wire     [31:0] n255____DOLLAR__837;
wire     [31:0] n256____DOLLAR__844;
wire     [31:0] n257____DOLLAR__851;
wire     [31:0] n258____DOLLAR__858;
wire     [31:0] n259____DOLLAR__865;
wire            n25____DOLLAR__3157;
wire     [31:0] n260____DOLLAR__872;
wire     [31:0] n261____DOLLAR__879;
wire     [31:0] n262____DOLLAR__766;
wire     [31:0] n263____DOLLAR__880;
wire      [7:0] n264____DOLLAR__889;
wire      [7:0] n265____DOLLAR__888;
wire      [7:0] n266____DOLLAR__891;
wire      [7:0] n267____DOLLAR__892;
wire            n268____DOLLAR__997;
wire            n269____DOLLAR__990;
wire            n26____DOLLAR__3159;
wire            n270____DOLLAR__983;
wire            n271____DOLLAR__976;
wire            n272____DOLLAR__969;
wire            n273____DOLLAR__962;
wire            n274____DOLLAR__955;
wire            n275____DOLLAR__948;
wire            n276____DOLLAR__941;
wire            n277____DOLLAR__934;
wire            n278____DOLLAR__927;
wire            n279____DOLLAR__920;
wire            n27____DOLLAR__3161;
wire            n280____DOLLAR__913;
wire            n281____DOLLAR__906;
wire            n282____DOLLAR__899;
wire     [31:0] n283____DOLLAR__901;
wire     [31:0] n284____DOLLAR__908;
wire     [31:0] n285____DOLLAR__915;
wire     [31:0] n286____DOLLAR__922;
wire     [31:0] n287____DOLLAR__929;
wire     [31:0] n288____DOLLAR__936;
wire     [31:0] n289____DOLLAR__943;
wire      [2:0] n28____DOLLAR__523;
wire     [31:0] n290____DOLLAR__950;
wire     [31:0] n291____DOLLAR__957;
wire     [31:0] n292____DOLLAR__964;
wire     [31:0] n293____DOLLAR__971;
wire     [31:0] n294____DOLLAR__978;
wire     [31:0] n295____DOLLAR__985;
wire     [31:0] n296____DOLLAR__992;
wire     [31:0] n297____DOLLAR__999;
wire     [31:0] n298____DOLLAR__883;
wire     [31:0] n299____DOLLAR__1000;
wire            n29____DOLLAR__3152;
wire            n2____DOLLAR__485;
wire      [7:0] n300____DOLLAR__1008;
wire      [7:0] n301____DOLLAR__1001;
wire      [7:0] n302____DOLLAR__1010;
wire      [7:0] n303____DOLLAR__1011;
wire            n304____DOLLAR__1116;
wire            n305____DOLLAR__1109;
wire            n306____DOLLAR__1102;
wire            n307____DOLLAR__1095;
wire            n308____DOLLAR__1088;
wire            n309____DOLLAR__1081;
wire            n30____DOLLAR__3147;
wire            n310____DOLLAR__1074;
wire            n311____DOLLAR__1067;
wire            n312____DOLLAR__1060;
wire            n313____DOLLAR__1053;
wire            n314____DOLLAR__1046;
wire            n315____DOLLAR__1039;
wire            n316____DOLLAR__1032;
wire            n317____DOLLAR__1025;
wire            n318____DOLLAR__1018;
wire     [31:0] n319____DOLLAR__1020;
wire     [31:0] n31____DOLLAR__2752;
wire     [31:0] n320____DOLLAR__1027;
wire     [31:0] n321____DOLLAR__1034;
wire     [31:0] n322____DOLLAR__1041;
wire     [31:0] n323____DOLLAR__1048;
wire     [31:0] n324____DOLLAR__1055;
wire     [31:0] n325____DOLLAR__1062;
wire     [31:0] n326____DOLLAR__1069;
wire     [31:0] n327____DOLLAR__1076;
wire     [31:0] n328____DOLLAR__1083;
wire     [31:0] n329____DOLLAR__1090;
wire     [31:0] n32____DOLLAR__2753;
wire     [31:0] n330____DOLLAR__1097;
wire     [31:0] n331____DOLLAR__1104;
wire     [31:0] n332____DOLLAR__1111;
wire     [31:0] n333____DOLLAR__1118;
wire     [31:0] n334____DOLLAR__1005;
wire     [31:0] n335____DOLLAR__1119;
wire      [7:0] n336____DOLLAR__1128;
wire      [7:0] n337____DOLLAR__1127;
wire      [7:0] n338____DOLLAR__1130;
wire      [7:0] n339____DOLLAR__1131;
wire     [31:0] n33____DOLLAR__2746;
wire            n340____DOLLAR__1236;
wire            n341____DOLLAR__1229;
wire            n342____DOLLAR__1222;
wire            n343____DOLLAR__1215;
wire            n344____DOLLAR__1208;
wire            n345____DOLLAR__1201;
wire            n346____DOLLAR__1194;
wire            n347____DOLLAR__1187;
wire            n348____DOLLAR__1180;
wire            n349____DOLLAR__1173;
wire     [31:0] n34____DOLLAR__2747;
wire            n350____DOLLAR__1166;
wire            n351____DOLLAR__1159;
wire            n352____DOLLAR__1152;
wire            n353____DOLLAR__1145;
wire            n354____DOLLAR__1138;
wire     [31:0] n355____DOLLAR__1140;
wire     [31:0] n356____DOLLAR__1147;
wire     [31:0] n357____DOLLAR__1154;
wire     [31:0] n358____DOLLAR__1161;
wire     [31:0] n359____DOLLAR__1168;
wire     [31:0] n35____DOLLAR__2754;
wire     [31:0] n360____DOLLAR__1175;
wire     [31:0] n361____DOLLAR__1182;
wire     [31:0] n362____DOLLAR__1189;
wire     [31:0] n363____DOLLAR__1196;
wire     [31:0] n364____DOLLAR__1203;
wire     [31:0] n365____DOLLAR__1210;
wire     [31:0] n366____DOLLAR__1217;
wire     [31:0] n367____DOLLAR__1224;
wire     [31:0] n368____DOLLAR__1231;
wire     [31:0] n369____DOLLAR__1238;
wire     [31:0] n36____DOLLAR__2740;
wire     [31:0] n370____DOLLAR__1122;
wire     [31:0] n371____DOLLAR__1239;
wire      [7:0] n372____DOLLAR__1247;
wire      [7:0] n373____DOLLAR__1240;
wire      [7:0] n374____DOLLAR__1249;
wire      [7:0] n375____DOLLAR__1250;
wire            n376____DOLLAR__1355;
wire            n377____DOLLAR__1348;
wire            n378____DOLLAR__1341;
wire            n379____DOLLAR__1334;
wire     [31:0] n37____DOLLAR__2741;
wire            n380____DOLLAR__1327;
wire            n381____DOLLAR__1320;
wire            n382____DOLLAR__1313;
wire            n383____DOLLAR__1306;
wire            n384____DOLLAR__1299;
wire            n385____DOLLAR__1292;
wire            n386____DOLLAR__1285;
wire            n387____DOLLAR__1278;
wire            n388____DOLLAR__1271;
wire            n389____DOLLAR__1264;
wire     [31:0] n38____DOLLAR__2755;
wire            n390____DOLLAR__1257;
wire     [31:0] n391____DOLLAR__1259;
wire     [31:0] n392____DOLLAR__1266;
wire     [31:0] n393____DOLLAR__1273;
wire     [31:0] n394____DOLLAR__1280;
wire     [31:0] n395____DOLLAR__1287;
wire     [31:0] n396____DOLLAR__1294;
wire     [31:0] n397____DOLLAR__1301;
wire     [31:0] n398____DOLLAR__1308;
wire     [31:0] n399____DOLLAR__1315;
wire     [31:0] n39____DOLLAR__2734;
wire            n3____DOLLAR__487;
wire     [31:0] n400____DOLLAR__1322;
wire     [31:0] n401____DOLLAR__1329;
wire     [31:0] n402____DOLLAR__1336;
wire     [31:0] n403____DOLLAR__1343;
wire     [31:0] n404____DOLLAR__1350;
wire     [31:0] n405____DOLLAR__1357;
wire     [31:0] n406____DOLLAR__1244;
wire     [31:0] n407____DOLLAR__1358;
wire      [7:0] n408____DOLLAR__1367;
wire      [7:0] n409____DOLLAR__1366;
wire     [31:0] n40____DOLLAR__2730;
wire      [7:0] n410____DOLLAR__1369;
wire      [7:0] n411____DOLLAR__1370;
wire            n412____DOLLAR__1475;
wire            n413____DOLLAR__1468;
wire            n414____DOLLAR__1461;
wire            n415____DOLLAR__1454;
wire            n416____DOLLAR__1447;
wire            n417____DOLLAR__1440;
wire            n418____DOLLAR__1433;
wire            n419____DOLLAR__1426;
wire     [31:0] n41____DOLLAR__2735;
wire            n420____DOLLAR__1419;
wire            n421____DOLLAR__1412;
wire            n422____DOLLAR__1405;
wire            n423____DOLLAR__1398;
wire            n424____DOLLAR__1391;
wire            n425____DOLLAR__1384;
wire            n426____DOLLAR__1377;
wire     [31:0] n427____DOLLAR__1379;
wire     [31:0] n428____DOLLAR__1386;
wire     [31:0] n429____DOLLAR__1393;
wire     [31:0] n42____DOLLAR__2756;
wire     [31:0] n430____DOLLAR__1400;
wire     [31:0] n431____DOLLAR__1407;
wire     [31:0] n432____DOLLAR__1414;
wire     [31:0] n433____DOLLAR__1421;
wire     [31:0] n434____DOLLAR__1428;
wire     [31:0] n435____DOLLAR__1435;
wire     [31:0] n436____DOLLAR__1442;
wire     [31:0] n437____DOLLAR__1449;
wire     [31:0] n438____DOLLAR__1456;
wire     [31:0] n439____DOLLAR__1463;
wire      [7:0] n43____DOLLAR__2882;
wire     [31:0] n440____DOLLAR__1470;
wire     [31:0] n441____DOLLAR__1477;
wire     [31:0] n442____DOLLAR__1361;
wire     [31:0] n443____DOLLAR__1478;
wire      [7:0] n444____DOLLAR__1486;
wire      [7:0] n445____DOLLAR__1479;
wire      [7:0] n446____DOLLAR__1488;
wire      [7:0] n447____DOLLAR__1489;
wire            n448____DOLLAR__1594;
wire            n449____DOLLAR__1587;
wire     [39:0] n44____DOLLAR__2888;
wire            n450____DOLLAR__1580;
wire            n451____DOLLAR__1573;
wire            n452____DOLLAR__1566;
wire            n453____DOLLAR__1559;
wire            n454____DOLLAR__1552;
wire            n455____DOLLAR__1545;
wire            n456____DOLLAR__1538;
wire            n457____DOLLAR__1531;
wire            n458____DOLLAR__1524;
wire            n459____DOLLAR__1517;
wire     [63:0] n45____DOLLAR__2896;
wire            n460____DOLLAR__1510;
wire            n461____DOLLAR__1503;
wire            n462____DOLLAR__1496;
wire     [31:0] n463____DOLLAR__1498;
wire     [31:0] n464____DOLLAR__1505;
wire     [31:0] n465____DOLLAR__1512;
wire     [31:0] n466____DOLLAR__1519;
wire     [31:0] n467____DOLLAR__1526;
wire     [31:0] n468____DOLLAR__1533;
wire     [31:0] n469____DOLLAR__1540;
wire            n46____DOLLAR__3142;
wire     [31:0] n470____DOLLAR__1547;
wire     [31:0] n471____DOLLAR__1554;
wire     [31:0] n472____DOLLAR__1561;
wire     [31:0] n473____DOLLAR__1568;
wire     [31:0] n474____DOLLAR__1575;
wire     [31:0] n475____DOLLAR__1582;
wire     [31:0] n476____DOLLAR__1589;
wire     [31:0] n477____DOLLAR__1596;
wire     [31:0] n478____DOLLAR__1483;
wire     [31:0] n479____DOLLAR__1597;
wire     [15:0] n47____DOLLAR__2898;
wire      [7:0] n480____DOLLAR__1606;
wire      [7:0] n481____DOLLAR__1605;
wire      [7:0] n482____DOLLAR__1608;
wire      [7:0] n483____DOLLAR__1609;
wire            n484____DOLLAR__1714;
wire            n485____DOLLAR__1707;
wire            n486____DOLLAR__1700;
wire            n487____DOLLAR__1693;
wire            n488____DOLLAR__1686;
wire            n489____DOLLAR__1679;
wire     [47:0] n48____DOLLAR__2904;
wire            n490____DOLLAR__1672;
wire            n491____DOLLAR__1665;
wire            n492____DOLLAR__1658;
wire            n493____DOLLAR__1651;
wire            n494____DOLLAR__1644;
wire            n495____DOLLAR__1637;
wire            n496____DOLLAR__1630;
wire            n497____DOLLAR__1623;
wire            n498____DOLLAR__1616;
wire     [31:0] n499____DOLLAR__1618;
wire     [63:0] n49____DOLLAR__2912;
wire     [31:0] n500____DOLLAR__1625;
wire     [31:0] n501____DOLLAR__1632;
wire     [31:0] n502____DOLLAR__1639;
wire     [31:0] n503____DOLLAR__1646;
wire     [31:0] n504____DOLLAR__1653;
wire     [31:0] n505____DOLLAR__1660;
wire     [31:0] n506____DOLLAR__1667;
wire     [31:0] n507____DOLLAR__1674;
wire     [31:0] n508____DOLLAR__1681;
wire     [31:0] n509____DOLLAR__1688;
wire            n50____DOLLAR__3137;
wire     [31:0] n510____DOLLAR__1695;
wire     [31:0] n511____DOLLAR__1702;
wire     [31:0] n512____DOLLAR__1709;
wire     [31:0] n513____DOLLAR__1716;
wire     [31:0] n514____DOLLAR__1600;
wire     [31:0] n515____DOLLAR__1717;
wire      [7:0] n516____DOLLAR__1725;
wire      [7:0] n517____DOLLAR__1718;
wire      [7:0] n518____DOLLAR__1727;
wire      [7:0] n519____DOLLAR__1728;
wire     [23:0] n51____DOLLAR__2914;
wire            n520____DOLLAR__1833;
wire            n521____DOLLAR__1826;
wire            n522____DOLLAR__1819;
wire            n523____DOLLAR__1812;
wire            n524____DOLLAR__1805;
wire            n525____DOLLAR__1798;
wire            n526____DOLLAR__1791;
wire            n527____DOLLAR__1784;
wire            n528____DOLLAR__1777;
wire            n529____DOLLAR__1770;
wire     [55:0] n52____DOLLAR__2920;
wire            n530____DOLLAR__1763;
wire            n531____DOLLAR__1756;
wire            n532____DOLLAR__1749;
wire            n533____DOLLAR__1742;
wire            n534____DOLLAR__1735;
wire     [31:0] n535____DOLLAR__1737;
wire     [31:0] n536____DOLLAR__1744;
wire     [31:0] n537____DOLLAR__1751;
wire     [31:0] n538____DOLLAR__1758;
wire     [31:0] n539____DOLLAR__1765;
wire     [63:0] n53____DOLLAR__2928;
wire     [31:0] n540____DOLLAR__1772;
wire     [31:0] n541____DOLLAR__1779;
wire     [31:0] n542____DOLLAR__1786;
wire     [31:0] n543____DOLLAR__1793;
wire     [31:0] n544____DOLLAR__1800;
wire     [31:0] n545____DOLLAR__1807;
wire     [31:0] n546____DOLLAR__1814;
wire     [31:0] n547____DOLLAR__1821;
wire     [31:0] n548____DOLLAR__1828;
wire     [31:0] n549____DOLLAR__1835;
wire            n54____DOLLAR__3132;
wire     [31:0] n550____DOLLAR__1722;
wire     [31:0] n551____DOLLAR__1836;
wire      [7:0] n552____DOLLAR__1845;
wire      [7:0] n553____DOLLAR__1844;
wire      [7:0] n554____DOLLAR__1847;
wire      [7:0] n555____DOLLAR__1848;
wire            n556____DOLLAR__1953;
wire            n557____DOLLAR__1946;
wire            n558____DOLLAR__1939;
wire            n559____DOLLAR__1932;
wire     [31:0] n55____DOLLAR__2930;
wire            n560____DOLLAR__1925;
wire            n561____DOLLAR__1918;
wire            n562____DOLLAR__1911;
wire            n563____DOLLAR__1904;
wire            n564____DOLLAR__1897;
wire            n565____DOLLAR__1890;
wire            n566____DOLLAR__1883;
wire            n567____DOLLAR__1876;
wire            n568____DOLLAR__1869;
wire            n569____DOLLAR__1862;
wire     [63:0] n56____DOLLAR__2936;
wire            n570____DOLLAR__1855;
wire     [31:0] n571____DOLLAR__1857;
wire     [31:0] n572____DOLLAR__1864;
wire     [31:0] n573____DOLLAR__1871;
wire     [31:0] n574____DOLLAR__1878;
wire     [31:0] n575____DOLLAR__1885;
wire     [31:0] n576____DOLLAR__1892;
wire     [31:0] n577____DOLLAR__1899;
wire     [31:0] n578____DOLLAR__1906;
wire     [31:0] n579____DOLLAR__1913;
wire            n57____DOLLAR__3127;
wire     [31:0] n580____DOLLAR__1920;
wire     [31:0] n581____DOLLAR__1927;
wire     [31:0] n582____DOLLAR__1934;
wire     [31:0] n583____DOLLAR__1941;
wire     [31:0] n584____DOLLAR__1948;
wire     [31:0] n585____DOLLAR__1955;
wire     [31:0] n586____DOLLAR__1839;
wire     [31:0] n587____DOLLAR__1956;
wire      [7:0] n588____DOLLAR__1964;
wire      [7:0] n589____DOLLAR__1957;
wire     [23:0] n58____DOLLAR__2940;
wire      [7:0] n590____DOLLAR__1966;
wire      [7:0] n591____DOLLAR__1967;
wire            n592____DOLLAR__2072;
wire            n593____DOLLAR__2065;
wire            n594____DOLLAR__2058;
wire            n595____DOLLAR__2051;
wire            n596____DOLLAR__2044;
wire            n597____DOLLAR__2037;
wire            n598____DOLLAR__2030;
wire            n599____DOLLAR__2023;
wire     [39:0] n59____DOLLAR__2938;
wire            n5____DOLLAR__517;
wire            n600____DOLLAR__2016;
wire            n601____DOLLAR__2009;
wire            n602____DOLLAR__2002;
wire            n603____DOLLAR__1995;
wire            n604____DOLLAR__1988;
wire            n605____DOLLAR__1981;
wire            n606____DOLLAR__1974;
wire     [31:0] n607____DOLLAR__1976;
wire     [31:0] n608____DOLLAR__1983;
wire     [31:0] n609____DOLLAR__1990;
wire     [63:0] n60____DOLLAR__2946;
wire     [31:0] n610____DOLLAR__1997;
wire     [31:0] n611____DOLLAR__2004;
wire     [31:0] n612____DOLLAR__2011;
wire     [31:0] n613____DOLLAR__2018;
wire     [31:0] n614____DOLLAR__2025;
wire     [31:0] n615____DOLLAR__2032;
wire     [31:0] n616____DOLLAR__2039;
wire     [31:0] n617____DOLLAR__2046;
wire     [31:0] n618____DOLLAR__2053;
wire     [31:0] n619____DOLLAR__2060;
wire            n61____DOLLAR__3122;
wire     [31:0] n620____DOLLAR__2067;
wire     [31:0] n621____DOLLAR__2074;
wire     [31:0] n622____DOLLAR__1961;
wire     [31:0] n623____DOLLAR__2075;
wire      [7:0] n624____DOLLAR__2084;
wire      [7:0] n625____DOLLAR__2083;
wire      [7:0] n626____DOLLAR__2086;
wire      [7:0] n627____DOLLAR__2087;
wire            n628____DOLLAR__2192;
wire            n629____DOLLAR__2185;
wire     [15:0] n62____DOLLAR__2950;
wire            n630____DOLLAR__2178;
wire            n631____DOLLAR__2171;
wire            n632____DOLLAR__2164;
wire            n633____DOLLAR__2157;
wire            n634____DOLLAR__2150;
wire            n635____DOLLAR__2143;
wire            n636____DOLLAR__2136;
wire            n637____DOLLAR__2129;
wire            n638____DOLLAR__2122;
wire            n639____DOLLAR__2115;
wire     [47:0] n63____DOLLAR__2948;
wire            n640____DOLLAR__2108;
wire            n641____DOLLAR__2101;
wire            n642____DOLLAR__2094;
wire     [31:0] n643____DOLLAR__2096;
wire     [31:0] n644____DOLLAR__2103;
wire     [31:0] n645____DOLLAR__2110;
wire     [31:0] n646____DOLLAR__2117;
wire     [31:0] n647____DOLLAR__2124;
wire     [31:0] n648____DOLLAR__2131;
wire     [31:0] n649____DOLLAR__2138;
wire     [63:0] n64____DOLLAR__2956;
wire     [31:0] n650____DOLLAR__2145;
wire     [31:0] n651____DOLLAR__2152;
wire     [31:0] n652____DOLLAR__2159;
wire     [31:0] n653____DOLLAR__2166;
wire     [31:0] n654____DOLLAR__2173;
wire     [31:0] n655____DOLLAR__2180;
wire     [31:0] n656____DOLLAR__2187;
wire     [31:0] n657____DOLLAR__2194;
wire     [31:0] n658____DOLLAR__2078;
wire     [31:0] n659____DOLLAR__2195;
wire      [7:0] n65____DOLLAR__2960;
wire      [7:0] n660____DOLLAR__2203;
wire      [7:0] n661____DOLLAR__2196;
wire      [7:0] n662____DOLLAR__2205;
wire      [7:0] n663____DOLLAR__2206;
wire            n664____DOLLAR__2311;
wire            n665____DOLLAR__2304;
wire            n666____DOLLAR__2297;
wire            n667____DOLLAR__2290;
wire            n668____DOLLAR__2283;
wire            n669____DOLLAR__2276;
wire     [55:0] n66____DOLLAR__2958;
wire            n670____DOLLAR__2269;
wire            n671____DOLLAR__2262;
wire            n672____DOLLAR__2255;
wire            n673____DOLLAR__2248;
wire            n674____DOLLAR__2241;
wire            n675____DOLLAR__2234;
wire            n676____DOLLAR__2227;
wire            n677____DOLLAR__2220;
wire            n678____DOLLAR__2213;
wire     [31:0] n679____DOLLAR__2215;
wire     [63:0] n67____DOLLAR__2966;
wire     [31:0] n680____DOLLAR__2222;
wire     [31:0] n681____DOLLAR__2229;
wire     [31:0] n682____DOLLAR__2236;
wire     [31:0] n683____DOLLAR__2243;
wire     [31:0] n684____DOLLAR__2250;
wire     [31:0] n685____DOLLAR__2257;
wire     [31:0] n686____DOLLAR__2264;
wire     [31:0] n687____DOLLAR__2271;
wire     [31:0] n688____DOLLAR__2278;
wire     [31:0] n689____DOLLAR__2285;
wire     [63:0] n68____DOLLAR__3124;
wire     [31:0] n690____DOLLAR__2292;
wire     [31:0] n691____DOLLAR__2299;
wire     [31:0] n692____DOLLAR__2306;
wire     [31:0] n693____DOLLAR__2313;
wire     [31:0] n694____DOLLAR__2200;
wire     [31:0] n695____DOLLAR__2314;
wire      [7:0] n696____DOLLAR__2323;
wire      [7:0] n697____DOLLAR__2322;
wire      [7:0] n698____DOLLAR__2325;
wire      [7:0] n699____DOLLAR__2326;
wire     [63:0] n69____DOLLAR__3129;
wire     [12:0] n6____DOLLAR__514;
wire            n700____DOLLAR__2431;
wire            n701____DOLLAR__2424;
wire            n702____DOLLAR__2417;
wire            n703____DOLLAR__2410;
wire            n704____DOLLAR__2403;
wire            n705____DOLLAR__2396;
wire            n706____DOLLAR__2389;
wire            n707____DOLLAR__2382;
wire            n708____DOLLAR__2375;
wire            n709____DOLLAR__2368;
wire     [63:0] n70____DOLLAR__3134;
wire            n710____DOLLAR__2361;
wire            n711____DOLLAR__2354;
wire            n712____DOLLAR__2347;
wire            n713____DOLLAR__2340;
wire            n714____DOLLAR__2333;
wire     [31:0] n715____DOLLAR__2335;
wire     [31:0] n716____DOLLAR__2342;
wire     [31:0] n717____DOLLAR__2349;
wire     [31:0] n718____DOLLAR__2356;
wire     [31:0] n719____DOLLAR__2363;
wire     [63:0] n71____DOLLAR__3139;
wire     [31:0] n720____DOLLAR__2370;
wire     [31:0] n721____DOLLAR__2377;
wire     [31:0] n722____DOLLAR__2384;
wire     [31:0] n723____DOLLAR__2391;
wire     [31:0] n724____DOLLAR__2398;
wire     [31:0] n725____DOLLAR__2405;
wire     [31:0] n726____DOLLAR__2412;
wire     [31:0] n727____DOLLAR__2419;
wire     [31:0] n728____DOLLAR__2426;
wire     [31:0] n729____DOLLAR__2433;
wire     [63:0] n72____DOLLAR__3144;
wire     [31:0] n730____DOLLAR__2317;
wire     [31:0] n731____DOLLAR__2434;
wire      [7:0] n732____DOLLAR__2442;
wire      [7:0] n733____DOLLAR__2435;
wire      [7:0] n734____DOLLAR__2444;
wire      [7:0] n735____DOLLAR__2445;
wire            n736____DOLLAR__2550;
wire            n737____DOLLAR__2543;
wire            n738____DOLLAR__2536;
wire            n739____DOLLAR__2529;
wire     [63:0] n73____DOLLAR__3149;
wire            n740____DOLLAR__2522;
wire            n741____DOLLAR__2515;
wire            n742____DOLLAR__2508;
wire            n743____DOLLAR__2501;
wire            n744____DOLLAR__2494;
wire            n745____DOLLAR__2487;
wire            n746____DOLLAR__2480;
wire            n747____DOLLAR__2473;
wire            n748____DOLLAR__2466;
wire            n749____DOLLAR__2459;
wire     [63:0] n74____DOLLAR__3154;
wire            n750____DOLLAR__2452;
wire     [31:0] n751____DOLLAR__2454;
wire     [31:0] n752____DOLLAR__2461;
wire     [31:0] n753____DOLLAR__2468;
wire     [31:0] n754____DOLLAR__2475;
wire     [31:0] n755____DOLLAR__2482;
wire     [31:0] n756____DOLLAR__2489;
wire     [31:0] n757____DOLLAR__2496;
wire     [31:0] n758____DOLLAR__2503;
wire     [31:0] n759____DOLLAR__2510;
wire            n75____DOLLAR__3117;
wire     [31:0] n760____DOLLAR__2517;
wire     [31:0] n761____DOLLAR__2524;
wire     [31:0] n762____DOLLAR__2531;
wire     [31:0] n763____DOLLAR__2538;
wire     [31:0] n764____DOLLAR__2545;
wire     [31:0] n765____DOLLAR__2552;
wire     [31:0] n766____DOLLAR__2439;
wire     [31:0] n767____DOLLAR__2553;
wire      [7:0] n768____DOLLAR__2562;
wire      [7:0] n769____DOLLAR__2561;
wire            n76____DOLLAR__3112;
wire      [7:0] n770____DOLLAR__2564;
wire      [7:0] n771____DOLLAR__2565;
wire            n772____DOLLAR__2670;
wire            n773____DOLLAR__2663;
wire            n774____DOLLAR__2656;
wire            n775____DOLLAR__2649;
wire            n776____DOLLAR__2642;
wire            n777____DOLLAR__2635;
wire            n778____DOLLAR__2628;
wire            n779____DOLLAR__2621;
wire     [63:0] n77____DOLLAR__2974;
wire            n780____DOLLAR__2614;
wire            n781____DOLLAR__2607;
wire            n782____DOLLAR__2600;
wire            n783____DOLLAR__2593;
wire            n784____DOLLAR__2586;
wire            n785____DOLLAR__2579;
wire            n786____DOLLAR__2572;
wire     [31:0] n787____DOLLAR__2574;
wire     [31:0] n788____DOLLAR__2581;
wire     [31:0] n789____DOLLAR__2588;
wire            n78____DOLLAR__3107;
wire     [31:0] n790____DOLLAR__2595;
wire     [31:0] n791____DOLLAR__2602;
wire     [31:0] n792____DOLLAR__2609;
wire     [31:0] n793____DOLLAR__2616;
wire     [31:0] n794____DOLLAR__2623;
wire     [31:0] n795____DOLLAR__2630;
wire     [31:0] n796____DOLLAR__2637;
wire     [31:0] n797____DOLLAR__2644;
wire     [31:0] n798____DOLLAR__2651;
wire     [31:0] n799____DOLLAR__2658;
wire     [63:0] n79____DOLLAR__2984;
wire     [12:0] n7____DOLLAR__519;
wire     [31:0] n800____DOLLAR__2665;
wire     [31:0] n801____DOLLAR__2672;
wire     [31:0] n802____DOLLAR__2556;
wire     [31:0] n803____DOLLAR__2673;
wire     [31:0] n804____DOLLAR__2678;
wire            n80____DOLLAR__3102;
wire     [63:0] n81____DOLLAR__2994;
wire            n82____DOLLAR__3097;
wire     [63:0] n83____DOLLAR__3004;
wire            n84____DOLLAR__3092;
wire     [63:0] n85____DOLLAR__3014;
wire            n86____DOLLAR__3087;
wire     [55:0] n87____DOLLAR__3026;
wire      [7:0] n88____DOLLAR__3016;
wire     [63:0] n89____DOLLAR__3032;
wire            n8____DOLLAR__509;
wire            n90____DOLLAR__3082;
wire     [47:0] n91____DOLLAR__3044;
wire     [15:0] n92____DOLLAR__3034;
wire     [63:0] n93____DOLLAR__3050;
wire     [39:0] n94____DOLLAR__3062;
wire     [23:0] n95____DOLLAR__3052;
wire     [63:0] n96____DOLLAR__3068;
wire     [63:0] n97____DOLLAR__3084;
wire     [63:0] n98____DOLLAR__3089;
wire     [63:0] n99____DOLLAR__3094;
wire            n9____DOLLAR__504;
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
assign n0____DOLLAR__137 =  ( RESETN ) == ( 1'b1 )  ;
assign __ILA_TX_FUNC_valid__ = n0____DOLLAR__137 ;
assign n1____DOLLAR__480 =  ( MODE_10G ) == ( 1'b1 )  ;
assign n2____DOLLAR__485 =  ( TX_STATE ) == ( 5'd8 )  ;
assign n3____DOLLAR__487 =  ( n1____DOLLAR__480 ) & (n2____DOLLAR__485 )  ;
assign __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__ = n3____DOLLAR__487 ;
assign n5____DOLLAR__517 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n6____DOLLAR__514 =  ( TXFIFO_WUSED_QWD ) - ( 13'd1 )  ;
assign n7____DOLLAR__519 =  ( n5____DOLLAR__517 ) ? ( n6____DOLLAR__514 ) : ( TXFIFO_WUSED_QWD ) ;
assign n8____DOLLAR__509 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n9____DOLLAR__504 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n10____DOLLAR__499 =  ( TXFIFO_BUFF_RD_PTR ) + ( 5'd1 )  ;
assign n11____DOLLAR__506 =  ( n9____DOLLAR__504 ) ? ( 5'd0 ) : ( n10____DOLLAR__499 ) ;
assign n12____DOLLAR__511 =  ( n8____DOLLAR__509 ) ? ( n11____DOLLAR__506 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign n13____DOLLAR__494 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n14____DOLLAR__490 =  (  TXFIFO_BUFF [ TXFIFO_BUFF_RD_PTR ] )  ;
assign n15____DOLLAR__496 =  ( n13____DOLLAR__494 ) ? ( n14____DOLLAR__490 ) : ( TXFIFO_RD_OUTPUT ) ;
assign n16____DOLLAR__3182 =  $signed( TX_WCNT ) < $signed( 16'd0 )  ;
assign n17____DOLLAR__3184 =  ( n16____DOLLAR__3182 ) ? ( 5'd8 ) : ( 5'd16 ) ;
assign n18____DOLLAR__3189 =  $signed( TX_WCNT ) < $signed( 16'd16 )  ;
assign n19____DOLLAR__3191 =  ( n18____DOLLAR__3189 ) ? ( 8'd1 ) : ( TX_STATE_ENCAP ) ;
assign n20____DOLLAR__3173 =  ( TX_STATE_ENCAP ) == ( 8'd1 )  ;
assign n21____DOLLAR__3170 =  ( TX_B2B_CNTR ) - ( 6'd1 )  ;
assign n22____DOLLAR__3175 =  ( n20____DOLLAR__3173 ) ? ( n21____DOLLAR__3170 ) : ( TX_B2B_CNTR ) ;
assign n23____DOLLAR__3194 =  ( TX_WCNT ) - ( 16'd8 )  ;
assign n24____DOLLAR__3165 =  $signed( TX_WCNT ) > $signed( 16'd7 )  ;
assign n25____DOLLAR__3157 =  ( TX_WCNT ) == ( 16'd7 )  ;
assign n26____DOLLAR__3159 =  $signed( TX_WCNT ) < $signed( 16'd7 )  ;
assign n27____DOLLAR__3161 =  ( n25____DOLLAR__3157 ) | ( n26____DOLLAR__3159 )  ;
assign n28____DOLLAR__523 = TX_PACKET_BYTE_CNT[2:0] ;
assign n29____DOLLAR__3152 =  ( n28____DOLLAR__523 ) == ( 3'd0 )  ;
assign n30____DOLLAR__3147 =  ( n28____DOLLAR__523 ) == ( 3'd1 )  ;
assign n31____DOLLAR__2752 =  ( $signed( CRC ) >>> ( 32'd24 ))  ;
assign n32____DOLLAR__2753 =  ( n31____DOLLAR__2752 ) & ( 32'd255 )  ;
assign n33____DOLLAR__2746 =  ( $signed( CRC ) >>> ( 32'd8 ))  ;
assign n34____DOLLAR__2747 =  ( n33____DOLLAR__2746 ) & ( 32'd65280 )  ;
assign n35____DOLLAR__2754 =  ( n32____DOLLAR__2753 ) | ( n34____DOLLAR__2747 )  ;
assign n36____DOLLAR__2740 =  ( CRC ) << ( 32'd8 )  ;
assign n37____DOLLAR__2741 =  ( n36____DOLLAR__2740 ) & ( 32'd16711680 )  ;
assign n38____DOLLAR__2755 =  ( n35____DOLLAR__2754 ) | ( n37____DOLLAR__2741 )  ;
assign n39____DOLLAR__2734 =  ( CRC ) << ( 32'd24 )  ;
assign n40____DOLLAR__2730 =  { ( 16'd65280 ) , ( 16'd0 ) }  ;
assign n41____DOLLAR__2735 =  ( n39____DOLLAR__2734 ) & ( n40____DOLLAR__2730 )  ;
assign n42____DOLLAR__2756 =  ( n38____DOLLAR__2755 ) | ( n41____DOLLAR__2735 )  ;
assign n43____DOLLAR__2882 = TXFIFO_RD_OUTPUT[7:0] ;
assign n44____DOLLAR__2888 =  { ( n42____DOLLAR__2756 ) , ( n43____DOLLAR__2882 ) }  ;
assign n45____DOLLAR__2896 =  { ( 24'd460797 ) , ( n44____DOLLAR__2888 ) }  ;
assign n46____DOLLAR__3142 =  ( n28____DOLLAR__523 ) == ( 3'd2 )  ;
assign n47____DOLLAR__2898 = TXFIFO_RD_OUTPUT[15:0] ;
assign n48____DOLLAR__2904 =  { ( n42____DOLLAR__2756 ) , ( n47____DOLLAR__2898 ) }  ;
assign n49____DOLLAR__2912 =  { ( 16'd2045 ) , ( n48____DOLLAR__2904 ) }  ;
assign n50____DOLLAR__3137 =  ( n28____DOLLAR__523 ) == ( 3'd3 )  ;
assign n51____DOLLAR__2914 = TXFIFO_RD_OUTPUT[23:0] ;
assign n52____DOLLAR__2920 =  { ( n42____DOLLAR__2756 ) , ( n51____DOLLAR__2914 ) }  ;
assign n53____DOLLAR__2928 =  { ( 8'd253 ) , ( n52____DOLLAR__2920 ) }  ;
assign n54____DOLLAR__3132 =  ( n28____DOLLAR__523 ) == ( 3'd4 )  ;
assign n55____DOLLAR__2930 = TXFIFO_RD_OUTPUT[31:0] ;
assign n56____DOLLAR__2936 =  { ( n42____DOLLAR__2756 ) , ( n55____DOLLAR__2930 ) }  ;
assign n57____DOLLAR__3127 =  ( n28____DOLLAR__523 ) == ( 3'd5 )  ;
assign n58____DOLLAR__2940 = n42____DOLLAR__2756[23:0] ;
assign n59____DOLLAR__2938 = TXFIFO_RD_OUTPUT[39:0] ;
assign n60____DOLLAR__2946 =  { ( n58____DOLLAR__2940 ) , ( n59____DOLLAR__2938 ) }  ;
assign n61____DOLLAR__3122 =  ( n28____DOLLAR__523 ) == ( 3'd6 )  ;
assign n62____DOLLAR__2950 = n42____DOLLAR__2756[15:0] ;
assign n63____DOLLAR__2948 = TXFIFO_RD_OUTPUT[47:0] ;
assign n64____DOLLAR__2956 =  { ( n62____DOLLAR__2950 ) , ( n63____DOLLAR__2948 ) }  ;
assign n65____DOLLAR__2960 = n42____DOLLAR__2756[7:0] ;
assign n66____DOLLAR__2958 = TXFIFO_RD_OUTPUT[55:0] ;
assign n67____DOLLAR__2966 =  { ( n65____DOLLAR__2960 ) , ( n66____DOLLAR__2958 ) }  ;
assign n68____DOLLAR__3124 =  ( n61____DOLLAR__3122 ) ? ( n64____DOLLAR__2956 ) : ( n67____DOLLAR__2966 ) ;
assign n69____DOLLAR__3129 =  ( n57____DOLLAR__3127 ) ? ( n60____DOLLAR__2946 ) : ( n68____DOLLAR__3124 ) ;
assign n70____DOLLAR__3134 =  ( n54____DOLLAR__3132 ) ? ( n56____DOLLAR__2936 ) : ( n69____DOLLAR__3129 ) ;
assign n71____DOLLAR__3139 =  ( n50____DOLLAR__3137 ) ? ( n53____DOLLAR__2928 ) : ( n70____DOLLAR__3134 ) ;
assign n72____DOLLAR__3144 =  ( n46____DOLLAR__3142 ) ? ( n49____DOLLAR__2912 ) : ( n71____DOLLAR__3139 ) ;
assign n73____DOLLAR__3149 =  ( n30____DOLLAR__3147 ) ? ( n45____DOLLAR__2896 ) : ( n72____DOLLAR__3144 ) ;
assign n74____DOLLAR__3154 =  ( n29____DOLLAR__3152 ) ? ( TXFIFO_RD_OUTPUT ) : ( n73____DOLLAR__3149 ) ;
assign n75____DOLLAR__3117 =  $signed( TX_WCNT ) < $signed( 16'd0 )  ;
assign n76____DOLLAR__3112 =  ( n28____DOLLAR__523 ) == ( 3'd0 )  ;
assign n77____DOLLAR__2974 =  { ( 32'd117901309 ) , ( n42____DOLLAR__2756 ) }  ;
assign n78____DOLLAR__3107 =  ( n28____DOLLAR__523 ) == ( 3'd1 )  ;
assign n79____DOLLAR__2984 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n80____DOLLAR__3102 =  ( n28____DOLLAR__523 ) == ( 3'd2 )  ;
assign n81____DOLLAR__2994 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n82____DOLLAR__3097 =  ( n28____DOLLAR__523 ) == ( 3'd3 )  ;
assign n83____DOLLAR__3004 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n84____DOLLAR__3092 =  ( n28____DOLLAR__523 ) == ( 3'd4 )  ;
assign n85____DOLLAR__3014 =  { ( 32'd117901063 ) , ( 32'd117901309 ) }  ;
assign n86____DOLLAR__3087 =  ( n28____DOLLAR__523 ) == ( 3'd5 )  ;
assign n87____DOLLAR__3026 =  { ( 32'd117901063 ) , ( 24'd460797 ) }  ;
assign n88____DOLLAR__3016 = n42____DOLLAR__2756[31:24] ;
assign n89____DOLLAR__3032 =  { ( n87____DOLLAR__3026 ) , ( n88____DOLLAR__3016 ) }  ;
assign n90____DOLLAR__3082 =  ( n28____DOLLAR__523 ) == ( 3'd6 )  ;
assign n91____DOLLAR__3044 =  { ( 32'd117901063 ) , ( 16'd2045 ) }  ;
assign n92____DOLLAR__3034 = n42____DOLLAR__2756[31:16] ;
assign n93____DOLLAR__3050 =  { ( n91____DOLLAR__3044 ) , ( n92____DOLLAR__3034 ) }  ;
assign n94____DOLLAR__3062 =  { ( 32'd117901063 ) , ( 8'd253 ) }  ;
assign n95____DOLLAR__3052 = n42____DOLLAR__2756[31:8] ;
assign n96____DOLLAR__3068 =  { ( n94____DOLLAR__3062 ) , ( n95____DOLLAR__3052 ) }  ;
assign n97____DOLLAR__3084 =  ( n90____DOLLAR__3082 ) ? ( n93____DOLLAR__3050 ) : ( n96____DOLLAR__3068 ) ;
assign n98____DOLLAR__3089 =  ( n86____DOLLAR__3087 ) ? ( n89____DOLLAR__3032 ) : ( n97____DOLLAR__3084 ) ;
assign n99____DOLLAR__3094 =  ( n84____DOLLAR__3092 ) ? ( n85____DOLLAR__3014 ) : ( n98____DOLLAR__3089 ) ;
assign n100____DOLLAR__3099 =  ( n82____DOLLAR__3097 ) ? ( n83____DOLLAR__3004 ) : ( n99____DOLLAR__3094 ) ;
assign n101____DOLLAR__3104 =  ( n80____DOLLAR__3102 ) ? ( n81____DOLLAR__2994 ) : ( n100____DOLLAR__3099 ) ;
assign n102____DOLLAR__3109 =  ( n78____DOLLAR__3107 ) ? ( n79____DOLLAR__2984 ) : ( n101____DOLLAR__3104 ) ;
assign n103____DOLLAR__3114 =  ( n76____DOLLAR__3112 ) ? ( n77____DOLLAR__2974 ) : ( n102____DOLLAR__3109 ) ;
assign n104____DOLLAR__3078 =  { ( 32'd117901063 ) , ( 32'd117901063 ) }  ;
assign n105____DOLLAR__3119 =  ( n75____DOLLAR__3117 ) ? ( n103____DOLLAR__3114 ) : ( n104____DOLLAR__3078 ) ;
assign n106____DOLLAR__3162 =  ( n27____DOLLAR__3161 ) ? ( n74____DOLLAR__3154 ) : ( n105____DOLLAR__3119 ) ;
assign n107____DOLLAR__3167 =  ( n24____DOLLAR__3165 ) ? ( TXFIFO_RD_OUTPUT ) : ( n106____DOLLAR__3162 ) ;
assign n108____DOLLAR__2878 =  $signed( TX_WCNT ) > $signed( 16'd7 )  ;
assign n109____DOLLAR__2868 =  ( TX_WCNT ) == ( 16'd7 )  ;
assign n110____DOLLAR__2870 =  $signed( TX_WCNT ) < $signed( 16'd7 )  ;
assign n111____DOLLAR__2872 =  ( n109____DOLLAR__2868 ) | ( n110____DOLLAR__2870 )  ;
assign n112____DOLLAR__2863 =  ( n28____DOLLAR__523 ) == ( 3'd0 )  ;
assign n113____DOLLAR__2856 =  ( n28____DOLLAR__523 ) == ( 3'd1 )  ;
assign n114____DOLLAR__2849 =  ( n28____DOLLAR__523 ) == ( 3'd2 )  ;
assign n115____DOLLAR__2842 =  ( n28____DOLLAR__523 ) == ( 3'd3 )  ;
assign n116____DOLLAR__2835 =  ( n28____DOLLAR__523 ) == ( 3'd4 )  ;
assign n117____DOLLAR__2828 =  ( n28____DOLLAR__523 ) == ( 3'd5 )  ;
assign n118____DOLLAR__2821 =  ( n28____DOLLAR__523 ) == ( 3'd6 )  ;
assign n119____DOLLAR__2823 =  ( n118____DOLLAR__2821 ) ? ( 8'd0 ) : ( 8'd0 ) ;
assign n120____DOLLAR__2830 =  ( n117____DOLLAR__2828 ) ? ( 8'd0 ) : ( n119____DOLLAR__2823 ) ;
assign n121____DOLLAR__2837 =  ( n116____DOLLAR__2835 ) ? ( 8'd0 ) : ( n120____DOLLAR__2830 ) ;
assign n122____DOLLAR__2844 =  ( n115____DOLLAR__2842 ) ? ( 8'd128 ) : ( n121____DOLLAR__2837 ) ;
assign n123____DOLLAR__2851 =  ( n114____DOLLAR__2849 ) ? ( 8'd192 ) : ( n122____DOLLAR__2844 ) ;
assign n124____DOLLAR__2858 =  ( n113____DOLLAR__2856 ) ? ( 8'd224 ) : ( n123____DOLLAR__2851 ) ;
assign n125____DOLLAR__2865 =  ( n112____DOLLAR__2863 ) ? ( 8'd0 ) : ( n124____DOLLAR__2858 ) ;
assign n126____DOLLAR__2812 =  $signed( TX_WCNT ) < $signed( 16'd0 )  ;
assign n127____DOLLAR__2807 =  ( n28____DOLLAR__523 ) == ( 3'd0 )  ;
assign n128____DOLLAR__2800 =  ( n28____DOLLAR__523 ) == ( 3'd1 )  ;
assign n129____DOLLAR__2793 =  ( n28____DOLLAR__523 ) == ( 3'd2 )  ;
assign n130____DOLLAR__2786 =  ( n28____DOLLAR__523 ) == ( 3'd3 )  ;
assign n131____DOLLAR__2779 =  ( n28____DOLLAR__523 ) == ( 3'd4 )  ;
assign n132____DOLLAR__2772 =  ( n28____DOLLAR__523 ) == ( 3'd5 )  ;
assign n133____DOLLAR__2765 =  ( n28____DOLLAR__523 ) == ( 3'd6 )  ;
assign n134____DOLLAR__2767 =  ( n133____DOLLAR__2765 ) ? ( 8'd252 ) : ( 8'd248 ) ;
assign n135____DOLLAR__2774 =  ( n132____DOLLAR__2772 ) ? ( 8'd254 ) : ( n134____DOLLAR__2767 ) ;
assign n136____DOLLAR__2781 =  ( n131____DOLLAR__2779 ) ? ( 8'd255 ) : ( n135____DOLLAR__2774 ) ;
assign n137____DOLLAR__2788 =  ( n130____DOLLAR__2786 ) ? ( 8'd255 ) : ( n136____DOLLAR__2781 ) ;
assign n138____DOLLAR__2795 =  ( n129____DOLLAR__2793 ) ? ( 8'd255 ) : ( n137____DOLLAR__2788 ) ;
assign n139____DOLLAR__2802 =  ( n128____DOLLAR__2800 ) ? ( 8'd255 ) : ( n138____DOLLAR__2795 ) ;
assign n140____DOLLAR__2809 =  ( n127____DOLLAR__2807 ) ? ( 8'd240 ) : ( n139____DOLLAR__2802 ) ;
assign n141____DOLLAR__2814 =  ( n126____DOLLAR__2812 ) ? ( n140____DOLLAR__2809 ) : ( 8'd255 ) ;
assign n142____DOLLAR__2873 =  ( n111____DOLLAR__2872 ) ? ( n125____DOLLAR__2865 ) : ( n141____DOLLAR__2814 ) ;
assign n143____DOLLAR__2880 =  ( n108____DOLLAR__2878 ) ? ( 8'd0 ) : ( n142____DOLLAR__2873 ) ;
assign n144____DOLLAR__2718 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n145____DOLLAR__2709 =  ( $signed( CRC_IN ) >>> ( 32'd24 ))  ;
assign n146____DOLLAR__2710 =  ( n145____DOLLAR__2709 ) & ( 32'd255 )  ;
assign n147____DOLLAR__2703 =  ( $signed( CRC_IN ) >>> ( 32'd8 ))  ;
assign n148____DOLLAR__2704 =  ( n147____DOLLAR__2703 ) & ( 32'd65280 )  ;
assign n149____DOLLAR__2711 =  ( n146____DOLLAR__2710 ) | ( n148____DOLLAR__2704 )  ;
assign n150____DOLLAR__2697 =  ( CRC_IN ) << ( 32'd8 )  ;
assign n151____DOLLAR__2698 =  ( n150____DOLLAR__2697 ) & ( 32'd16711680 )  ;
assign n152____DOLLAR__2712 =  ( n149____DOLLAR__2711 ) | ( n151____DOLLAR__2698 )  ;
assign n153____DOLLAR__2691 =  ( CRC_IN ) << ( 32'd24 )  ;
assign n154____DOLLAR__2687 =  { ( 16'd65280 ) , ( 16'd0 ) }  ;
assign n155____DOLLAR__2692 =  ( n153____DOLLAR__2691 ) & ( n154____DOLLAR__2687 )  ;
assign n156____DOLLAR__2713 =  ( n152____DOLLAR__2712 ) | ( n155____DOLLAR__2692 )  ;
assign n157____DOLLAR__2714 = ~ ( n156____DOLLAR__2713 ) ;
assign n158____DOLLAR__2720 =  ( n144____DOLLAR__2718 ) ? ( n157____DOLLAR__2714 ) : ( CRC ) ;
assign n159____DOLLAR__521 =  ( TX_WCNT ) == ( TX_WCNT_INI )  ;
assign n160____DOLLAR__756 =  ( n28____DOLLAR__523 ) == ( 3'd0 )  ;
assign n161____DOLLAR__751 =  ( n28____DOLLAR__523 ) == ( 3'd1 )  ;
assign n162____DOLLAR__741 = TXFIFO_RD_OUTPUT[7:0] ;
assign n163____DOLLAR__739 =  { ( 32'd0 ) , ( 24'd0 ) }  ;
assign n164____DOLLAR__747 =  { ( n162____DOLLAR__741 ) , ( n163____DOLLAR__739 ) }  ;
assign n165____DOLLAR__728 =  ( n28____DOLLAR__523 ) == ( 3'd2 )  ;
assign n166____DOLLAR__718 = TXFIFO_RD_OUTPUT[15:0] ;
assign n167____DOLLAR__716 =  { ( 32'd0 ) , ( 16'd0 ) }  ;
assign n168____DOLLAR__724 =  { ( n166____DOLLAR__718 ) , ( n167____DOLLAR__716 ) }  ;
assign n169____DOLLAR__705 =  ( n28____DOLLAR__523 ) == ( 3'd3 )  ;
assign n170____DOLLAR__695 = TXFIFO_RD_OUTPUT[23:0] ;
assign n171____DOLLAR__693 =  { ( 32'd0 ) , ( 8'd0 ) }  ;
assign n172____DOLLAR__701 =  { ( n170____DOLLAR__695 ) , ( n171____DOLLAR__693 ) }  ;
assign n173____DOLLAR__682 =  ( n28____DOLLAR__523 ) == ( 3'd4 )  ;
assign n174____DOLLAR__672 = TXFIFO_RD_OUTPUT[31:0] ;
assign n175____DOLLAR__678 =  { ( n174____DOLLAR__672 ) , ( 32'd0 ) }  ;
assign n176____DOLLAR__667 =  ( n28____DOLLAR__523 ) == ( 3'd5 )  ;
assign n177____DOLLAR__657 = TXFIFO_RD_OUTPUT[39:0] ;
assign n178____DOLLAR__663 =  { ( n177____DOLLAR__657 ) , ( 24'd0 ) }  ;
assign n179____DOLLAR__652 =  ( n28____DOLLAR__523 ) == ( 3'd6 )  ;
assign n180____DOLLAR__642 = TXFIFO_RD_OUTPUT[47:0] ;
assign n181____DOLLAR__648 =  { ( n180____DOLLAR__642 ) , ( 16'd0 ) }  ;
assign n182____DOLLAR__632 = TXFIFO_RD_OUTPUT[55:0] ;
assign n183____DOLLAR__638 =  { ( n182____DOLLAR__632 ) , ( 8'd0 ) }  ;
assign n184____DOLLAR__654 =  ( n179____DOLLAR__652 ) ? ( n181____DOLLAR__648 ) : ( n183____DOLLAR__638 ) ;
assign n185____DOLLAR__669 =  ( n176____DOLLAR__667 ) ? ( n178____DOLLAR__663 ) : ( n184____DOLLAR__654 ) ;
assign n186____DOLLAR__684 =  ( n173____DOLLAR__682 ) ? ( n175____DOLLAR__678 ) : ( n185____DOLLAR__669 ) ;
assign n187____DOLLAR__707 =  ( n169____DOLLAR__705 ) ? ( n172____DOLLAR__701 ) : ( n186____DOLLAR__684 ) ;
assign n188____DOLLAR__730 =  ( n165____DOLLAR__728 ) ? ( n168____DOLLAR__724 ) : ( n187____DOLLAR__707 ) ;
assign n189____DOLLAR__753 =  ( n161____DOLLAR__751 ) ? ( n164____DOLLAR__747 ) : ( n188____DOLLAR__730 ) ;
assign n190____DOLLAR__758 =  ( n160____DOLLAR__756 ) ? ( TXFIFO_RD_OUTPUT ) : ( n189____DOLLAR__753 ) ;
assign n191____DOLLAR__627 =  ( n28____DOLLAR__523 ) == ( 3'd0 )  ;
assign n192____DOLLAR__622 =  ( n28____DOLLAR__523 ) == ( 3'd1 )  ;
assign n193____DOLLAR__612 = TXFIFO_RD_OUTPUT[7:0] ;
assign n194____DOLLAR__610 = TX_BUF[63:8] ;
assign n195____DOLLAR__618 =  { ( n193____DOLLAR__612 ) , ( n194____DOLLAR__610 ) }  ;
assign n196____DOLLAR__607 =  ( n28____DOLLAR__523 ) == ( 3'd2 )  ;
assign n197____DOLLAR__597 = TXFIFO_RD_OUTPUT[15:0] ;
assign n198____DOLLAR__595 = TX_BUF[63:16] ;
assign n199____DOLLAR__603 =  { ( n197____DOLLAR__597 ) , ( n198____DOLLAR__595 ) }  ;
assign n200____DOLLAR__592 =  ( n28____DOLLAR__523 ) == ( 3'd3 )  ;
assign n201____DOLLAR__582 = TXFIFO_RD_OUTPUT[23:0] ;
assign n202____DOLLAR__580 = TX_BUF[63:24] ;
assign n203____DOLLAR__588 =  { ( n201____DOLLAR__582 ) , ( n202____DOLLAR__580 ) }  ;
assign n204____DOLLAR__577 =  ( n28____DOLLAR__523 ) == ( 3'd4 )  ;
assign n205____DOLLAR__567 = TXFIFO_RD_OUTPUT[31:0] ;
assign n206____DOLLAR__565 = TX_BUF[63:32] ;
assign n207____DOLLAR__573 =  { ( n205____DOLLAR__567 ) , ( n206____DOLLAR__565 ) }  ;
assign n208____DOLLAR__562 =  ( n28____DOLLAR__523 ) == ( 3'd5 )  ;
assign n209____DOLLAR__552 = TXFIFO_RD_OUTPUT[39:0] ;
assign n210____DOLLAR__550 = TX_BUF[63:40] ;
assign n211____DOLLAR__558 =  { ( n209____DOLLAR__552 ) , ( n210____DOLLAR__550 ) }  ;
assign n212____DOLLAR__547 =  ( n28____DOLLAR__523 ) == ( 3'd6 )  ;
assign n213____DOLLAR__537 = TXFIFO_RD_OUTPUT[47:0] ;
assign n214____DOLLAR__535 = TX_BUF[63:48] ;
assign n215____DOLLAR__543 =  { ( n213____DOLLAR__537 ) , ( n214____DOLLAR__535 ) }  ;
assign n216____DOLLAR__527 = TXFIFO_RD_OUTPUT[55:0] ;
assign n217____DOLLAR__525 = TX_BUF[63:56] ;
assign n218____DOLLAR__533 =  { ( n216____DOLLAR__527 ) , ( n217____DOLLAR__525 ) }  ;
assign n219____DOLLAR__549 =  ( n212____DOLLAR__547 ) ? ( n215____DOLLAR__543 ) : ( n218____DOLLAR__533 ) ;
assign n220____DOLLAR__564 =  ( n208____DOLLAR__562 ) ? ( n211____DOLLAR__558 ) : ( n219____DOLLAR__549 ) ;
assign n221____DOLLAR__579 =  ( n204____DOLLAR__577 ) ? ( n207____DOLLAR__573 ) : ( n220____DOLLAR__564 ) ;
assign n222____DOLLAR__594 =  ( n200____DOLLAR__592 ) ? ( n203____DOLLAR__588 ) : ( n221____DOLLAR__579 ) ;
assign n223____DOLLAR__609 =  ( n196____DOLLAR__607 ) ? ( n199____DOLLAR__603 ) : ( n222____DOLLAR__594 ) ;
assign n224____DOLLAR__624 =  ( n192____DOLLAR__622 ) ? ( n195____DOLLAR__618 ) : ( n223____DOLLAR__609 ) ;
assign n225____DOLLAR__629 =  ( n191____DOLLAR__627 ) ? ( TXFIFO_RD_OUTPUT ) : ( n224____DOLLAR__624 ) ;
assign n226____DOLLAR__759 =  ( n159____DOLLAR__521 ) ? ( n190____DOLLAR__758 ) : ( n225____DOLLAR__629 ) ;
assign n227____DOLLAR__2676 =  $signed( TX_WCNT ) > $signed( 16'd0 )  ;
assign n228____DOLLAR__769 = CRC_IN[7:0] ;
assign n229____DOLLAR__762 = CRC_DAT_IN[7:0] ;
assign n230____DOLLAR__771 =  ( n228____DOLLAR__769 ) ^ ( n229____DOLLAR__762 )  ;
assign n231____DOLLAR__772 =  ( n230____DOLLAR__771 ) & ( 8'd15 )  ;
assign n232____DOLLAR__877 =  ( n231____DOLLAR__772 ) == ( 8'd15 )  ;
assign n233____DOLLAR__870 =  ( n231____DOLLAR__772 ) == ( 8'd14 )  ;
assign n234____DOLLAR__863 =  ( n231____DOLLAR__772 ) == ( 8'd13 )  ;
assign n235____DOLLAR__856 =  ( n231____DOLLAR__772 ) == ( 8'd12 )  ;
assign n236____DOLLAR__849 =  ( n231____DOLLAR__772 ) == ( 8'd11 )  ;
assign n237____DOLLAR__842 =  ( n231____DOLLAR__772 ) == ( 8'd10 )  ;
assign n238____DOLLAR__835 =  ( n231____DOLLAR__772 ) == ( 8'd9 )  ;
assign n239____DOLLAR__828 =  ( n231____DOLLAR__772 ) == ( 8'd8 )  ;
assign n240____DOLLAR__821 =  ( n231____DOLLAR__772 ) == ( 8'd7 )  ;
assign n241____DOLLAR__814 =  ( n231____DOLLAR__772 ) == ( 8'd6 )  ;
assign n242____DOLLAR__807 =  ( n231____DOLLAR__772 ) == ( 8'd5 )  ;
assign n243____DOLLAR__800 =  ( n231____DOLLAR__772 ) == ( 8'd4 )  ;
assign n244____DOLLAR__793 =  ( n231____DOLLAR__772 ) == ( 8'd3 )  ;
assign n245____DOLLAR__786 =  ( n231____DOLLAR__772 ) == ( 8'd2 )  ;
assign n246____DOLLAR__779 =  ( n231____DOLLAR__772 ) == ( 8'd1 )  ;
assign n247____DOLLAR__781 =  ( n246____DOLLAR__779 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n248____DOLLAR__788 =  ( n245____DOLLAR__786 ) ? ( 32'd997073096 ) : ( n247____DOLLAR__781 ) ;
assign n249____DOLLAR__795 =  ( n244____DOLLAR__793 ) ? ( 32'd651767980 ) : ( n248____DOLLAR__788 ) ;
assign n250____DOLLAR__802 =  ( n243____DOLLAR__800 ) ? ( 32'd1994146192 ) : ( n249____DOLLAR__795 ) ;
assign n251____DOLLAR__809 =  ( n242____DOLLAR__807 ) ? ( 32'd1802195444 ) : ( n250____DOLLAR__802 ) ;
assign n252____DOLLAR__816 =  ( n241____DOLLAR__814 ) ? ( 32'd1303535960 ) : ( n251____DOLLAR__809 ) ;
assign n253____DOLLAR__823 =  ( n240____DOLLAR__821 ) ? ( 32'd1342533948 ) : ( n252____DOLLAR__816 ) ;
assign n254____DOLLAR__830 =  ( n239____DOLLAR__828 ) ? ( 32'd-306674912 ) : ( n253____DOLLAR__823 ) ;
assign n255____DOLLAR__837 =  ( n238____DOLLAR__835 ) ? ( 32'd-267414716 ) : ( n254____DOLLAR__830 ) ;
assign n256____DOLLAR__844 =  ( n237____DOLLAR__842 ) ? ( 32'd-690576408 ) : ( n255____DOLLAR__837 ) ;
assign n257____DOLLAR__851 =  ( n236____DOLLAR__849 ) ? ( 32'd-882789492 ) : ( n256____DOLLAR__844 ) ;
assign n258____DOLLAR__858 =  ( n235____DOLLAR__856 ) ? ( 32'd-1687895376 ) : ( n257____DOLLAR__851 ) ;
assign n259____DOLLAR__865 =  ( n234____DOLLAR__863 ) ? ( 32'd-2032938284 ) : ( n258____DOLLAR__858 ) ;
assign n260____DOLLAR__872 =  ( n233____DOLLAR__870 ) ? ( 32'd-1609899400 ) : ( n259____DOLLAR__865 ) ;
assign n261____DOLLAR__879 =  ( n232____DOLLAR__877 ) ? ( 32'd-1111625188 ) : ( n260____DOLLAR__872 ) ;
assign n262____DOLLAR__766 =  ( $signed( CRC_IN ) >>> ( 32'd4 ))  ;
assign n263____DOLLAR__880 =  ( n261____DOLLAR__879 ) ^ ( n262____DOLLAR__766 )  ;
assign n264____DOLLAR__889 = n263____DOLLAR__880[7:0] ;
assign n265____DOLLAR__888 =  ( $signed( n229____DOLLAR__762 ) >>> ( 8'd4 ))  ;
assign n266____DOLLAR__891 =  ( n264____DOLLAR__889 ) ^ ( n265____DOLLAR__888 )  ;
assign n267____DOLLAR__892 =  ( n266____DOLLAR__891 ) & ( 8'd15 )  ;
assign n268____DOLLAR__997 =  ( n267____DOLLAR__892 ) == ( 8'd15 )  ;
assign n269____DOLLAR__990 =  ( n267____DOLLAR__892 ) == ( 8'd14 )  ;
assign n270____DOLLAR__983 =  ( n267____DOLLAR__892 ) == ( 8'd13 )  ;
assign n271____DOLLAR__976 =  ( n267____DOLLAR__892 ) == ( 8'd12 )  ;
assign n272____DOLLAR__969 =  ( n267____DOLLAR__892 ) == ( 8'd11 )  ;
assign n273____DOLLAR__962 =  ( n267____DOLLAR__892 ) == ( 8'd10 )  ;
assign n274____DOLLAR__955 =  ( n267____DOLLAR__892 ) == ( 8'd9 )  ;
assign n275____DOLLAR__948 =  ( n267____DOLLAR__892 ) == ( 8'd8 )  ;
assign n276____DOLLAR__941 =  ( n267____DOLLAR__892 ) == ( 8'd7 )  ;
assign n277____DOLLAR__934 =  ( n267____DOLLAR__892 ) == ( 8'd6 )  ;
assign n278____DOLLAR__927 =  ( n267____DOLLAR__892 ) == ( 8'd5 )  ;
assign n279____DOLLAR__920 =  ( n267____DOLLAR__892 ) == ( 8'd4 )  ;
assign n280____DOLLAR__913 =  ( n267____DOLLAR__892 ) == ( 8'd3 )  ;
assign n281____DOLLAR__906 =  ( n267____DOLLAR__892 ) == ( 8'd2 )  ;
assign n282____DOLLAR__899 =  ( n267____DOLLAR__892 ) == ( 8'd1 )  ;
assign n283____DOLLAR__901 =  ( n282____DOLLAR__899 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n284____DOLLAR__908 =  ( n281____DOLLAR__906 ) ? ( 32'd997073096 ) : ( n283____DOLLAR__901 ) ;
assign n285____DOLLAR__915 =  ( n280____DOLLAR__913 ) ? ( 32'd651767980 ) : ( n284____DOLLAR__908 ) ;
assign n286____DOLLAR__922 =  ( n279____DOLLAR__920 ) ? ( 32'd1994146192 ) : ( n285____DOLLAR__915 ) ;
assign n287____DOLLAR__929 =  ( n278____DOLLAR__927 ) ? ( 32'd1802195444 ) : ( n286____DOLLAR__922 ) ;
assign n288____DOLLAR__936 =  ( n277____DOLLAR__934 ) ? ( 32'd1303535960 ) : ( n287____DOLLAR__929 ) ;
assign n289____DOLLAR__943 =  ( n276____DOLLAR__941 ) ? ( 32'd1342533948 ) : ( n288____DOLLAR__936 ) ;
assign n290____DOLLAR__950 =  ( n275____DOLLAR__948 ) ? ( 32'd-306674912 ) : ( n289____DOLLAR__943 ) ;
assign n291____DOLLAR__957 =  ( n274____DOLLAR__955 ) ? ( 32'd-267414716 ) : ( n290____DOLLAR__950 ) ;
assign n292____DOLLAR__964 =  ( n273____DOLLAR__962 ) ? ( 32'd-690576408 ) : ( n291____DOLLAR__957 ) ;
assign n293____DOLLAR__971 =  ( n272____DOLLAR__969 ) ? ( 32'd-882789492 ) : ( n292____DOLLAR__964 ) ;
assign n294____DOLLAR__978 =  ( n271____DOLLAR__976 ) ? ( 32'd-1687895376 ) : ( n293____DOLLAR__971 ) ;
assign n295____DOLLAR__985 =  ( n270____DOLLAR__983 ) ? ( 32'd-2032938284 ) : ( n294____DOLLAR__978 ) ;
assign n296____DOLLAR__992 =  ( n269____DOLLAR__990 ) ? ( 32'd-1609899400 ) : ( n295____DOLLAR__985 ) ;
assign n297____DOLLAR__999 =  ( n268____DOLLAR__997 ) ? ( 32'd-1111625188 ) : ( n296____DOLLAR__992 ) ;
assign n298____DOLLAR__883 =  ( $signed( n263____DOLLAR__880 ) >>> ( 32'd4 ))  ;
assign n299____DOLLAR__1000 =  ( n297____DOLLAR__999 ) ^ ( n298____DOLLAR__883 )  ;
assign n300____DOLLAR__1008 = n299____DOLLAR__1000[7:0] ;
assign n301____DOLLAR__1001 = CRC_DAT_IN[15:8] ;
assign n302____DOLLAR__1010 =  ( n300____DOLLAR__1008 ) ^ ( n301____DOLLAR__1001 )  ;
assign n303____DOLLAR__1011 =  ( n302____DOLLAR__1010 ) & ( 8'd15 )  ;
assign n304____DOLLAR__1116 =  ( n303____DOLLAR__1011 ) == ( 8'd15 )  ;
assign n305____DOLLAR__1109 =  ( n303____DOLLAR__1011 ) == ( 8'd14 )  ;
assign n306____DOLLAR__1102 =  ( n303____DOLLAR__1011 ) == ( 8'd13 )  ;
assign n307____DOLLAR__1095 =  ( n303____DOLLAR__1011 ) == ( 8'd12 )  ;
assign n308____DOLLAR__1088 =  ( n303____DOLLAR__1011 ) == ( 8'd11 )  ;
assign n309____DOLLAR__1081 =  ( n303____DOLLAR__1011 ) == ( 8'd10 )  ;
assign n310____DOLLAR__1074 =  ( n303____DOLLAR__1011 ) == ( 8'd9 )  ;
assign n311____DOLLAR__1067 =  ( n303____DOLLAR__1011 ) == ( 8'd8 )  ;
assign n312____DOLLAR__1060 =  ( n303____DOLLAR__1011 ) == ( 8'd7 )  ;
assign n313____DOLLAR__1053 =  ( n303____DOLLAR__1011 ) == ( 8'd6 )  ;
assign n314____DOLLAR__1046 =  ( n303____DOLLAR__1011 ) == ( 8'd5 )  ;
assign n315____DOLLAR__1039 =  ( n303____DOLLAR__1011 ) == ( 8'd4 )  ;
assign n316____DOLLAR__1032 =  ( n303____DOLLAR__1011 ) == ( 8'd3 )  ;
assign n317____DOLLAR__1025 =  ( n303____DOLLAR__1011 ) == ( 8'd2 )  ;
assign n318____DOLLAR__1018 =  ( n303____DOLLAR__1011 ) == ( 8'd1 )  ;
assign n319____DOLLAR__1020 =  ( n318____DOLLAR__1018 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n320____DOLLAR__1027 =  ( n317____DOLLAR__1025 ) ? ( 32'd997073096 ) : ( n319____DOLLAR__1020 ) ;
assign n321____DOLLAR__1034 =  ( n316____DOLLAR__1032 ) ? ( 32'd651767980 ) : ( n320____DOLLAR__1027 ) ;
assign n322____DOLLAR__1041 =  ( n315____DOLLAR__1039 ) ? ( 32'd1994146192 ) : ( n321____DOLLAR__1034 ) ;
assign n323____DOLLAR__1048 =  ( n314____DOLLAR__1046 ) ? ( 32'd1802195444 ) : ( n322____DOLLAR__1041 ) ;
assign n324____DOLLAR__1055 =  ( n313____DOLLAR__1053 ) ? ( 32'd1303535960 ) : ( n323____DOLLAR__1048 ) ;
assign n325____DOLLAR__1062 =  ( n312____DOLLAR__1060 ) ? ( 32'd1342533948 ) : ( n324____DOLLAR__1055 ) ;
assign n326____DOLLAR__1069 =  ( n311____DOLLAR__1067 ) ? ( 32'd-306674912 ) : ( n325____DOLLAR__1062 ) ;
assign n327____DOLLAR__1076 =  ( n310____DOLLAR__1074 ) ? ( 32'd-267414716 ) : ( n326____DOLLAR__1069 ) ;
assign n328____DOLLAR__1083 =  ( n309____DOLLAR__1081 ) ? ( 32'd-690576408 ) : ( n327____DOLLAR__1076 ) ;
assign n329____DOLLAR__1090 =  ( n308____DOLLAR__1088 ) ? ( 32'd-882789492 ) : ( n328____DOLLAR__1083 ) ;
assign n330____DOLLAR__1097 =  ( n307____DOLLAR__1095 ) ? ( 32'd-1687895376 ) : ( n329____DOLLAR__1090 ) ;
assign n331____DOLLAR__1104 =  ( n306____DOLLAR__1102 ) ? ( 32'd-2032938284 ) : ( n330____DOLLAR__1097 ) ;
assign n332____DOLLAR__1111 =  ( n305____DOLLAR__1109 ) ? ( 32'd-1609899400 ) : ( n331____DOLLAR__1104 ) ;
assign n333____DOLLAR__1118 =  ( n304____DOLLAR__1116 ) ? ( 32'd-1111625188 ) : ( n332____DOLLAR__1111 ) ;
assign n334____DOLLAR__1005 =  ( $signed( n299____DOLLAR__1000 ) >>> ( 32'd4 ))  ;
assign n335____DOLLAR__1119 =  ( n333____DOLLAR__1118 ) ^ ( n334____DOLLAR__1005 )  ;
assign n336____DOLLAR__1128 = n335____DOLLAR__1119[7:0] ;
assign n337____DOLLAR__1127 =  ( $signed( n301____DOLLAR__1001 ) >>> ( 8'd4 ))  ;
assign n338____DOLLAR__1130 =  ( n336____DOLLAR__1128 ) ^ ( n337____DOLLAR__1127 )  ;
assign n339____DOLLAR__1131 =  ( n338____DOLLAR__1130 ) & ( 8'd15 )  ;
assign n340____DOLLAR__1236 =  ( n339____DOLLAR__1131 ) == ( 8'd15 )  ;
assign n341____DOLLAR__1229 =  ( n339____DOLLAR__1131 ) == ( 8'd14 )  ;
assign n342____DOLLAR__1222 =  ( n339____DOLLAR__1131 ) == ( 8'd13 )  ;
assign n343____DOLLAR__1215 =  ( n339____DOLLAR__1131 ) == ( 8'd12 )  ;
assign n344____DOLLAR__1208 =  ( n339____DOLLAR__1131 ) == ( 8'd11 )  ;
assign n345____DOLLAR__1201 =  ( n339____DOLLAR__1131 ) == ( 8'd10 )  ;
assign n346____DOLLAR__1194 =  ( n339____DOLLAR__1131 ) == ( 8'd9 )  ;
assign n347____DOLLAR__1187 =  ( n339____DOLLAR__1131 ) == ( 8'd8 )  ;
assign n348____DOLLAR__1180 =  ( n339____DOLLAR__1131 ) == ( 8'd7 )  ;
assign n349____DOLLAR__1173 =  ( n339____DOLLAR__1131 ) == ( 8'd6 )  ;
assign n350____DOLLAR__1166 =  ( n339____DOLLAR__1131 ) == ( 8'd5 )  ;
assign n351____DOLLAR__1159 =  ( n339____DOLLAR__1131 ) == ( 8'd4 )  ;
assign n352____DOLLAR__1152 =  ( n339____DOLLAR__1131 ) == ( 8'd3 )  ;
assign n353____DOLLAR__1145 =  ( n339____DOLLAR__1131 ) == ( 8'd2 )  ;
assign n354____DOLLAR__1138 =  ( n339____DOLLAR__1131 ) == ( 8'd1 )  ;
assign n355____DOLLAR__1140 =  ( n354____DOLLAR__1138 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n356____DOLLAR__1147 =  ( n353____DOLLAR__1145 ) ? ( 32'd997073096 ) : ( n355____DOLLAR__1140 ) ;
assign n357____DOLLAR__1154 =  ( n352____DOLLAR__1152 ) ? ( 32'd651767980 ) : ( n356____DOLLAR__1147 ) ;
assign n358____DOLLAR__1161 =  ( n351____DOLLAR__1159 ) ? ( 32'd1994146192 ) : ( n357____DOLLAR__1154 ) ;
assign n359____DOLLAR__1168 =  ( n350____DOLLAR__1166 ) ? ( 32'd1802195444 ) : ( n358____DOLLAR__1161 ) ;
assign n360____DOLLAR__1175 =  ( n349____DOLLAR__1173 ) ? ( 32'd1303535960 ) : ( n359____DOLLAR__1168 ) ;
assign n361____DOLLAR__1182 =  ( n348____DOLLAR__1180 ) ? ( 32'd1342533948 ) : ( n360____DOLLAR__1175 ) ;
assign n362____DOLLAR__1189 =  ( n347____DOLLAR__1187 ) ? ( 32'd-306674912 ) : ( n361____DOLLAR__1182 ) ;
assign n363____DOLLAR__1196 =  ( n346____DOLLAR__1194 ) ? ( 32'd-267414716 ) : ( n362____DOLLAR__1189 ) ;
assign n364____DOLLAR__1203 =  ( n345____DOLLAR__1201 ) ? ( 32'd-690576408 ) : ( n363____DOLLAR__1196 ) ;
assign n365____DOLLAR__1210 =  ( n344____DOLLAR__1208 ) ? ( 32'd-882789492 ) : ( n364____DOLLAR__1203 ) ;
assign n366____DOLLAR__1217 =  ( n343____DOLLAR__1215 ) ? ( 32'd-1687895376 ) : ( n365____DOLLAR__1210 ) ;
assign n367____DOLLAR__1224 =  ( n342____DOLLAR__1222 ) ? ( 32'd-2032938284 ) : ( n366____DOLLAR__1217 ) ;
assign n368____DOLLAR__1231 =  ( n341____DOLLAR__1229 ) ? ( 32'd-1609899400 ) : ( n367____DOLLAR__1224 ) ;
assign n369____DOLLAR__1238 =  ( n340____DOLLAR__1236 ) ? ( 32'd-1111625188 ) : ( n368____DOLLAR__1231 ) ;
assign n370____DOLLAR__1122 =  ( $signed( n335____DOLLAR__1119 ) >>> ( 32'd4 ))  ;
assign n371____DOLLAR__1239 =  ( n369____DOLLAR__1238 ) ^ ( n370____DOLLAR__1122 )  ;
assign n372____DOLLAR__1247 = n371____DOLLAR__1239[7:0] ;
assign n373____DOLLAR__1240 = CRC_DAT_IN[23:16] ;
assign n374____DOLLAR__1249 =  ( n372____DOLLAR__1247 ) ^ ( n373____DOLLAR__1240 )  ;
assign n375____DOLLAR__1250 =  ( n374____DOLLAR__1249 ) & ( 8'd15 )  ;
assign n376____DOLLAR__1355 =  ( n375____DOLLAR__1250 ) == ( 8'd15 )  ;
assign n377____DOLLAR__1348 =  ( n375____DOLLAR__1250 ) == ( 8'd14 )  ;
assign n378____DOLLAR__1341 =  ( n375____DOLLAR__1250 ) == ( 8'd13 )  ;
assign n379____DOLLAR__1334 =  ( n375____DOLLAR__1250 ) == ( 8'd12 )  ;
assign n380____DOLLAR__1327 =  ( n375____DOLLAR__1250 ) == ( 8'd11 )  ;
assign n381____DOLLAR__1320 =  ( n375____DOLLAR__1250 ) == ( 8'd10 )  ;
assign n382____DOLLAR__1313 =  ( n375____DOLLAR__1250 ) == ( 8'd9 )  ;
assign n383____DOLLAR__1306 =  ( n375____DOLLAR__1250 ) == ( 8'd8 )  ;
assign n384____DOLLAR__1299 =  ( n375____DOLLAR__1250 ) == ( 8'd7 )  ;
assign n385____DOLLAR__1292 =  ( n375____DOLLAR__1250 ) == ( 8'd6 )  ;
assign n386____DOLLAR__1285 =  ( n375____DOLLAR__1250 ) == ( 8'd5 )  ;
assign n387____DOLLAR__1278 =  ( n375____DOLLAR__1250 ) == ( 8'd4 )  ;
assign n388____DOLLAR__1271 =  ( n375____DOLLAR__1250 ) == ( 8'd3 )  ;
assign n389____DOLLAR__1264 =  ( n375____DOLLAR__1250 ) == ( 8'd2 )  ;
assign n390____DOLLAR__1257 =  ( n375____DOLLAR__1250 ) == ( 8'd1 )  ;
assign n391____DOLLAR__1259 =  ( n390____DOLLAR__1257 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n392____DOLLAR__1266 =  ( n389____DOLLAR__1264 ) ? ( 32'd997073096 ) : ( n391____DOLLAR__1259 ) ;
assign n393____DOLLAR__1273 =  ( n388____DOLLAR__1271 ) ? ( 32'd651767980 ) : ( n392____DOLLAR__1266 ) ;
assign n394____DOLLAR__1280 =  ( n387____DOLLAR__1278 ) ? ( 32'd1994146192 ) : ( n393____DOLLAR__1273 ) ;
assign n395____DOLLAR__1287 =  ( n386____DOLLAR__1285 ) ? ( 32'd1802195444 ) : ( n394____DOLLAR__1280 ) ;
assign n396____DOLLAR__1294 =  ( n385____DOLLAR__1292 ) ? ( 32'd1303535960 ) : ( n395____DOLLAR__1287 ) ;
assign n397____DOLLAR__1301 =  ( n384____DOLLAR__1299 ) ? ( 32'd1342533948 ) : ( n396____DOLLAR__1294 ) ;
assign n398____DOLLAR__1308 =  ( n383____DOLLAR__1306 ) ? ( 32'd-306674912 ) : ( n397____DOLLAR__1301 ) ;
assign n399____DOLLAR__1315 =  ( n382____DOLLAR__1313 ) ? ( 32'd-267414716 ) : ( n398____DOLLAR__1308 ) ;
assign n400____DOLLAR__1322 =  ( n381____DOLLAR__1320 ) ? ( 32'd-690576408 ) : ( n399____DOLLAR__1315 ) ;
assign n401____DOLLAR__1329 =  ( n380____DOLLAR__1327 ) ? ( 32'd-882789492 ) : ( n400____DOLLAR__1322 ) ;
assign n402____DOLLAR__1336 =  ( n379____DOLLAR__1334 ) ? ( 32'd-1687895376 ) : ( n401____DOLLAR__1329 ) ;
assign n403____DOLLAR__1343 =  ( n378____DOLLAR__1341 ) ? ( 32'd-2032938284 ) : ( n402____DOLLAR__1336 ) ;
assign n404____DOLLAR__1350 =  ( n377____DOLLAR__1348 ) ? ( 32'd-1609899400 ) : ( n403____DOLLAR__1343 ) ;
assign n405____DOLLAR__1357 =  ( n376____DOLLAR__1355 ) ? ( 32'd-1111625188 ) : ( n404____DOLLAR__1350 ) ;
assign n406____DOLLAR__1244 =  ( $signed( n371____DOLLAR__1239 ) >>> ( 32'd4 ))  ;
assign n407____DOLLAR__1358 =  ( n405____DOLLAR__1357 ) ^ ( n406____DOLLAR__1244 )  ;
assign n408____DOLLAR__1367 = n407____DOLLAR__1358[7:0] ;
assign n409____DOLLAR__1366 =  ( $signed( n373____DOLLAR__1240 ) >>> ( 8'd4 ))  ;
assign n410____DOLLAR__1369 =  ( n408____DOLLAR__1367 ) ^ ( n409____DOLLAR__1366 )  ;
assign n411____DOLLAR__1370 =  ( n410____DOLLAR__1369 ) & ( 8'd15 )  ;
assign n412____DOLLAR__1475 =  ( n411____DOLLAR__1370 ) == ( 8'd15 )  ;
assign n413____DOLLAR__1468 =  ( n411____DOLLAR__1370 ) == ( 8'd14 )  ;
assign n414____DOLLAR__1461 =  ( n411____DOLLAR__1370 ) == ( 8'd13 )  ;
assign n415____DOLLAR__1454 =  ( n411____DOLLAR__1370 ) == ( 8'd12 )  ;
assign n416____DOLLAR__1447 =  ( n411____DOLLAR__1370 ) == ( 8'd11 )  ;
assign n417____DOLLAR__1440 =  ( n411____DOLLAR__1370 ) == ( 8'd10 )  ;
assign n418____DOLLAR__1433 =  ( n411____DOLLAR__1370 ) == ( 8'd9 )  ;
assign n419____DOLLAR__1426 =  ( n411____DOLLAR__1370 ) == ( 8'd8 )  ;
assign n420____DOLLAR__1419 =  ( n411____DOLLAR__1370 ) == ( 8'd7 )  ;
assign n421____DOLLAR__1412 =  ( n411____DOLLAR__1370 ) == ( 8'd6 )  ;
assign n422____DOLLAR__1405 =  ( n411____DOLLAR__1370 ) == ( 8'd5 )  ;
assign n423____DOLLAR__1398 =  ( n411____DOLLAR__1370 ) == ( 8'd4 )  ;
assign n424____DOLLAR__1391 =  ( n411____DOLLAR__1370 ) == ( 8'd3 )  ;
assign n425____DOLLAR__1384 =  ( n411____DOLLAR__1370 ) == ( 8'd2 )  ;
assign n426____DOLLAR__1377 =  ( n411____DOLLAR__1370 ) == ( 8'd1 )  ;
assign n427____DOLLAR__1379 =  ( n426____DOLLAR__1377 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n428____DOLLAR__1386 =  ( n425____DOLLAR__1384 ) ? ( 32'd997073096 ) : ( n427____DOLLAR__1379 ) ;
assign n429____DOLLAR__1393 =  ( n424____DOLLAR__1391 ) ? ( 32'd651767980 ) : ( n428____DOLLAR__1386 ) ;
assign n430____DOLLAR__1400 =  ( n423____DOLLAR__1398 ) ? ( 32'd1994146192 ) : ( n429____DOLLAR__1393 ) ;
assign n431____DOLLAR__1407 =  ( n422____DOLLAR__1405 ) ? ( 32'd1802195444 ) : ( n430____DOLLAR__1400 ) ;
assign n432____DOLLAR__1414 =  ( n421____DOLLAR__1412 ) ? ( 32'd1303535960 ) : ( n431____DOLLAR__1407 ) ;
assign n433____DOLLAR__1421 =  ( n420____DOLLAR__1419 ) ? ( 32'd1342533948 ) : ( n432____DOLLAR__1414 ) ;
assign n434____DOLLAR__1428 =  ( n419____DOLLAR__1426 ) ? ( 32'd-306674912 ) : ( n433____DOLLAR__1421 ) ;
assign n435____DOLLAR__1435 =  ( n418____DOLLAR__1433 ) ? ( 32'd-267414716 ) : ( n434____DOLLAR__1428 ) ;
assign n436____DOLLAR__1442 =  ( n417____DOLLAR__1440 ) ? ( 32'd-690576408 ) : ( n435____DOLLAR__1435 ) ;
assign n437____DOLLAR__1449 =  ( n416____DOLLAR__1447 ) ? ( 32'd-882789492 ) : ( n436____DOLLAR__1442 ) ;
assign n438____DOLLAR__1456 =  ( n415____DOLLAR__1454 ) ? ( 32'd-1687895376 ) : ( n437____DOLLAR__1449 ) ;
assign n439____DOLLAR__1463 =  ( n414____DOLLAR__1461 ) ? ( 32'd-2032938284 ) : ( n438____DOLLAR__1456 ) ;
assign n440____DOLLAR__1470 =  ( n413____DOLLAR__1468 ) ? ( 32'd-1609899400 ) : ( n439____DOLLAR__1463 ) ;
assign n441____DOLLAR__1477 =  ( n412____DOLLAR__1475 ) ? ( 32'd-1111625188 ) : ( n440____DOLLAR__1470 ) ;
assign n442____DOLLAR__1361 =  ( $signed( n407____DOLLAR__1358 ) >>> ( 32'd4 ))  ;
assign n443____DOLLAR__1478 =  ( n441____DOLLAR__1477 ) ^ ( n442____DOLLAR__1361 )  ;
assign n444____DOLLAR__1486 = n443____DOLLAR__1478[7:0] ;
assign n445____DOLLAR__1479 = CRC_DAT_IN[31:24] ;
assign n446____DOLLAR__1488 =  ( n444____DOLLAR__1486 ) ^ ( n445____DOLLAR__1479 )  ;
assign n447____DOLLAR__1489 =  ( n446____DOLLAR__1488 ) & ( 8'd15 )  ;
assign n448____DOLLAR__1594 =  ( n447____DOLLAR__1489 ) == ( 8'd15 )  ;
assign n449____DOLLAR__1587 =  ( n447____DOLLAR__1489 ) == ( 8'd14 )  ;
assign n450____DOLLAR__1580 =  ( n447____DOLLAR__1489 ) == ( 8'd13 )  ;
assign n451____DOLLAR__1573 =  ( n447____DOLLAR__1489 ) == ( 8'd12 )  ;
assign n452____DOLLAR__1566 =  ( n447____DOLLAR__1489 ) == ( 8'd11 )  ;
assign n453____DOLLAR__1559 =  ( n447____DOLLAR__1489 ) == ( 8'd10 )  ;
assign n454____DOLLAR__1552 =  ( n447____DOLLAR__1489 ) == ( 8'd9 )  ;
assign n455____DOLLAR__1545 =  ( n447____DOLLAR__1489 ) == ( 8'd8 )  ;
assign n456____DOLLAR__1538 =  ( n447____DOLLAR__1489 ) == ( 8'd7 )  ;
assign n457____DOLLAR__1531 =  ( n447____DOLLAR__1489 ) == ( 8'd6 )  ;
assign n458____DOLLAR__1524 =  ( n447____DOLLAR__1489 ) == ( 8'd5 )  ;
assign n459____DOLLAR__1517 =  ( n447____DOLLAR__1489 ) == ( 8'd4 )  ;
assign n460____DOLLAR__1510 =  ( n447____DOLLAR__1489 ) == ( 8'd3 )  ;
assign n461____DOLLAR__1503 =  ( n447____DOLLAR__1489 ) == ( 8'd2 )  ;
assign n462____DOLLAR__1496 =  ( n447____DOLLAR__1489 ) == ( 8'd1 )  ;
assign n463____DOLLAR__1498 =  ( n462____DOLLAR__1496 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n464____DOLLAR__1505 =  ( n461____DOLLAR__1503 ) ? ( 32'd997073096 ) : ( n463____DOLLAR__1498 ) ;
assign n465____DOLLAR__1512 =  ( n460____DOLLAR__1510 ) ? ( 32'd651767980 ) : ( n464____DOLLAR__1505 ) ;
assign n466____DOLLAR__1519 =  ( n459____DOLLAR__1517 ) ? ( 32'd1994146192 ) : ( n465____DOLLAR__1512 ) ;
assign n467____DOLLAR__1526 =  ( n458____DOLLAR__1524 ) ? ( 32'd1802195444 ) : ( n466____DOLLAR__1519 ) ;
assign n468____DOLLAR__1533 =  ( n457____DOLLAR__1531 ) ? ( 32'd1303535960 ) : ( n467____DOLLAR__1526 ) ;
assign n469____DOLLAR__1540 =  ( n456____DOLLAR__1538 ) ? ( 32'd1342533948 ) : ( n468____DOLLAR__1533 ) ;
assign n470____DOLLAR__1547 =  ( n455____DOLLAR__1545 ) ? ( 32'd-306674912 ) : ( n469____DOLLAR__1540 ) ;
assign n471____DOLLAR__1554 =  ( n454____DOLLAR__1552 ) ? ( 32'd-267414716 ) : ( n470____DOLLAR__1547 ) ;
assign n472____DOLLAR__1561 =  ( n453____DOLLAR__1559 ) ? ( 32'd-690576408 ) : ( n471____DOLLAR__1554 ) ;
assign n473____DOLLAR__1568 =  ( n452____DOLLAR__1566 ) ? ( 32'd-882789492 ) : ( n472____DOLLAR__1561 ) ;
assign n474____DOLLAR__1575 =  ( n451____DOLLAR__1573 ) ? ( 32'd-1687895376 ) : ( n473____DOLLAR__1568 ) ;
assign n475____DOLLAR__1582 =  ( n450____DOLLAR__1580 ) ? ( 32'd-2032938284 ) : ( n474____DOLLAR__1575 ) ;
assign n476____DOLLAR__1589 =  ( n449____DOLLAR__1587 ) ? ( 32'd-1609899400 ) : ( n475____DOLLAR__1582 ) ;
assign n477____DOLLAR__1596 =  ( n448____DOLLAR__1594 ) ? ( 32'd-1111625188 ) : ( n476____DOLLAR__1589 ) ;
assign n478____DOLLAR__1483 =  ( $signed( n443____DOLLAR__1478 ) >>> ( 32'd4 ))  ;
assign n479____DOLLAR__1597 =  ( n477____DOLLAR__1596 ) ^ ( n478____DOLLAR__1483 )  ;
assign n480____DOLLAR__1606 = n479____DOLLAR__1597[7:0] ;
assign n481____DOLLAR__1605 =  ( $signed( n445____DOLLAR__1479 ) >>> ( 8'd4 ))  ;
assign n482____DOLLAR__1608 =  ( n480____DOLLAR__1606 ) ^ ( n481____DOLLAR__1605 )  ;
assign n483____DOLLAR__1609 =  ( n482____DOLLAR__1608 ) & ( 8'd15 )  ;
assign n484____DOLLAR__1714 =  ( n483____DOLLAR__1609 ) == ( 8'd15 )  ;
assign n485____DOLLAR__1707 =  ( n483____DOLLAR__1609 ) == ( 8'd14 )  ;
assign n486____DOLLAR__1700 =  ( n483____DOLLAR__1609 ) == ( 8'd13 )  ;
assign n487____DOLLAR__1693 =  ( n483____DOLLAR__1609 ) == ( 8'd12 )  ;
assign n488____DOLLAR__1686 =  ( n483____DOLLAR__1609 ) == ( 8'd11 )  ;
assign n489____DOLLAR__1679 =  ( n483____DOLLAR__1609 ) == ( 8'd10 )  ;
assign n490____DOLLAR__1672 =  ( n483____DOLLAR__1609 ) == ( 8'd9 )  ;
assign n491____DOLLAR__1665 =  ( n483____DOLLAR__1609 ) == ( 8'd8 )  ;
assign n492____DOLLAR__1658 =  ( n483____DOLLAR__1609 ) == ( 8'd7 )  ;
assign n493____DOLLAR__1651 =  ( n483____DOLLAR__1609 ) == ( 8'd6 )  ;
assign n494____DOLLAR__1644 =  ( n483____DOLLAR__1609 ) == ( 8'd5 )  ;
assign n495____DOLLAR__1637 =  ( n483____DOLLAR__1609 ) == ( 8'd4 )  ;
assign n496____DOLLAR__1630 =  ( n483____DOLLAR__1609 ) == ( 8'd3 )  ;
assign n497____DOLLAR__1623 =  ( n483____DOLLAR__1609 ) == ( 8'd2 )  ;
assign n498____DOLLAR__1616 =  ( n483____DOLLAR__1609 ) == ( 8'd1 )  ;
assign n499____DOLLAR__1618 =  ( n498____DOLLAR__1616 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n500____DOLLAR__1625 =  ( n497____DOLLAR__1623 ) ? ( 32'd997073096 ) : ( n499____DOLLAR__1618 ) ;
assign n501____DOLLAR__1632 =  ( n496____DOLLAR__1630 ) ? ( 32'd651767980 ) : ( n500____DOLLAR__1625 ) ;
assign n502____DOLLAR__1639 =  ( n495____DOLLAR__1637 ) ? ( 32'd1994146192 ) : ( n501____DOLLAR__1632 ) ;
assign n503____DOLLAR__1646 =  ( n494____DOLLAR__1644 ) ? ( 32'd1802195444 ) : ( n502____DOLLAR__1639 ) ;
assign n504____DOLLAR__1653 =  ( n493____DOLLAR__1651 ) ? ( 32'd1303535960 ) : ( n503____DOLLAR__1646 ) ;
assign n505____DOLLAR__1660 =  ( n492____DOLLAR__1658 ) ? ( 32'd1342533948 ) : ( n504____DOLLAR__1653 ) ;
assign n506____DOLLAR__1667 =  ( n491____DOLLAR__1665 ) ? ( 32'd-306674912 ) : ( n505____DOLLAR__1660 ) ;
assign n507____DOLLAR__1674 =  ( n490____DOLLAR__1672 ) ? ( 32'd-267414716 ) : ( n506____DOLLAR__1667 ) ;
assign n508____DOLLAR__1681 =  ( n489____DOLLAR__1679 ) ? ( 32'd-690576408 ) : ( n507____DOLLAR__1674 ) ;
assign n509____DOLLAR__1688 =  ( n488____DOLLAR__1686 ) ? ( 32'd-882789492 ) : ( n508____DOLLAR__1681 ) ;
assign n510____DOLLAR__1695 =  ( n487____DOLLAR__1693 ) ? ( 32'd-1687895376 ) : ( n509____DOLLAR__1688 ) ;
assign n511____DOLLAR__1702 =  ( n486____DOLLAR__1700 ) ? ( 32'd-2032938284 ) : ( n510____DOLLAR__1695 ) ;
assign n512____DOLLAR__1709 =  ( n485____DOLLAR__1707 ) ? ( 32'd-1609899400 ) : ( n511____DOLLAR__1702 ) ;
assign n513____DOLLAR__1716 =  ( n484____DOLLAR__1714 ) ? ( 32'd-1111625188 ) : ( n512____DOLLAR__1709 ) ;
assign n514____DOLLAR__1600 =  ( $signed( n479____DOLLAR__1597 ) >>> ( 32'd4 ))  ;
assign n515____DOLLAR__1717 =  ( n513____DOLLAR__1716 ) ^ ( n514____DOLLAR__1600 )  ;
assign n516____DOLLAR__1725 = n515____DOLLAR__1717[7:0] ;
assign n517____DOLLAR__1718 = CRC_DAT_IN[39:32] ;
assign n518____DOLLAR__1727 =  ( n516____DOLLAR__1725 ) ^ ( n517____DOLLAR__1718 )  ;
assign n519____DOLLAR__1728 =  ( n518____DOLLAR__1727 ) & ( 8'd15 )  ;
assign n520____DOLLAR__1833 =  ( n519____DOLLAR__1728 ) == ( 8'd15 )  ;
assign n521____DOLLAR__1826 =  ( n519____DOLLAR__1728 ) == ( 8'd14 )  ;
assign n522____DOLLAR__1819 =  ( n519____DOLLAR__1728 ) == ( 8'd13 )  ;
assign n523____DOLLAR__1812 =  ( n519____DOLLAR__1728 ) == ( 8'd12 )  ;
assign n524____DOLLAR__1805 =  ( n519____DOLLAR__1728 ) == ( 8'd11 )  ;
assign n525____DOLLAR__1798 =  ( n519____DOLLAR__1728 ) == ( 8'd10 )  ;
assign n526____DOLLAR__1791 =  ( n519____DOLLAR__1728 ) == ( 8'd9 )  ;
assign n527____DOLLAR__1784 =  ( n519____DOLLAR__1728 ) == ( 8'd8 )  ;
assign n528____DOLLAR__1777 =  ( n519____DOLLAR__1728 ) == ( 8'd7 )  ;
assign n529____DOLLAR__1770 =  ( n519____DOLLAR__1728 ) == ( 8'd6 )  ;
assign n530____DOLLAR__1763 =  ( n519____DOLLAR__1728 ) == ( 8'd5 )  ;
assign n531____DOLLAR__1756 =  ( n519____DOLLAR__1728 ) == ( 8'd4 )  ;
assign n532____DOLLAR__1749 =  ( n519____DOLLAR__1728 ) == ( 8'd3 )  ;
assign n533____DOLLAR__1742 =  ( n519____DOLLAR__1728 ) == ( 8'd2 )  ;
assign n534____DOLLAR__1735 =  ( n519____DOLLAR__1728 ) == ( 8'd1 )  ;
assign n535____DOLLAR__1737 =  ( n534____DOLLAR__1735 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n536____DOLLAR__1744 =  ( n533____DOLLAR__1742 ) ? ( 32'd997073096 ) : ( n535____DOLLAR__1737 ) ;
assign n537____DOLLAR__1751 =  ( n532____DOLLAR__1749 ) ? ( 32'd651767980 ) : ( n536____DOLLAR__1744 ) ;
assign n538____DOLLAR__1758 =  ( n531____DOLLAR__1756 ) ? ( 32'd1994146192 ) : ( n537____DOLLAR__1751 ) ;
assign n539____DOLLAR__1765 =  ( n530____DOLLAR__1763 ) ? ( 32'd1802195444 ) : ( n538____DOLLAR__1758 ) ;
assign n540____DOLLAR__1772 =  ( n529____DOLLAR__1770 ) ? ( 32'd1303535960 ) : ( n539____DOLLAR__1765 ) ;
assign n541____DOLLAR__1779 =  ( n528____DOLLAR__1777 ) ? ( 32'd1342533948 ) : ( n540____DOLLAR__1772 ) ;
assign n542____DOLLAR__1786 =  ( n527____DOLLAR__1784 ) ? ( 32'd-306674912 ) : ( n541____DOLLAR__1779 ) ;
assign n543____DOLLAR__1793 =  ( n526____DOLLAR__1791 ) ? ( 32'd-267414716 ) : ( n542____DOLLAR__1786 ) ;
assign n544____DOLLAR__1800 =  ( n525____DOLLAR__1798 ) ? ( 32'd-690576408 ) : ( n543____DOLLAR__1793 ) ;
assign n545____DOLLAR__1807 =  ( n524____DOLLAR__1805 ) ? ( 32'd-882789492 ) : ( n544____DOLLAR__1800 ) ;
assign n546____DOLLAR__1814 =  ( n523____DOLLAR__1812 ) ? ( 32'd-1687895376 ) : ( n545____DOLLAR__1807 ) ;
assign n547____DOLLAR__1821 =  ( n522____DOLLAR__1819 ) ? ( 32'd-2032938284 ) : ( n546____DOLLAR__1814 ) ;
assign n548____DOLLAR__1828 =  ( n521____DOLLAR__1826 ) ? ( 32'd-1609899400 ) : ( n547____DOLLAR__1821 ) ;
assign n549____DOLLAR__1835 =  ( n520____DOLLAR__1833 ) ? ( 32'd-1111625188 ) : ( n548____DOLLAR__1828 ) ;
assign n550____DOLLAR__1722 =  ( $signed( n515____DOLLAR__1717 ) >>> ( 32'd4 ))  ;
assign n551____DOLLAR__1836 =  ( n549____DOLLAR__1835 ) ^ ( n550____DOLLAR__1722 )  ;
assign n552____DOLLAR__1845 = n551____DOLLAR__1836[7:0] ;
assign n553____DOLLAR__1844 =  ( $signed( n517____DOLLAR__1718 ) >>> ( 8'd4 ))  ;
assign n554____DOLLAR__1847 =  ( n552____DOLLAR__1845 ) ^ ( n553____DOLLAR__1844 )  ;
assign n555____DOLLAR__1848 =  ( n554____DOLLAR__1847 ) & ( 8'd15 )  ;
assign n556____DOLLAR__1953 =  ( n555____DOLLAR__1848 ) == ( 8'd15 )  ;
assign n557____DOLLAR__1946 =  ( n555____DOLLAR__1848 ) == ( 8'd14 )  ;
assign n558____DOLLAR__1939 =  ( n555____DOLLAR__1848 ) == ( 8'd13 )  ;
assign n559____DOLLAR__1932 =  ( n555____DOLLAR__1848 ) == ( 8'd12 )  ;
assign n560____DOLLAR__1925 =  ( n555____DOLLAR__1848 ) == ( 8'd11 )  ;
assign n561____DOLLAR__1918 =  ( n555____DOLLAR__1848 ) == ( 8'd10 )  ;
assign n562____DOLLAR__1911 =  ( n555____DOLLAR__1848 ) == ( 8'd9 )  ;
assign n563____DOLLAR__1904 =  ( n555____DOLLAR__1848 ) == ( 8'd8 )  ;
assign n564____DOLLAR__1897 =  ( n555____DOLLAR__1848 ) == ( 8'd7 )  ;
assign n565____DOLLAR__1890 =  ( n555____DOLLAR__1848 ) == ( 8'd6 )  ;
assign n566____DOLLAR__1883 =  ( n555____DOLLAR__1848 ) == ( 8'd5 )  ;
assign n567____DOLLAR__1876 =  ( n555____DOLLAR__1848 ) == ( 8'd4 )  ;
assign n568____DOLLAR__1869 =  ( n555____DOLLAR__1848 ) == ( 8'd3 )  ;
assign n569____DOLLAR__1862 =  ( n555____DOLLAR__1848 ) == ( 8'd2 )  ;
assign n570____DOLLAR__1855 =  ( n555____DOLLAR__1848 ) == ( 8'd1 )  ;
assign n571____DOLLAR__1857 =  ( n570____DOLLAR__1855 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n572____DOLLAR__1864 =  ( n569____DOLLAR__1862 ) ? ( 32'd997073096 ) : ( n571____DOLLAR__1857 ) ;
assign n573____DOLLAR__1871 =  ( n568____DOLLAR__1869 ) ? ( 32'd651767980 ) : ( n572____DOLLAR__1864 ) ;
assign n574____DOLLAR__1878 =  ( n567____DOLLAR__1876 ) ? ( 32'd1994146192 ) : ( n573____DOLLAR__1871 ) ;
assign n575____DOLLAR__1885 =  ( n566____DOLLAR__1883 ) ? ( 32'd1802195444 ) : ( n574____DOLLAR__1878 ) ;
assign n576____DOLLAR__1892 =  ( n565____DOLLAR__1890 ) ? ( 32'd1303535960 ) : ( n575____DOLLAR__1885 ) ;
assign n577____DOLLAR__1899 =  ( n564____DOLLAR__1897 ) ? ( 32'd1342533948 ) : ( n576____DOLLAR__1892 ) ;
assign n578____DOLLAR__1906 =  ( n563____DOLLAR__1904 ) ? ( 32'd-306674912 ) : ( n577____DOLLAR__1899 ) ;
assign n579____DOLLAR__1913 =  ( n562____DOLLAR__1911 ) ? ( 32'd-267414716 ) : ( n578____DOLLAR__1906 ) ;
assign n580____DOLLAR__1920 =  ( n561____DOLLAR__1918 ) ? ( 32'd-690576408 ) : ( n579____DOLLAR__1913 ) ;
assign n581____DOLLAR__1927 =  ( n560____DOLLAR__1925 ) ? ( 32'd-882789492 ) : ( n580____DOLLAR__1920 ) ;
assign n582____DOLLAR__1934 =  ( n559____DOLLAR__1932 ) ? ( 32'd-1687895376 ) : ( n581____DOLLAR__1927 ) ;
assign n583____DOLLAR__1941 =  ( n558____DOLLAR__1939 ) ? ( 32'd-2032938284 ) : ( n582____DOLLAR__1934 ) ;
assign n584____DOLLAR__1948 =  ( n557____DOLLAR__1946 ) ? ( 32'd-1609899400 ) : ( n583____DOLLAR__1941 ) ;
assign n585____DOLLAR__1955 =  ( n556____DOLLAR__1953 ) ? ( 32'd-1111625188 ) : ( n584____DOLLAR__1948 ) ;
assign n586____DOLLAR__1839 =  ( $signed( n551____DOLLAR__1836 ) >>> ( 32'd4 ))  ;
assign n587____DOLLAR__1956 =  ( n585____DOLLAR__1955 ) ^ ( n586____DOLLAR__1839 )  ;
assign n588____DOLLAR__1964 = n587____DOLLAR__1956[7:0] ;
assign n589____DOLLAR__1957 = CRC_DAT_IN[47:40] ;
assign n590____DOLLAR__1966 =  ( n588____DOLLAR__1964 ) ^ ( n589____DOLLAR__1957 )  ;
assign n591____DOLLAR__1967 =  ( n590____DOLLAR__1966 ) & ( 8'd15 )  ;
assign n592____DOLLAR__2072 =  ( n591____DOLLAR__1967 ) == ( 8'd15 )  ;
assign n593____DOLLAR__2065 =  ( n591____DOLLAR__1967 ) == ( 8'd14 )  ;
assign n594____DOLLAR__2058 =  ( n591____DOLLAR__1967 ) == ( 8'd13 )  ;
assign n595____DOLLAR__2051 =  ( n591____DOLLAR__1967 ) == ( 8'd12 )  ;
assign n596____DOLLAR__2044 =  ( n591____DOLLAR__1967 ) == ( 8'd11 )  ;
assign n597____DOLLAR__2037 =  ( n591____DOLLAR__1967 ) == ( 8'd10 )  ;
assign n598____DOLLAR__2030 =  ( n591____DOLLAR__1967 ) == ( 8'd9 )  ;
assign n599____DOLLAR__2023 =  ( n591____DOLLAR__1967 ) == ( 8'd8 )  ;
assign n600____DOLLAR__2016 =  ( n591____DOLLAR__1967 ) == ( 8'd7 )  ;
assign n601____DOLLAR__2009 =  ( n591____DOLLAR__1967 ) == ( 8'd6 )  ;
assign n602____DOLLAR__2002 =  ( n591____DOLLAR__1967 ) == ( 8'd5 )  ;
assign n603____DOLLAR__1995 =  ( n591____DOLLAR__1967 ) == ( 8'd4 )  ;
assign n604____DOLLAR__1988 =  ( n591____DOLLAR__1967 ) == ( 8'd3 )  ;
assign n605____DOLLAR__1981 =  ( n591____DOLLAR__1967 ) == ( 8'd2 )  ;
assign n606____DOLLAR__1974 =  ( n591____DOLLAR__1967 ) == ( 8'd1 )  ;
assign n607____DOLLAR__1976 =  ( n606____DOLLAR__1974 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n608____DOLLAR__1983 =  ( n605____DOLLAR__1981 ) ? ( 32'd997073096 ) : ( n607____DOLLAR__1976 ) ;
assign n609____DOLLAR__1990 =  ( n604____DOLLAR__1988 ) ? ( 32'd651767980 ) : ( n608____DOLLAR__1983 ) ;
assign n610____DOLLAR__1997 =  ( n603____DOLLAR__1995 ) ? ( 32'd1994146192 ) : ( n609____DOLLAR__1990 ) ;
assign n611____DOLLAR__2004 =  ( n602____DOLLAR__2002 ) ? ( 32'd1802195444 ) : ( n610____DOLLAR__1997 ) ;
assign n612____DOLLAR__2011 =  ( n601____DOLLAR__2009 ) ? ( 32'd1303535960 ) : ( n611____DOLLAR__2004 ) ;
assign n613____DOLLAR__2018 =  ( n600____DOLLAR__2016 ) ? ( 32'd1342533948 ) : ( n612____DOLLAR__2011 ) ;
assign n614____DOLLAR__2025 =  ( n599____DOLLAR__2023 ) ? ( 32'd-306674912 ) : ( n613____DOLLAR__2018 ) ;
assign n615____DOLLAR__2032 =  ( n598____DOLLAR__2030 ) ? ( 32'd-267414716 ) : ( n614____DOLLAR__2025 ) ;
assign n616____DOLLAR__2039 =  ( n597____DOLLAR__2037 ) ? ( 32'd-690576408 ) : ( n615____DOLLAR__2032 ) ;
assign n617____DOLLAR__2046 =  ( n596____DOLLAR__2044 ) ? ( 32'd-882789492 ) : ( n616____DOLLAR__2039 ) ;
assign n618____DOLLAR__2053 =  ( n595____DOLLAR__2051 ) ? ( 32'd-1687895376 ) : ( n617____DOLLAR__2046 ) ;
assign n619____DOLLAR__2060 =  ( n594____DOLLAR__2058 ) ? ( 32'd-2032938284 ) : ( n618____DOLLAR__2053 ) ;
assign n620____DOLLAR__2067 =  ( n593____DOLLAR__2065 ) ? ( 32'd-1609899400 ) : ( n619____DOLLAR__2060 ) ;
assign n621____DOLLAR__2074 =  ( n592____DOLLAR__2072 ) ? ( 32'd-1111625188 ) : ( n620____DOLLAR__2067 ) ;
assign n622____DOLLAR__1961 =  ( $signed( n587____DOLLAR__1956 ) >>> ( 32'd4 ))  ;
assign n623____DOLLAR__2075 =  ( n621____DOLLAR__2074 ) ^ ( n622____DOLLAR__1961 )  ;
assign n624____DOLLAR__2084 = n623____DOLLAR__2075[7:0] ;
assign n625____DOLLAR__2083 =  ( $signed( n589____DOLLAR__1957 ) >>> ( 8'd4 ))  ;
assign n626____DOLLAR__2086 =  ( n624____DOLLAR__2084 ) ^ ( n625____DOLLAR__2083 )  ;
assign n627____DOLLAR__2087 =  ( n626____DOLLAR__2086 ) & ( 8'd15 )  ;
assign n628____DOLLAR__2192 =  ( n627____DOLLAR__2087 ) == ( 8'd15 )  ;
assign n629____DOLLAR__2185 =  ( n627____DOLLAR__2087 ) == ( 8'd14 )  ;
assign n630____DOLLAR__2178 =  ( n627____DOLLAR__2087 ) == ( 8'd13 )  ;
assign n631____DOLLAR__2171 =  ( n627____DOLLAR__2087 ) == ( 8'd12 )  ;
assign n632____DOLLAR__2164 =  ( n627____DOLLAR__2087 ) == ( 8'd11 )  ;
assign n633____DOLLAR__2157 =  ( n627____DOLLAR__2087 ) == ( 8'd10 )  ;
assign n634____DOLLAR__2150 =  ( n627____DOLLAR__2087 ) == ( 8'd9 )  ;
assign n635____DOLLAR__2143 =  ( n627____DOLLAR__2087 ) == ( 8'd8 )  ;
assign n636____DOLLAR__2136 =  ( n627____DOLLAR__2087 ) == ( 8'd7 )  ;
assign n637____DOLLAR__2129 =  ( n627____DOLLAR__2087 ) == ( 8'd6 )  ;
assign n638____DOLLAR__2122 =  ( n627____DOLLAR__2087 ) == ( 8'd5 )  ;
assign n639____DOLLAR__2115 =  ( n627____DOLLAR__2087 ) == ( 8'd4 )  ;
assign n640____DOLLAR__2108 =  ( n627____DOLLAR__2087 ) == ( 8'd3 )  ;
assign n641____DOLLAR__2101 =  ( n627____DOLLAR__2087 ) == ( 8'd2 )  ;
assign n642____DOLLAR__2094 =  ( n627____DOLLAR__2087 ) == ( 8'd1 )  ;
assign n643____DOLLAR__2096 =  ( n642____DOLLAR__2094 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n644____DOLLAR__2103 =  ( n641____DOLLAR__2101 ) ? ( 32'd997073096 ) : ( n643____DOLLAR__2096 ) ;
assign n645____DOLLAR__2110 =  ( n640____DOLLAR__2108 ) ? ( 32'd651767980 ) : ( n644____DOLLAR__2103 ) ;
assign n646____DOLLAR__2117 =  ( n639____DOLLAR__2115 ) ? ( 32'd1994146192 ) : ( n645____DOLLAR__2110 ) ;
assign n647____DOLLAR__2124 =  ( n638____DOLLAR__2122 ) ? ( 32'd1802195444 ) : ( n646____DOLLAR__2117 ) ;
assign n648____DOLLAR__2131 =  ( n637____DOLLAR__2129 ) ? ( 32'd1303535960 ) : ( n647____DOLLAR__2124 ) ;
assign n649____DOLLAR__2138 =  ( n636____DOLLAR__2136 ) ? ( 32'd1342533948 ) : ( n648____DOLLAR__2131 ) ;
assign n650____DOLLAR__2145 =  ( n635____DOLLAR__2143 ) ? ( 32'd-306674912 ) : ( n649____DOLLAR__2138 ) ;
assign n651____DOLLAR__2152 =  ( n634____DOLLAR__2150 ) ? ( 32'd-267414716 ) : ( n650____DOLLAR__2145 ) ;
assign n652____DOLLAR__2159 =  ( n633____DOLLAR__2157 ) ? ( 32'd-690576408 ) : ( n651____DOLLAR__2152 ) ;
assign n653____DOLLAR__2166 =  ( n632____DOLLAR__2164 ) ? ( 32'd-882789492 ) : ( n652____DOLLAR__2159 ) ;
assign n654____DOLLAR__2173 =  ( n631____DOLLAR__2171 ) ? ( 32'd-1687895376 ) : ( n653____DOLLAR__2166 ) ;
assign n655____DOLLAR__2180 =  ( n630____DOLLAR__2178 ) ? ( 32'd-2032938284 ) : ( n654____DOLLAR__2173 ) ;
assign n656____DOLLAR__2187 =  ( n629____DOLLAR__2185 ) ? ( 32'd-1609899400 ) : ( n655____DOLLAR__2180 ) ;
assign n657____DOLLAR__2194 =  ( n628____DOLLAR__2192 ) ? ( 32'd-1111625188 ) : ( n656____DOLLAR__2187 ) ;
assign n658____DOLLAR__2078 =  ( $signed( n623____DOLLAR__2075 ) >>> ( 32'd4 ))  ;
assign n659____DOLLAR__2195 =  ( n657____DOLLAR__2194 ) ^ ( n658____DOLLAR__2078 )  ;
assign n660____DOLLAR__2203 = n659____DOLLAR__2195[7:0] ;
assign n661____DOLLAR__2196 = CRC_DAT_IN[55:48] ;
assign n662____DOLLAR__2205 =  ( n660____DOLLAR__2203 ) ^ ( n661____DOLLAR__2196 )  ;
assign n663____DOLLAR__2206 =  ( n662____DOLLAR__2205 ) & ( 8'd15 )  ;
assign n664____DOLLAR__2311 =  ( n663____DOLLAR__2206 ) == ( 8'd15 )  ;
assign n665____DOLLAR__2304 =  ( n663____DOLLAR__2206 ) == ( 8'd14 )  ;
assign n666____DOLLAR__2297 =  ( n663____DOLLAR__2206 ) == ( 8'd13 )  ;
assign n667____DOLLAR__2290 =  ( n663____DOLLAR__2206 ) == ( 8'd12 )  ;
assign n668____DOLLAR__2283 =  ( n663____DOLLAR__2206 ) == ( 8'd11 )  ;
assign n669____DOLLAR__2276 =  ( n663____DOLLAR__2206 ) == ( 8'd10 )  ;
assign n670____DOLLAR__2269 =  ( n663____DOLLAR__2206 ) == ( 8'd9 )  ;
assign n671____DOLLAR__2262 =  ( n663____DOLLAR__2206 ) == ( 8'd8 )  ;
assign n672____DOLLAR__2255 =  ( n663____DOLLAR__2206 ) == ( 8'd7 )  ;
assign n673____DOLLAR__2248 =  ( n663____DOLLAR__2206 ) == ( 8'd6 )  ;
assign n674____DOLLAR__2241 =  ( n663____DOLLAR__2206 ) == ( 8'd5 )  ;
assign n675____DOLLAR__2234 =  ( n663____DOLLAR__2206 ) == ( 8'd4 )  ;
assign n676____DOLLAR__2227 =  ( n663____DOLLAR__2206 ) == ( 8'd3 )  ;
assign n677____DOLLAR__2220 =  ( n663____DOLLAR__2206 ) == ( 8'd2 )  ;
assign n678____DOLLAR__2213 =  ( n663____DOLLAR__2206 ) == ( 8'd1 )  ;
assign n679____DOLLAR__2215 =  ( n678____DOLLAR__2213 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n680____DOLLAR__2222 =  ( n677____DOLLAR__2220 ) ? ( 32'd997073096 ) : ( n679____DOLLAR__2215 ) ;
assign n681____DOLLAR__2229 =  ( n676____DOLLAR__2227 ) ? ( 32'd651767980 ) : ( n680____DOLLAR__2222 ) ;
assign n682____DOLLAR__2236 =  ( n675____DOLLAR__2234 ) ? ( 32'd1994146192 ) : ( n681____DOLLAR__2229 ) ;
assign n683____DOLLAR__2243 =  ( n674____DOLLAR__2241 ) ? ( 32'd1802195444 ) : ( n682____DOLLAR__2236 ) ;
assign n684____DOLLAR__2250 =  ( n673____DOLLAR__2248 ) ? ( 32'd1303535960 ) : ( n683____DOLLAR__2243 ) ;
assign n685____DOLLAR__2257 =  ( n672____DOLLAR__2255 ) ? ( 32'd1342533948 ) : ( n684____DOLLAR__2250 ) ;
assign n686____DOLLAR__2264 =  ( n671____DOLLAR__2262 ) ? ( 32'd-306674912 ) : ( n685____DOLLAR__2257 ) ;
assign n687____DOLLAR__2271 =  ( n670____DOLLAR__2269 ) ? ( 32'd-267414716 ) : ( n686____DOLLAR__2264 ) ;
assign n688____DOLLAR__2278 =  ( n669____DOLLAR__2276 ) ? ( 32'd-690576408 ) : ( n687____DOLLAR__2271 ) ;
assign n689____DOLLAR__2285 =  ( n668____DOLLAR__2283 ) ? ( 32'd-882789492 ) : ( n688____DOLLAR__2278 ) ;
assign n690____DOLLAR__2292 =  ( n667____DOLLAR__2290 ) ? ( 32'd-1687895376 ) : ( n689____DOLLAR__2285 ) ;
assign n691____DOLLAR__2299 =  ( n666____DOLLAR__2297 ) ? ( 32'd-2032938284 ) : ( n690____DOLLAR__2292 ) ;
assign n692____DOLLAR__2306 =  ( n665____DOLLAR__2304 ) ? ( 32'd-1609899400 ) : ( n691____DOLLAR__2299 ) ;
assign n693____DOLLAR__2313 =  ( n664____DOLLAR__2311 ) ? ( 32'd-1111625188 ) : ( n692____DOLLAR__2306 ) ;
assign n694____DOLLAR__2200 =  ( $signed( n659____DOLLAR__2195 ) >>> ( 32'd4 ))  ;
assign n695____DOLLAR__2314 =  ( n693____DOLLAR__2313 ) ^ ( n694____DOLLAR__2200 )  ;
assign n696____DOLLAR__2323 = n695____DOLLAR__2314[7:0] ;
assign n697____DOLLAR__2322 =  ( $signed( n661____DOLLAR__2196 ) >>> ( 8'd4 ))  ;
assign n698____DOLLAR__2325 =  ( n696____DOLLAR__2323 ) ^ ( n697____DOLLAR__2322 )  ;
assign n699____DOLLAR__2326 =  ( n698____DOLLAR__2325 ) & ( 8'd15 )  ;
assign n700____DOLLAR__2431 =  ( n699____DOLLAR__2326 ) == ( 8'd15 )  ;
assign n701____DOLLAR__2424 =  ( n699____DOLLAR__2326 ) == ( 8'd14 )  ;
assign n702____DOLLAR__2417 =  ( n699____DOLLAR__2326 ) == ( 8'd13 )  ;
assign n703____DOLLAR__2410 =  ( n699____DOLLAR__2326 ) == ( 8'd12 )  ;
assign n704____DOLLAR__2403 =  ( n699____DOLLAR__2326 ) == ( 8'd11 )  ;
assign n705____DOLLAR__2396 =  ( n699____DOLLAR__2326 ) == ( 8'd10 )  ;
assign n706____DOLLAR__2389 =  ( n699____DOLLAR__2326 ) == ( 8'd9 )  ;
assign n707____DOLLAR__2382 =  ( n699____DOLLAR__2326 ) == ( 8'd8 )  ;
assign n708____DOLLAR__2375 =  ( n699____DOLLAR__2326 ) == ( 8'd7 )  ;
assign n709____DOLLAR__2368 =  ( n699____DOLLAR__2326 ) == ( 8'd6 )  ;
assign n710____DOLLAR__2361 =  ( n699____DOLLAR__2326 ) == ( 8'd5 )  ;
assign n711____DOLLAR__2354 =  ( n699____DOLLAR__2326 ) == ( 8'd4 )  ;
assign n712____DOLLAR__2347 =  ( n699____DOLLAR__2326 ) == ( 8'd3 )  ;
assign n713____DOLLAR__2340 =  ( n699____DOLLAR__2326 ) == ( 8'd2 )  ;
assign n714____DOLLAR__2333 =  ( n699____DOLLAR__2326 ) == ( 8'd1 )  ;
assign n715____DOLLAR__2335 =  ( n714____DOLLAR__2333 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n716____DOLLAR__2342 =  ( n713____DOLLAR__2340 ) ? ( 32'd997073096 ) : ( n715____DOLLAR__2335 ) ;
assign n717____DOLLAR__2349 =  ( n712____DOLLAR__2347 ) ? ( 32'd651767980 ) : ( n716____DOLLAR__2342 ) ;
assign n718____DOLLAR__2356 =  ( n711____DOLLAR__2354 ) ? ( 32'd1994146192 ) : ( n717____DOLLAR__2349 ) ;
assign n719____DOLLAR__2363 =  ( n710____DOLLAR__2361 ) ? ( 32'd1802195444 ) : ( n718____DOLLAR__2356 ) ;
assign n720____DOLLAR__2370 =  ( n709____DOLLAR__2368 ) ? ( 32'd1303535960 ) : ( n719____DOLLAR__2363 ) ;
assign n721____DOLLAR__2377 =  ( n708____DOLLAR__2375 ) ? ( 32'd1342533948 ) : ( n720____DOLLAR__2370 ) ;
assign n722____DOLLAR__2384 =  ( n707____DOLLAR__2382 ) ? ( 32'd-306674912 ) : ( n721____DOLLAR__2377 ) ;
assign n723____DOLLAR__2391 =  ( n706____DOLLAR__2389 ) ? ( 32'd-267414716 ) : ( n722____DOLLAR__2384 ) ;
assign n724____DOLLAR__2398 =  ( n705____DOLLAR__2396 ) ? ( 32'd-690576408 ) : ( n723____DOLLAR__2391 ) ;
assign n725____DOLLAR__2405 =  ( n704____DOLLAR__2403 ) ? ( 32'd-882789492 ) : ( n724____DOLLAR__2398 ) ;
assign n726____DOLLAR__2412 =  ( n703____DOLLAR__2410 ) ? ( 32'd-1687895376 ) : ( n725____DOLLAR__2405 ) ;
assign n727____DOLLAR__2419 =  ( n702____DOLLAR__2417 ) ? ( 32'd-2032938284 ) : ( n726____DOLLAR__2412 ) ;
assign n728____DOLLAR__2426 =  ( n701____DOLLAR__2424 ) ? ( 32'd-1609899400 ) : ( n727____DOLLAR__2419 ) ;
assign n729____DOLLAR__2433 =  ( n700____DOLLAR__2431 ) ? ( 32'd-1111625188 ) : ( n728____DOLLAR__2426 ) ;
assign n730____DOLLAR__2317 =  ( $signed( n695____DOLLAR__2314 ) >>> ( 32'd4 ))  ;
assign n731____DOLLAR__2434 =  ( n729____DOLLAR__2433 ) ^ ( n730____DOLLAR__2317 )  ;
assign n732____DOLLAR__2442 = n731____DOLLAR__2434[7:0] ;
assign n733____DOLLAR__2435 = CRC_DAT_IN[63:56] ;
assign n734____DOLLAR__2444 =  ( n732____DOLLAR__2442 ) ^ ( n733____DOLLAR__2435 )  ;
assign n735____DOLLAR__2445 =  ( n734____DOLLAR__2444 ) & ( 8'd15 )  ;
assign n736____DOLLAR__2550 =  ( n735____DOLLAR__2445 ) == ( 8'd15 )  ;
assign n737____DOLLAR__2543 =  ( n735____DOLLAR__2445 ) == ( 8'd14 )  ;
assign n738____DOLLAR__2536 =  ( n735____DOLLAR__2445 ) == ( 8'd13 )  ;
assign n739____DOLLAR__2529 =  ( n735____DOLLAR__2445 ) == ( 8'd12 )  ;
assign n740____DOLLAR__2522 =  ( n735____DOLLAR__2445 ) == ( 8'd11 )  ;
assign n741____DOLLAR__2515 =  ( n735____DOLLAR__2445 ) == ( 8'd10 )  ;
assign n742____DOLLAR__2508 =  ( n735____DOLLAR__2445 ) == ( 8'd9 )  ;
assign n743____DOLLAR__2501 =  ( n735____DOLLAR__2445 ) == ( 8'd8 )  ;
assign n744____DOLLAR__2494 =  ( n735____DOLLAR__2445 ) == ( 8'd7 )  ;
assign n745____DOLLAR__2487 =  ( n735____DOLLAR__2445 ) == ( 8'd6 )  ;
assign n746____DOLLAR__2480 =  ( n735____DOLLAR__2445 ) == ( 8'd5 )  ;
assign n747____DOLLAR__2473 =  ( n735____DOLLAR__2445 ) == ( 8'd4 )  ;
assign n748____DOLLAR__2466 =  ( n735____DOLLAR__2445 ) == ( 8'd3 )  ;
assign n749____DOLLAR__2459 =  ( n735____DOLLAR__2445 ) == ( 8'd2 )  ;
assign n750____DOLLAR__2452 =  ( n735____DOLLAR__2445 ) == ( 8'd1 )  ;
assign n751____DOLLAR__2454 =  ( n750____DOLLAR__2452 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n752____DOLLAR__2461 =  ( n749____DOLLAR__2459 ) ? ( 32'd997073096 ) : ( n751____DOLLAR__2454 ) ;
assign n753____DOLLAR__2468 =  ( n748____DOLLAR__2466 ) ? ( 32'd651767980 ) : ( n752____DOLLAR__2461 ) ;
assign n754____DOLLAR__2475 =  ( n747____DOLLAR__2473 ) ? ( 32'd1994146192 ) : ( n753____DOLLAR__2468 ) ;
assign n755____DOLLAR__2482 =  ( n746____DOLLAR__2480 ) ? ( 32'd1802195444 ) : ( n754____DOLLAR__2475 ) ;
assign n756____DOLLAR__2489 =  ( n745____DOLLAR__2487 ) ? ( 32'd1303535960 ) : ( n755____DOLLAR__2482 ) ;
assign n757____DOLLAR__2496 =  ( n744____DOLLAR__2494 ) ? ( 32'd1342533948 ) : ( n756____DOLLAR__2489 ) ;
assign n758____DOLLAR__2503 =  ( n743____DOLLAR__2501 ) ? ( 32'd-306674912 ) : ( n757____DOLLAR__2496 ) ;
assign n759____DOLLAR__2510 =  ( n742____DOLLAR__2508 ) ? ( 32'd-267414716 ) : ( n758____DOLLAR__2503 ) ;
assign n760____DOLLAR__2517 =  ( n741____DOLLAR__2515 ) ? ( 32'd-690576408 ) : ( n759____DOLLAR__2510 ) ;
assign n761____DOLLAR__2524 =  ( n740____DOLLAR__2522 ) ? ( 32'd-882789492 ) : ( n760____DOLLAR__2517 ) ;
assign n762____DOLLAR__2531 =  ( n739____DOLLAR__2529 ) ? ( 32'd-1687895376 ) : ( n761____DOLLAR__2524 ) ;
assign n763____DOLLAR__2538 =  ( n738____DOLLAR__2536 ) ? ( 32'd-2032938284 ) : ( n762____DOLLAR__2531 ) ;
assign n764____DOLLAR__2545 =  ( n737____DOLLAR__2543 ) ? ( 32'd-1609899400 ) : ( n763____DOLLAR__2538 ) ;
assign n765____DOLLAR__2552 =  ( n736____DOLLAR__2550 ) ? ( 32'd-1111625188 ) : ( n764____DOLLAR__2545 ) ;
assign n766____DOLLAR__2439 =  ( $signed( n731____DOLLAR__2434 ) >>> ( 32'd4 ))  ;
assign n767____DOLLAR__2553 =  ( n765____DOLLAR__2552 ) ^ ( n766____DOLLAR__2439 )  ;
assign n768____DOLLAR__2562 = n767____DOLLAR__2553[7:0] ;
assign n769____DOLLAR__2561 =  ( $signed( n733____DOLLAR__2435 ) >>> ( 8'd4 ))  ;
assign n770____DOLLAR__2564 =  ( n768____DOLLAR__2562 ) ^ ( n769____DOLLAR__2561 )  ;
assign n771____DOLLAR__2565 =  ( n770____DOLLAR__2564 ) & ( 8'd15 )  ;
assign n772____DOLLAR__2670 =  ( n771____DOLLAR__2565 ) == ( 8'd15 )  ;
assign n773____DOLLAR__2663 =  ( n771____DOLLAR__2565 ) == ( 8'd14 )  ;
assign n774____DOLLAR__2656 =  ( n771____DOLLAR__2565 ) == ( 8'd13 )  ;
assign n775____DOLLAR__2649 =  ( n771____DOLLAR__2565 ) == ( 8'd12 )  ;
assign n776____DOLLAR__2642 =  ( n771____DOLLAR__2565 ) == ( 8'd11 )  ;
assign n777____DOLLAR__2635 =  ( n771____DOLLAR__2565 ) == ( 8'd10 )  ;
assign n778____DOLLAR__2628 =  ( n771____DOLLAR__2565 ) == ( 8'd9 )  ;
assign n779____DOLLAR__2621 =  ( n771____DOLLAR__2565 ) == ( 8'd8 )  ;
assign n780____DOLLAR__2614 =  ( n771____DOLLAR__2565 ) == ( 8'd7 )  ;
assign n781____DOLLAR__2607 =  ( n771____DOLLAR__2565 ) == ( 8'd6 )  ;
assign n782____DOLLAR__2600 =  ( n771____DOLLAR__2565 ) == ( 8'd5 )  ;
assign n783____DOLLAR__2593 =  ( n771____DOLLAR__2565 ) == ( 8'd4 )  ;
assign n784____DOLLAR__2586 =  ( n771____DOLLAR__2565 ) == ( 8'd3 )  ;
assign n785____DOLLAR__2579 =  ( n771____DOLLAR__2565 ) == ( 8'd2 )  ;
assign n786____DOLLAR__2572 =  ( n771____DOLLAR__2565 ) == ( 8'd1 )  ;
assign n787____DOLLAR__2574 =  ( n786____DOLLAR__2572 ) ? ( 32'd498536548 ) : ( 32'd0 ) ;
assign n788____DOLLAR__2581 =  ( n785____DOLLAR__2579 ) ? ( 32'd997073096 ) : ( n787____DOLLAR__2574 ) ;
assign n789____DOLLAR__2588 =  ( n784____DOLLAR__2586 ) ? ( 32'd651767980 ) : ( n788____DOLLAR__2581 ) ;
assign n790____DOLLAR__2595 =  ( n783____DOLLAR__2593 ) ? ( 32'd1994146192 ) : ( n789____DOLLAR__2588 ) ;
assign n791____DOLLAR__2602 =  ( n782____DOLLAR__2600 ) ? ( 32'd1802195444 ) : ( n790____DOLLAR__2595 ) ;
assign n792____DOLLAR__2609 =  ( n781____DOLLAR__2607 ) ? ( 32'd1303535960 ) : ( n791____DOLLAR__2602 ) ;
assign n793____DOLLAR__2616 =  ( n780____DOLLAR__2614 ) ? ( 32'd1342533948 ) : ( n792____DOLLAR__2609 ) ;
assign n794____DOLLAR__2623 =  ( n779____DOLLAR__2621 ) ? ( 32'd-306674912 ) : ( n793____DOLLAR__2616 ) ;
assign n795____DOLLAR__2630 =  ( n778____DOLLAR__2628 ) ? ( 32'd-267414716 ) : ( n794____DOLLAR__2623 ) ;
assign n796____DOLLAR__2637 =  ( n777____DOLLAR__2635 ) ? ( 32'd-690576408 ) : ( n795____DOLLAR__2630 ) ;
assign n797____DOLLAR__2644 =  ( n776____DOLLAR__2642 ) ? ( 32'd-882789492 ) : ( n796____DOLLAR__2637 ) ;
assign n798____DOLLAR__2651 =  ( n775____DOLLAR__2649 ) ? ( 32'd-1687895376 ) : ( n797____DOLLAR__2644 ) ;
assign n799____DOLLAR__2658 =  ( n774____DOLLAR__2656 ) ? ( 32'd-2032938284 ) : ( n798____DOLLAR__2651 ) ;
assign n800____DOLLAR__2665 =  ( n773____DOLLAR__2663 ) ? ( 32'd-1609899400 ) : ( n799____DOLLAR__2658 ) ;
assign n801____DOLLAR__2672 =  ( n772____DOLLAR__2670 ) ? ( 32'd-1111625188 ) : ( n800____DOLLAR__2665 ) ;
assign n802____DOLLAR__2556 =  ( $signed( n767____DOLLAR__2553 ) >>> ( 32'd4 ))  ;
assign n803____DOLLAR__2673 =  ( n801____DOLLAR__2672 ) ^ ( n802____DOLLAR__2556 )  ;
assign n804____DOLLAR__2678 =  ( n227____DOLLAR__2676 ) ? ( n803____DOLLAR__2673 ) : ( CRC_IN ) ;
always @(posedge clk) begin
   if(rst) begin
       TXFIFO_FULL <= TXFIFO_FULL_randinit ;
       TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD_randinit ;
       TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR_randinit ;
       TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR_randinit ;
       TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT_randinit ;
       TX_STATE <= TX_STATE_randinit ;
       TX_STATE_ENCAP <= TX_STATE_ENCAP_randinit ;
       TX_B2B_CNTR <= TX_B2B_CNTR_randinit ;
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
       __COUNTER_start__n4 <= 0;
   end
   else if(__START__ && __ILA_TX_FUNC_valid__) begin
       if ( __ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__ ) begin 
           __COUNTER_start__n4 <= 1; end
       else if( (__COUNTER_start__n4 >= 1 ) && ( __COUNTER_start__n4 < 255 )) begin
           __COUNTER_start__n4 <= __COUNTER_start__n4 + 1; end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_FULL <= TXFIFO_FULL ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_WUSED_QWD <= n7____DOLLAR__519 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_BUFF_RD_PTR <= n12____DOLLAR__511 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TXFIFO_RD_OUTPUT <= n15____DOLLAR__496 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_STATE <= n17____DOLLAR__3184 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_STATE_ENCAP <= n19____DOLLAR__3191 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_B2B_CNTR <= n22____DOLLAR__3175 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_PACKET_BYTE_CNT <= TX_PACKET_BYTE_CNT ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_WCNT <= n23____DOLLAR__3194 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           XGMII_DOUT_REG <= n107____DOLLAR__3167 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           XGMII_COUT_REG <= n143____DOLLAR__2880 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_PKT_SENT <= TX_PKT_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_BYTE_SENT <= TX_BYTE_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           CRC <= n158____DOLLAR__2720 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           CRC_DAT_IN <= n226____DOLLAR__759 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           CRC_IN <= n804____DOLLAR__2678 ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_WCNT_INI <= TX_WCNT_INI ;
       end
       if (__ILA_TX_FUNC_decode_of_WR_PKT_PAYLOAD_10G__) begin
           TX_BUF <= TXFIFO_RD_OUTPUT ;
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
		FIFO_OV_IPEND, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, m1__DOT__core__DOT__txfifo_wr_en, m1__DOT__mode_10G, m1__DOT__mode_1G, m1__DOT__mode_2p5G, m1__DOT__mode_5G, m1__DOT__tx_mac_full, m1__DOT__tx_mac_usedw, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__TCORE_MODE, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__SYS_ADDR, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt, m1__DOT__core__DOT__tx_b2b_dly, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_);
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
 output  m1__DOT__core__DOT__txfifo_wr_en;
 output  m1__DOT__mode_10G;
 output  m1__DOT__mode_1G;
 output  m1__DOT__mode_2p5G;
 output  m1__DOT__mode_5G;
 output  m1__DOT__tx_mac_full;
 output [12:0] m1__DOT__tx_mac_usedw;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output  m1__DOT__TCORE_MODE;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [3:0] m1__DOT__SYS_ADDR;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
 output [1:0] m1__DOT__core__DOT__tx_b2b_dly;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
	
input		clk;			   	// 156.25 Mhz
input		xA_clk; 		    // 156.25 Mhz
input		reset_;

(* keep *)input		mode_10G; 			//i-1, speed modes;
(* keep *)input		mode_5G;   			//i-1, ;
(* keep *)input		mode_2p5G;			//i-1, ;
(* keep *)input		mode_1G;   			//i-1, ;

(* keep *)input		TCORE_MODE;
		
// Interface to TX PATH
input			tx_mac_wr;
input [63:0]	tx_mac_data;
(* keep *)output			tx_mac_full;
(* keep *)output [12:0]	tx_mac_usedw;
		
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
(* keep *)input	[3:0]	SYS_ADDR;
		
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


 ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr) ,.m1__DOT__core__DOT__txfifo_wr_en(m1__DOT__core__DOT__txfifo_wr_en) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt) ,.m1__DOT__core__DOT__tx_b2b_dly(m1__DOT__core__DOT__tx_b2b_dly) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_));


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
    
 assign m1__DOT__tx_mac_usedw = tx_mac_usedw;
 assign m1__DOT__tx_mac_full = tx_mac_full;
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
			output reg	[PTR  : 0]		wrusedw,      // number of slots currently in use for writing                                                                                                
                                                    
			
			//=== Signals for READ

            input  wire 				rdclk,        // Clk for reading data    
			input  wire 				rden,         // Request to read from FIFO 
(* keep *)			output reg [WIDTH-1 : 0]	dataout,      // Data coming out 
			output wire 				rdfull,       // 1-FIFO IS FULL (DATA AVAILABLE FOR READ is == DEPTH)
			output reg 					rdempty,      // indicates fifo is empty or not (to avoid underflow)
			output reg [PTR  : 0] 		rdusedw,      // number of slots currently in use for reading

			output 	 		dbg, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, output wire [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, output wire [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, output wire [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_);



//=== INTERNAL SIGNALS
reg	[PTR  : 0]		wrusedw_i;	//async version
reg	[PTR  : 0]		rdusedw_i;	//async version

(* keep *) reg [PTR : 0 ] wr_ptr, rd_ptr;
reg [PTR : 0 ] rd_ptr_d , wr_ptr_d  ;		
reg [PTR : 0 ] rd_ptr_d1, wr_ptr_d1 ;

reg [PTR : 0] ptr_diff;

reg [PTR : 0 ] wr_cnt, rd_cnt;

// MEMORY FOR FIFO USING REG
(* keep *) reg [WIDTH-1 : 0] mem[DEPTH-1:0] ;

assign	dbg	=	1'b0;

// MEMORY FOR FIFO USING REG
always @(wr_ptr,rd_ptr,wrusedw,rdusedw,wren,rden,reset_)
	begin
	
		//need to rise quickly to avoid false writing
		//wrusedw is sync to wrclk
		wrfull =    !reset_ ? 1'b0 : // for full 1 for empty 0
			(wrusedw >= DEPTH) 
			;
		wrempty =    !reset_ ? 1'b1 : // for full 1 for empty 0
			(wrusedw <= 0) 
			;
					
			//dependednt on wrusedw to avoid false reading
		rdusedw_i = 
			!reset_ ? 0 :
			!wrfull ?  wrusedw : DEPTH ;			
			
		rdempty =   !reset_ ? 1'b1 : // for full 0 for empty 1
			(rdusedw <= 0) 
			;
						
	end

always @(wr_ptr, rd_ptr)
begin
	
	ptr_diff = wr_ptr > rd_ptr ? wr_ptr - rd_ptr:
		   wr_ptr < rd_ptr ? rd_ptr - wr_ptr:
		   wr_ptr == rd_ptr ? 0 :
		   ptr_diff;
	
	// may add quickly on wr
	// may sub slowly on rd		   
	wrusedw_i =	
			!reset_ ? 0 :
			wren & rden ? (wrusedw == 0 ? 1'b1 : wrusedw) :  
			wr_ptr < rd_ptr ? DEPTH - ptr_diff :
		    wr_ptr > rd_ptr ? ptr_diff :
		    wr_ptr == rd_ptr ? (
		    	(wr_ptr_d > wr_ptr) & ( wrusedw==3)  ? DEPTH  : 			    	
		    	(wr_ptr_d < rd_ptr) & ( rd_ptr_d < rd_ptr)  ? 4'h0  : 
		    	(rd_ptr_d < wr_ptr) | (rd_ptr_d1 < wr_ptr)  ? 4'b0  :
		    	(rd_ptr_d > wr_ptr) 						? 4'b0  : 	
		    	(wr_ptr_d < rd_ptr) | ( wr_ptr_d1 < rd_ptr) ? DEPTH  : 	
		    	wrusedw)  :
		    wrusedw_i ;
end	

assign rdfull  = wrfull ? 1'b1 : 1'b0;                     

//=== WRITE INTO FIFO
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
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout = dataout;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_ = mem[3];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_ = mem[4];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_ = mem[5];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_ = mem[6];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_ = mem[7];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_ = mem[8];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_ = mem[9];
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr = rd_ptr;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr = wr_ptr;
 assign m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_ = mem[2];
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


module br_sfifo4x32

(
			 aclr,

			wrclk,     	   //i,Clk for writing data 
			wrreq,     	   //i, request to write 
			data,          //i, Data coming in           
			wrfull,    	   //o,indicates fifo is full or not (To avoid overiding)
                       
		    rdclk,     	   //i, Clk for reading data
			rdreq,     	   //i, Request to read from FIFO
			q, 	    	  //o, Data coming out
			rdempty,  	   //o, indicates fifo is empty or not (to avoid underflow)
			rdusedw    	   //o, number of slots currently in use for reading

);	  //setting default values
	parameter WIDTH = 32,
			  DEPTH = 4,
			  PTR	= 2;
			  
			  
			input wire aclr;

			input  wire 				wrclk;   	// Clk for writing data
			input  wire 				wrreq;   	// request to write
			input  wire [WIDTH-1 : 0]	data;    	// Data coming in 
			output wire					wrfull;  	// indicates fifo is full or not (To avoid overiding)
		                                         
		    input  wire 				rdclk;   	// Clk for reading data
			input  wire 				rdreq;   	// Request to read from FIFO 
			output wire [WIDTH-1 : 0]	q; 	    	// Data coming out
			output wire 				rdempty; 	// indicates fifo is empty or not (to avoid underflow)
			output wire [PTR  : 0] 		rdusedw; 	// number of slots currently in use for reading



			asynch_fifo	#(.WIDTH (WIDTH),		 
					  	  .DEPTH (DEPTH),
					 	  .PTR	 (PTR) )		 
 											
asynch_br4x32		  (
			.reset_	(~aclr),
			
			.wrclk	(wrclk),		//i, Clk to write data
			.wren	(wrreq),		//i, write enable
			.datain	(data),			//i, write data
			.wrfull	(wrfull),		//o, indicates fifo is full or not (To avoid overiding)
			.wrempty(),			
			.wrusedw(),			


			.rdclk	(rdclk),		 // i-1, Clk to read data
			.rden	(rdreq),		 // i-1, read enable of data FIFO
			.dataout(q),			 // Dataout of data FIFO
			.rdfull	(),			
			.rdempty(rdempty),		 // indicates fifo is empty or not (to avoid underflow)
			.rdusedw(rdusedw),		 // rdusedw -number of locations filled in fifo (not used )

			.dbg()

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
`timescale 1ns/1ps
// synopsys translate_on


module bsh32_dn_88 (
	shft,	//i,
	din,	//i,
	dout	//o,
);

   input  [1:0]                  shft; 
   input  [87:0]                 din; 
   output [87:0]                 dout; 

   wire [87:0]                   shft_data_s0;
   wire [87:0]                   shft_data_s1;

 assign shft_data_s0[88-1:0] = shft[0] ? (din >> 32) : din[88-1:0];
 assign shft_data_s1[88-1:0] = shft[1] ? (shft_data_s0 >> 64) : shft_data_s0;

//signal remap
 assign dout[88-1:0] = shft_data_s1; 

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
`timescale 1ns/1ps
// synopsys translate_on


module bsh8_dn_64 (
	shft,		//i
	din,		//i
	dout		//o
);

   input  [2:0]                  shft; 
   input  [63:0]                 din; 
   output [63:0]                 dout; 

   wire [63:0]                   shft_data_s0;

 assign shft_data_s0 = (din >> {shft,3'd0});

//signal remap
 assign dout = shft_data_s0; 

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

module tcore_byte_reordering (
	clk250	,			 //i-1 156.25Mhz
	x_clk,
	reset_,
	fmac_rxd_en	,		//i-1, 
	
	xaui_mode,			//i-1
	
	data_in,		   //i-64
	ctrl_in,		   //i-8
	data_out,		  //o-64
	ctrl_out,		   //o-8
	br_sof4,		   //o-1, special case of SOF & EOF at same time, may contain data
	
	RAW_FRAME_CNT,		   //o-32, 
	BAD_FRAMESOF_CNT,	  //o-32, 
	init_done,			   //i-1
	linkup,					//o-1
	rx_auto_clr_en			
	
	);

input clk250;			  //i, clock 156.25MHz
input x_clk;			  //i, clock 156.25Mhz
input reset_;			  //i, 
input fmac_rxd_en;		  //i-1, 

input xaui_mode;		  //i-1, 

input 	[63:0]	data_in;	  //i-64, data input
input 	[07:0]	ctrl_in;	  //i-8, control input
output	[63:0]	data_out;	  //o-64, output data
output	[07:0]	ctrl_out;	  //o-8, control output
output			br_sof4;	  //o-1, special case of SOF & EOF at same time, may contain data

output	[31:0]	RAW_FRAME_CNT ;		//o-32, 
output	[31:0]	BAD_FRAMESOF_CNT ;	//o-32, 
input	init_done;					//i-1
output	linkup;						//o-1

input	rx_auto_clr_en;
reg		unknown_sof_sticky ;

parameter [2:0]
	LINK_FAIL = 3'h1,
	LINK_RCVR = 3'h2,
	LINK_GOOD = 3'h4;
reg [2:0] state;

reg [4:0] link_cnt;

reg		[63:0]	data_out ;
reg		[63:0]	data_in_dly ;
reg		[07:0]	ctrl_in_dly ;
reg		[07:0]	ctrl_out ;
reg				br_sof4 ;
reg				sof4_cycle ;			   //indicate data is shifted by 4.

reg				shift;			 // indicates data needs to be shifted according to the SOF
reg				eof0 ;			 // End of frame occurring in 0-3 Bytes of incoming data
reg				eof1 ;			 // End of frame occurring in 4-7 Bytes of incoming data
reg				linkup;
reg				link_bad;
reg				link_ok;
wire			link_fault;
assign			link_fault = !init_done || (data_in_dly[39:32] == 8'h9C && ctrl_in_dly[4] == 1'b1) || 
										   (data_in_dly[7:0]   == 8'h9C && ctrl_in_dly[0] == 1'b1);
										   

wire 	seq0 ;					// detects error
assign 	seq0 = (data_in[7:0] == 8'h9C && ctrl_in[0] == 1'b1) ;
wire	seq1 ;					//detects error
assign	seq1 = (data_in[39:32] == 8'h9C && ctrl_in[4] == 1'b1) ;
										   
reg		sof0;			 // Indicate the incoming data has start of frame on 0th byte
reg		sof1;			 // Indicate the incoming data has start of frame on 1st byte
reg		sof2;			 // Indicate the incoming data has start of frame on 2nd byte
reg		sof3;			 // Indicate the incoming data has start of frame on 3rd byte
reg		sof4;			 // Indicate the incoming data has start of frame on 4th byte
reg		sof5;			  // Indicate the incoming data has start of frame on 5th byte
reg		sof6;			 // Indicate the incoming data has start of frame on 6th byte
reg		sof7;			 // Indicate the incoming data has start of frame on 7th byte
reg		has_sof;		 // Indicates the incoming data has a valid sof
reg		frame_done;		 // transmission of frame is done
reg		fmac_rxd_en156 ;

reg		any_sof ;			// having invalid and valid both sof's
reg		any_eof ;			// indicates the incoming data has any eof. 
wire	eof	;
assign	eof	= eof0 | eof1 ;

reg		bad_frame ;			 
reg		bad_frame_noeof ;	 // frames without eof

reg		[31:0]	raw_sof_cnt156 ;	  //counter to store the value 
reg		[31:0]	raw_eof_cnt156 ;
reg		[31:0]	raw_frame_cnt156 ;
reg		[31:0]	RAW_FRAME_CNT ;		

reg		[31:0]	BAD_FRAMESOF_CNT ;	
reg		[31:0]	bad_framesof_cnt156 ;		

wire	rf_sfifo_full ;
wire	rf_sfifo_empty ;
wire	[31:0]	rf_sfifo_dout ;

wire	bfsof_sfifo_full ;
wire	bfsof_sfifo_empty ;
wire	[31:0]	bfsof_sfifo_dout ;


always @ (posedge x_clk)
begin
		data_in_dly	<=	data_in ;
		
		ctrl_in_dly[3:0] <= seq0? 4'hf : ctrl_in[3:0] ; 
		ctrl_in_dly[7:4] <= seq1? 4'hf : ctrl_in[7:4] ;	  
		
		fmac_rxd_en156	<= fmac_rxd_en ;
end

always @ (posedge x_clk)
begin
	if (!reset_)
	begin
		shift		<=	1'b0;
		eof0      	<=	1'b0;
		eof1		<=	1'b0;
		linkup		<=	1'b0;
		link_bad	<=	1'b0;
		link_ok		<=	1'b0;
		
		sof0		<=  1'b0;
		sof1		<=  1'b0;
		sof2		<=  1'b0;
		sof3		<=  1'b0;
		sof4		<=	1'b0;
		sof5		<=	1'b0;
		sof6		<=	1'b0;
		sof7		<=	1'b0;
		
		br_sof4		<=	1'b0;
		sof4_cycle	<=	1'b0;
		
		has_sof		<=	1'b0;
		frame_done	<=	1'b0;
		
		bad_framesof_cnt156	<=	32'h0;
		raw_frame_cnt156	<=	32'h0;
		raw_sof_cnt156		<=	32'h0;
		raw_eof_cnt156		<=	32'h0;
		
	end
	
	else
	begin						
		sof4_cycle	<=	
			sof4 ? 1'b1 :
			eof  ? 1'b0 :
			sof4_cycle ;
		
		// if FB is not on the 0th Byte, then shift the incoming data. 
		shift		<= 	(
				(data_in[39:32]==8'hFB) && (ctrl_in[4] == 1'b1))? 1'b1 :     
				( ( ((eof0 ||eof1) & !sof4) || (sof0 & !sof4) )? 1'b0 : 	 
				  shift
				);
		// detects the position of eof in lower half of incoming data
		eof0      	<=  (ctrl_in[0] && (data_in[7:0] == 8'hFD)) || (ctrl_in[1] && (data_in[15:8] == 8'hFD)) || 
						(ctrl_in[2] && (data_in[23:16] == 8'hFD)) || (ctrl_in[3] && (data_in[31:24] == 8'hFD));
		 // detects the position of eof in upper half of incoming data
		eof1      	<=  (ctrl_in[4] && (data_in[39:32] == 8'hFD)) || (ctrl_in[5] && (data_in[47:40] == 8'hFD)) || 
						(ctrl_in[6] && (data_in[55:48] == 8'hFD)) || (ctrl_in[7] && (data_in[63:56] == 8'hFD));	
						
		linkup		<=	state[2];
		link_bad	<=	link_fault;
		link_ok		<=	(link_cnt == 5'd0);
	  //start of frame (FB) can occur on lane 0 or 4
		sof0		<=  (data_in[7:0]==8'hFB) & ctrl_in[0];
	  
		sof4		<=	(data_in[39:32]==8'hFB) & ctrl_in[4];
		
		br_sof4	<= sof4 ;
		
		// invalid sof's
		sof1		<=  (data_in[15:8]==8'hFB)  & ctrl_in[1];
		sof2		<=  (data_in[23:16]==8'hFB) & ctrl_in[2];
		sof3		<=  (data_in[31:24]==8'hFB) & ctrl_in[3];
		
		sof5		<=  (data_in[47:40]==8'hFB) & ctrl_in[5];
		sof6		<=  (data_in[55:48]==8'hFB) & ctrl_in[6];
		sof7		<=  (data_in[63:56]==8'hFB) & ctrl_in[7];
		
	// registers to keep track of different types of frame. 	
		has_sof		<=	  (sof0 | sof4) ? 1'b1: 
						( (eof0 | eof1) ? 1'b0 :
						has_sof );		
						
		frame_done	<=
						frame_done ? 1'b0 :	
						(eof0 | eof1) & has_sof ? 1'b1 : 	
						1'b0 ;
	
		bad_framesof_cnt156	<=	
			!fmac_rxd_en156 ? 32'h0 :		
			(bad_frame | bad_frame_noeof) ? bad_framesof_cnt156 + 8'd1 :
			bad_framesof_cnt156;
			
		raw_frame_cnt156	<=	
			!fmac_rxd_en156 ? 32'h0 :		
			frame_done ? raw_frame_cnt156 + 8'd1 :
			raw_frame_cnt156;
			
		raw_sof_cnt156	<=	
			!fmac_rxd_en156 ? 32'h0 :		
			any_sof ? raw_sof_cnt156 + 8'd1 :
			raw_sof_cnt156;
			
		raw_eof_cnt156	<=	
			!fmac_rxd_en156 ? 32'h0 :		
			any_eof ? raw_eof_cnt156 + 8'd1 :
			raw_eof_cnt156;
			
		
	end
end

always @(posedge x_clk)
begin
	if (!reset_)
		begin
			data_out		<= 64'h0707070707070707;
			ctrl_out		<= 8'hff;
		end
	
	else
		begin
		
			data_out	<= 
					//GIGE mode data come out directly
				!xaui_mode ? data_in :
				//1st shift qwd is special due to EOF & SOF4 at same time
				(sof4_cycle & eof0 )? {32'h07070707, 32'h07070707} :		  //SOF4-SOF4 cycles , eof in 1st half
				(shift & sof4)? {32'h07070707, data_in_dly[31:0]} : 		  	//previously NOT SOF4 cycle
				(shift & eof0)? {32'h07070707, 32'h07070707} : 		
				(shift & eof1)? {32'h07070707, data_in_dly[63:32]} : 
				//shift during data time
				(shift )? {data_in[31:0], data_in_dly[63:32]} : 
				data_in_dly ;	
				
			ctrl_out[3:0]	<= 
				 //GIGE support
				!xaui_mode ? ctrl_in[3:0] :
				//1st shift qwd is special due to EOF & SOF4 at same time
				(sof4_cycle & eof0)? {4'hf} : 		
				(shift & sof4)? { ctrl_in_dly[3:0]} : 
			   //shift during ending time (if more SOF4 coming, it must have priority above)
				(shift & eof0)? {4'hf} : 		
				(shift & eof1)? {ctrl_in_dly[7:4]} : 
				(shift & !sof4 )? ctrl_in_dly[7:4] : 
				ctrl_in_dly[3:0] ;
			
			ctrl_out[7:4]	<= 
				 //GIGE support
				!xaui_mode ? ctrl_in[7:4] :
				(sof4_cycle & eof0)? {4'hf } : 
				(shift & sof4)     ? {4'hf } : 
				//shift during ending time (if more SOF4 coming, it must have priority above)
				(shift & eof0)? {4'hf} : 	
				(shift & eof1)? {4'hf} : 
				//shift but first sequence (error case)
				(shift & seq0)? 4'hf : 
				(shift )? ctrl_in[3:0] : 
				 //norm, keep as info come in
				ctrl_in_dly[7:4]  ;
		end
end

// LINKUP DETECTION FSM

always @ (posedge x_clk)
begin
	if (!reset_)
	begin
		state <= LINK_FAIL;
		link_cnt <= 5'd25;
	end
	
	else
	begin
		case (state)
		LINK_FAIL:
			begin
				state <= link_bad? LINK_FAIL : LINK_RCVR;
				link_cnt <= 5'd25;
			end
			
		LINK_RCVR:
			begin
				state <= link_bad? LINK_FAIL : (link_ok? LINK_GOOD : LINK_RCVR);
				link_cnt <= link_cnt - 5'd1;
			end
			
		LINK_GOOD:
			begin
				state <= link_bad? LINK_FAIL : LINK_GOOD;
				link_cnt <= 5'd25;
			end
			
		default: 
			state <= LINK_FAIL;
		endcase		
	end
end


br_sfifo4x32	rf_sfifo (				 //raw frame fifo
	.aclr	(!reset_ | !fmac_rxd_en156), //i-1
	.wrclk	(x_clk),					 //i-1, clk156
	.data	(raw_frame_cnt156 ),		 //i-32
	.wrreq	(!rf_sfifo_full),			 //i-1
	.rdclk	(clk250),					 //i-1
	.rdreq	(!rf_sfifo_empty),			 //i-1
	.q			(rf_sfifo_dout ),		 //o-32, 
	.rdempty	(rf_sfifo_empty),		 //o-1
	.rdusedw	(),						 //o-2,
	.wrfull		(rf_sfifo_full)			 //o-1
	);
	

always @ (posedge clk250)
	if (!reset_ | !fmac_rxd_en )
		begin
		
		RAW_FRAME_CNT		<=	32'h0;
		
		end
	else
		begin
		
		RAW_FRAME_CNT		<=	rx_auto_clr_en ? 32'h0 : rf_sfifo_dout ;
		
		end
	


br_sfifo4x32	bfsof_sfifo (			  	//bad frameSOF fifo
	.aclr	(!reset_ | !fmac_rxd_en156),	//i-1
	.wrclk	(x_clk),						//i-1, clk156
	.data	({unknown_sof_sticky, bad_framesof_cnt156[30:0]} ),		 //i-32
	.wrreq	(!bfsof_sfifo_full),		   //i-1
	.rdclk	(clk250),						//i-1
	.rdreq	(!bfsof_sfifo_empty),		   //i-1
	.q			(bfsof_sfifo_dout ),	   //o-32,
	.rdempty	(bfsof_sfifo_empty),	   //o-1
	.rdusedw	(),						   //o-2,
	.wrfull		(bfsof_sfifo_full)		   //o-1
	);
	

always @ (posedge clk250)
	if (!reset_ | !fmac_rxd_en )
		begin
		
		BAD_FRAMESOF_CNT		<=	32'h0;
		
		end
	else
		begin

		BAD_FRAMESOF_CNT		<=	rx_auto_clr_en ? 32'h0 : bfsof_sfifo_dout ;
		
		end




always @ (posedge x_clk)
begin
	if (!reset_)
		begin
		bad_frame	<= 1'b0 ;			   //EOF but no SOF
		bad_frame_noeof	<= 1'b0 ;		   //frame has no EOF
		
		unknown_sof_sticky	<= 1'b0 ;
		any_sof	<= 1'b0 ;
		any_eof	<= 1'b0 ;
		
		end
	else
		begin
		
		bad_frame	<= 
			(eof0 | eof1) & !has_sof
			;
			
		bad_frame_noeof	<= 
			(sof0 | sof1 | sof2 | sof3 |
			 sof4 | sof5 | sof6 | sof7 ) & has_sof
			;
			
		unknown_sof_sticky	<=
			(sof1 | sof2 | sof3 |
			 sof5 | sof6 | sof7 ) ? 1'b1 :
			 unknown_sof_sticky;
			 
		any_sof		<=
			(sof0 | sof1 | sof2 | sof3 |
			 sof4 | sof5 | sof6 | sof7 ) 
			;
		
		any_eof		<=
			eof0 | eof1
			;
			 
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
`timescale 1ns/1ps
// synopsys translate_on


module crc32_d16s(
 input      [15:0] data,
 input      [31:0] seed,
 output     [31:0] crc
);

 //registers decalarations
 reg [31:0] data_p0; 
 reg [31:0] seed_p0; 

 //remap signal
 assign crc = data_p0 ^ seed_p0;


 always @(*) begin
  data_p0[0] = data[0] ^ data[6] ^ data[9] ^ data[10] ^ data[12];
 end 


 always @(*) begin
  data_p0[1] = data[0] ^ data[1] ^ data[6] ^ data[7] ^ data[9] ^ data[11] ^ data[12] ^ data[13];
 end 


 always @(*) begin
  data_p0[2] = data[0] ^ data[1] ^ data[2] ^ data[6] ^ data[7] ^ data[8] ^ data[9] ^ data[13] ^ data[14];
 end 


 always @(*) begin
  data_p0[3] = data[1] ^ data[2] ^ data[3] ^ data[7] ^ data[8] ^ data[9] ^ data[10] ^ data[14] ^ data[15];
 end 


 always @(*) begin
  data_p0[4] = data[0] ^ data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[8] ^ data[11] ^ data[12] ^ data[15];
 end 


 always @(*) begin
  data_p0[5] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[5] ^ data[6] ^ data[7] ^ data[10] ^ data[13];
 end 


 always @(*) begin
  data_p0[6] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[7] ^ data[8] ^ data[11] ^ data[14];
 end 


 always @(*) begin
  data_p0[7] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[7] ^ data[8] ^ data[10] ^ data[15];
 end 


 always @(*) begin
  data_p0[8] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[8] ^ data[10] ^ data[11] ^ data[12];
 end 


 always @(*) begin
  data_p0[9] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[9] ^ data[11] ^ data[12] ^ data[13];
 end 


 always @(*) begin
  data_p0[10] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[9] ^ data[13] ^ data[14];
 end 


 always @(*) begin
  data_p0[11] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[9] ^ data[12] ^ data[14] ^ data[15];
 end 


 always @(*) begin
  data_p0[12] = data[0] ^ data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[9] ^ data[12] ^ data[13] ^ data[15];
 end 


 always @(*) begin
  data_p0[13] = data[1] ^ data[2] ^ data[3] ^ data[5] ^ data[6] ^ data[7] ^ data[10] ^ data[13] ^ data[14];
 end 


 always @(*) begin
  data_p0[14] = data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[7] ^ data[8] ^ data[11] ^ data[14] ^ data[15];
 end 


 always @(*) begin
  data_p0[15] = data[3] ^ data[4] ^ data[5] ^ data[7] ^ data[8] ^ data[9] ^ data[12] ^ data[15];
 end 


 always @(*) begin
  data_p0[16] = data[0] ^ data[4] ^ data[5] ^ data[8] ^ data[12] ^ data[13];
 end 


 always @(*) begin
  data_p0[17] = data[1] ^ data[5] ^ data[6] ^ data[9] ^ data[13] ^ data[14];
 end 


 always @(*) begin
  data_p0[18] = data[2] ^ data[6] ^ data[7] ^ data[10] ^ data[14] ^ data[15];
 end 


 always @(*) begin
  data_p0[19] = data[3] ^ data[7] ^ data[8] ^ data[11] ^ data[15];
 end 


 always @(*) begin
  data_p0[20] = data[4] ^ data[8] ^ data[9] ^ data[12];
 end 


 always @(*) begin
  data_p0[21] = data[5] ^ data[9] ^ data[10] ^ data[13];
 end 


 always @(*) begin
  data_p0[22] = data[0] ^ data[9] ^ data[11] ^ data[12] ^ data[14];
 end 


 always @(*) begin
  data_p0[23] = data[0] ^ data[1] ^ data[6] ^ data[9] ^ data[13] ^ data[15];
 end 


 always @(*) begin
  data_p0[24] = data[1] ^ data[2] ^ data[7] ^ data[10] ^ data[14];
 end 


 always @(*) begin
  data_p0[25] = data[2] ^ data[3] ^ data[8] ^ data[11] ^ data[15];
 end 


 always @(*) begin
  data_p0[26] = data[0] ^ data[3] ^ data[4] ^ data[6] ^ data[10];
 end 


 always @(*) begin
  data_p0[27] = data[1] ^ data[4] ^ data[5] ^ data[7] ^ data[11];
 end 


 always @(*) begin
  data_p0[28] = data[2] ^ data[5] ^ data[6] ^ data[8] ^ data[12];
 end 


 always @(*) begin
  data_p0[29] = data[3] ^ data[6] ^ data[7] ^ data[9] ^ data[13];
 end 


 always @(*) begin
  data_p0[30] = data[4] ^ data[7] ^ data[8] ^ data[10] ^ data[14];
 end 


 always @(*) begin
  data_p0[31] = data[5] ^ data[8] ^ data[9] ^ data[11] ^ data[15];
 end 


 always @(*) begin
 seed_p0[0] = seed[16] ^ seed[22] ^ seed[25] ^ seed[26] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[1] = seed[16] ^ seed[17] ^ seed[22] ^ seed[23] ^ seed[25] ^ seed[27] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[2] = seed[16] ^ seed[17] ^ seed[18] ^ seed[22] ^ seed[23] ^ seed[24] ^ seed[25] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[3] = seed[17] ^ seed[18] ^ seed[19] ^ seed[23] ^ seed[24] ^ seed[25] ^ seed[26] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[4] = seed[16] ^ seed[18] ^ seed[19] ^ seed[20] ^ seed[22] ^ seed[24] ^ seed[27] ^ seed[28] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[5] = seed[16] ^ seed[17] ^ seed[19] ^ seed[20] ^ seed[21] ^ seed[22] ^ seed[23] ^ seed[26] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[6] = seed[17] ^ seed[18] ^ seed[20] ^ seed[21] ^ seed[22] ^ seed[23] ^ seed[24] ^ seed[27] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[7] = seed[16] ^ seed[18] ^ seed[19] ^ seed[21] ^ seed[23] ^ seed[24] ^ seed[26] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[8] = seed[16] ^ seed[17] ^ seed[19] ^ seed[20] ^ seed[24] ^ seed[26] ^ seed[27] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[9] = seed[17] ^ seed[18] ^ seed[20] ^ seed[21] ^ seed[25] ^ seed[27] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[10] = seed[16] ^ seed[18] ^ seed[19] ^ seed[21] ^ seed[25] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[11] = seed[16] ^ seed[17] ^ seed[19] ^ seed[20] ^ seed[25] ^ seed[28] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[12] = seed[16] ^ seed[17] ^ seed[18] ^ seed[20] ^ seed[21] ^ seed[22] ^ seed[25] ^ seed[28] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[13] = seed[17] ^ seed[18] ^ seed[19] ^ seed[21] ^ seed[22] ^ seed[23] ^ seed[26] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[14] = seed[18] ^ seed[19] ^ seed[20] ^ seed[22] ^ seed[23] ^ seed[24] ^ seed[27] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[15] = seed[19] ^ seed[20] ^ seed[21] ^ seed[23] ^ seed[24] ^ seed[25] ^ seed[28] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[16] = seed[0] ^ seed[16] ^ seed[20] ^ seed[21] ^ seed[24] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[17] = seed[1] ^ seed[17] ^ seed[21] ^ seed[22] ^ seed[25] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[18] = seed[2] ^ seed[18] ^ seed[22] ^ seed[23] ^ seed[26] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[19] = seed[3] ^ seed[19] ^ seed[23] ^ seed[24] ^ seed[27] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[20] = seed[4] ^ seed[20] ^ seed[24] ^ seed[25] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[21] = seed[5] ^ seed[21] ^ seed[25] ^ seed[26] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[22] = seed[6] ^ seed[16] ^ seed[25] ^ seed[27] ^ seed[28] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[23] = seed[7] ^ seed[16] ^ seed[17] ^ seed[22] ^ seed[25] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[24] = seed[8] ^ seed[17] ^ seed[18] ^ seed[23] ^ seed[26] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[25] = seed[9] ^ seed[18] ^ seed[19] ^ seed[24] ^ seed[27] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[26] = seed[10] ^ seed[16] ^ seed[19] ^ seed[20] ^ seed[22] ^ seed[26];
 end 


 always @(*) begin
 seed_p0[27] = seed[11] ^ seed[17] ^ seed[20] ^ seed[21] ^ seed[23] ^ seed[27];
 end 


 always @(*) begin
 seed_p0[28] = seed[12] ^ seed[18] ^ seed[21] ^ seed[22] ^ seed[24] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[29] = seed[13] ^ seed[19] ^ seed[22] ^ seed[23] ^ seed[25] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[30] = seed[14] ^ seed[20] ^ seed[23] ^ seed[24] ^ seed[26] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[31] = seed[15] ^ seed[21] ^ seed[24] ^ seed[25] ^ seed[27] ^ seed[31];
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
`timescale 1ns/1ps
// synopsys translate_on


module crc32_d24s(
 input      [23:0] data,
 input      [31:0] seed,
 output     [31:0] crc
);

 //registers decalarations
 reg [31:0] data_p0; 
 reg [31:0] seed_p0; 

 //remap signal
 assign crc = data_p0 ^ seed_p0;


 always @(*) begin
  data_p0[0] = data[0] ^ data[6] ^ data[9] ^ data[10] ^ data[12] ^ data[16];
 end 


 always @(*) begin
  data_p0[1] = data[0] ^ data[1] ^ data[6] ^ data[7] ^ data[9] ^ data[11] ^ data[12] ^ data[13] ^ data[16] ^ data[17];
 end 


 always @(*) begin
  data_p0[2] = data[0] ^ data[1] ^ data[2] ^ data[6] ^ data[7] ^ data[8] ^ data[9] ^ data[13] ^ data[14] ^ data[16] ^ data[17] ^ data[18];
 end 


 always @(*) begin
  data_p0[3] = data[1] ^ data[2] ^ data[3] ^ data[7] ^ data[8] ^ data[9] ^ data[10] ^ data[14] ^ data[15] ^ data[17] ^ data[18] ^ data[19];
 end 


 always @(*) begin
  data_p0[4] = data[0] ^ data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[8] ^ data[11] ^ data[12] ^ data[15] ^ data[18] ^ data[19] ^ data[20];
 end 


 always @(*) begin
  data_p0[5] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[5] ^ data[6] ^ data[7] ^ data[10] ^ data[13] ^ data[19] ^ data[20] ^ data[21];
 end 


 always @(*) begin
  data_p0[6] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[7] ^ data[8] ^ data[11] ^ data[14] ^ data[20] ^ data[21] ^ data[22];
 end 


 always @(*) begin
  data_p0[7] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[7] ^ data[8] ^ data[10] ^ data[15] ^ data[16] ^ data[21] ^ data[22] ^ data[23];
 end 


 always @(*) begin
  data_p0[8] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[8] ^ data[10] ^ data[11] ^ data[12] ^ data[17] ^ data[22] ^ data[23];
 end 


 always @(*) begin
  data_p0[9] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[9] ^ data[11] ^ data[12] ^ data[13] ^ data[18] ^ data[23];
 end 


 always @(*) begin
  data_p0[10] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[9] ^ data[13] ^ data[14] ^ data[16] ^ data[19];
 end 


 always @(*) begin
  data_p0[11] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[9] ^ data[12] ^ data[14] ^ data[15] ^ data[16] ^ data[17] ^ data[20];
 end 


 always @(*) begin
  data_p0[12] = data[0] ^ data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[9] ^ data[12] ^ data[13] ^ data[15] ^ data[17] ^ data[18] ^ data[21];
 end 


 always @(*) begin
  data_p0[13] = data[1] ^ data[2] ^ data[3] ^ data[5] ^ data[6] ^ data[7] ^ data[10] ^ data[13] ^ data[14] ^ data[16] ^ data[18] ^ data[19] ^ data[22];
 end 


 always @(*) begin
  data_p0[14] = data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[7] ^ data[8] ^ data[11] ^ data[14] ^ data[15] ^ data[17] ^ data[19] ^ data[20] ^ data[23];
 end 


 always @(*) begin
  data_p0[15] = data[3] ^ data[4] ^ data[5] ^ data[7] ^ data[8] ^ data[9] ^ data[12] ^ data[15] ^ data[16] ^ data[18] ^ data[20] ^ data[21];
 end 


 always @(*) begin
  data_p0[16] = data[0] ^ data[4] ^ data[5] ^ data[8] ^ data[12] ^ data[13] ^ data[17] ^ data[19] ^ data[21] ^ data[22];
 end 


 always @(*) begin
  data_p0[17] = data[1] ^ data[5] ^ data[6] ^ data[9] ^ data[13] ^ data[14] ^ data[18] ^ data[20] ^ data[22] ^ data[23];
 end 


 always @(*) begin
  data_p0[18] = data[2] ^ data[6] ^ data[7] ^ data[10] ^ data[14] ^ data[15] ^ data[19] ^ data[21] ^ data[23];
 end 


 always @(*) begin
  data_p0[19] = data[3] ^ data[7] ^ data[8] ^ data[11] ^ data[15] ^ data[16] ^ data[20] ^ data[22];
 end 


 always @(*) begin
  data_p0[20] = data[4] ^ data[8] ^ data[9] ^ data[12] ^ data[16] ^ data[17] ^ data[21] ^ data[23];
 end 


 always @(*) begin
  data_p0[21] = data[5] ^ data[9] ^ data[10] ^ data[13] ^ data[17] ^ data[18] ^ data[22];
 end 


 always @(*) begin
  data_p0[22] = data[0] ^ data[9] ^ data[11] ^ data[12] ^ data[14] ^ data[16] ^ data[18] ^ data[19] ^ data[23];
 end 


 always @(*) begin
  data_p0[23] = data[0] ^ data[1] ^ data[6] ^ data[9] ^ data[13] ^ data[15] ^ data[16] ^ data[17] ^ data[19] ^ data[20];
 end 


 always @(*) begin
  data_p0[24] = data[1] ^ data[2] ^ data[7] ^ data[10] ^ data[14] ^ data[16] ^ data[17] ^ data[18] ^ data[20] ^ data[21];
 end 


 always @(*) begin
  data_p0[25] = data[2] ^ data[3] ^ data[8] ^ data[11] ^ data[15] ^ data[17] ^ data[18] ^ data[19] ^ data[21] ^ data[22];
 end 


 always @(*) begin
  data_p0[26] = data[0] ^ data[3] ^ data[4] ^ data[6] ^ data[10] ^ data[18] ^ data[19] ^ data[20] ^ data[22] ^ data[23];
 end 


 always @(*) begin
  data_p0[27] = data[1] ^ data[4] ^ data[5] ^ data[7] ^ data[11] ^ data[19] ^ data[20] ^ data[21] ^ data[23];
 end 


 always @(*) begin
  data_p0[28] = data[2] ^ data[5] ^ data[6] ^ data[8] ^ data[12] ^ data[20] ^ data[21] ^ data[22];
 end 


 always @(*) begin
  data_p0[29] = data[3] ^ data[6] ^ data[7] ^ data[9] ^ data[13] ^ data[21] ^ data[22] ^ data[23];
 end 


 always @(*) begin
  data_p0[30] = data[4] ^ data[7] ^ data[8] ^ data[10] ^ data[14] ^ data[22] ^ data[23];
 end 


 always @(*) begin
  data_p0[31] = data[5] ^ data[8] ^ data[9] ^ data[11] ^ data[15] ^ data[23];
 end 


 always @(*) begin
 seed_p0[0] = seed[8] ^ seed[14] ^ seed[17] ^ seed[18] ^ seed[20] ^ seed[24];
 end 


 always @(*) begin
 seed_p0[1] = seed[8] ^ seed[9] ^ seed[14] ^ seed[15] ^ seed[17] ^ seed[19] ^ seed[20] ^ seed[21] ^ seed[24] ^ seed[25];
 end 


 always @(*) begin
 seed_p0[2] = seed[8] ^ seed[9] ^ seed[10] ^ seed[14] ^ seed[15] ^ seed[16] ^ seed[17] ^ seed[21] ^ seed[22] ^ seed[24] ^ seed[25] ^ seed[26];
 end 


 always @(*) begin
 seed_p0[3] = seed[9] ^ seed[10] ^ seed[11] ^ seed[15] ^ seed[16] ^ seed[17] ^ seed[18] ^ seed[22] ^ seed[23] ^ seed[25] ^ seed[26] ^ seed[27];
 end 


 always @(*) begin
 seed_p0[4] = seed[8] ^ seed[10] ^ seed[11] ^ seed[12] ^ seed[14] ^ seed[16] ^ seed[19] ^ seed[20] ^ seed[23] ^ seed[26] ^ seed[27] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[5] = seed[8] ^ seed[9] ^ seed[11] ^ seed[12] ^ seed[13] ^ seed[14] ^ seed[15] ^ seed[18] ^ seed[21] ^ seed[27] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[6] = seed[9] ^ seed[10] ^ seed[12] ^ seed[13] ^ seed[14] ^ seed[15] ^ seed[16] ^ seed[19] ^ seed[22] ^ seed[28] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[7] = seed[8] ^ seed[10] ^ seed[11] ^ seed[13] ^ seed[15] ^ seed[16] ^ seed[18] ^ seed[23] ^ seed[24] ^ seed[29] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[8] = seed[8] ^ seed[9] ^ seed[11] ^ seed[12] ^ seed[16] ^ seed[18] ^ seed[19] ^ seed[20] ^ seed[25] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[9] = seed[9] ^ seed[10] ^ seed[12] ^ seed[13] ^ seed[17] ^ seed[19] ^ seed[20] ^ seed[21] ^ seed[26] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[10] = seed[8] ^ seed[10] ^ seed[11] ^ seed[13] ^ seed[17] ^ seed[21] ^ seed[22] ^ seed[24] ^ seed[27];
 end 


 always @(*) begin
 seed_p0[11] = seed[8] ^ seed[9] ^ seed[11] ^ seed[12] ^ seed[17] ^ seed[20] ^ seed[22] ^ seed[23] ^ seed[24] ^ seed[25] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[12] = seed[8] ^ seed[9] ^ seed[10] ^ seed[12] ^ seed[13] ^ seed[14] ^ seed[17] ^ seed[20] ^ seed[21] ^ seed[23] ^ seed[25] ^ seed[26] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[13] = seed[9] ^ seed[10] ^ seed[11] ^ seed[13] ^ seed[14] ^ seed[15] ^ seed[18] ^ seed[21] ^ seed[22] ^ seed[24] ^ seed[26] ^ seed[27] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[14] = seed[10] ^ seed[11] ^ seed[12] ^ seed[14] ^ seed[15] ^ seed[16] ^ seed[19] ^ seed[22] ^ seed[23] ^ seed[25] ^ seed[27] ^ seed[28] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[15] = seed[11] ^ seed[12] ^ seed[13] ^ seed[15] ^ seed[16] ^ seed[17] ^ seed[20] ^ seed[23] ^ seed[24] ^ seed[26] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[16] = seed[8] ^ seed[12] ^ seed[13] ^ seed[16] ^ seed[20] ^ seed[21] ^ seed[25] ^ seed[27] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[17] = seed[9] ^ seed[13] ^ seed[14] ^ seed[17] ^ seed[21] ^ seed[22] ^ seed[26] ^ seed[28] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[18] = seed[10] ^ seed[14] ^ seed[15] ^ seed[18] ^ seed[22] ^ seed[23] ^ seed[27] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[19] = seed[11] ^ seed[15] ^ seed[16] ^ seed[19] ^ seed[23] ^ seed[24] ^ seed[28] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[20] = seed[12] ^ seed[16] ^ seed[17] ^ seed[20] ^ seed[24] ^ seed[25] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[21] = seed[13] ^ seed[17] ^ seed[18] ^ seed[21] ^ seed[25] ^ seed[26] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[22] = seed[8] ^ seed[17] ^ seed[19] ^ seed[20] ^ seed[22] ^ seed[24] ^ seed[26] ^ seed[27] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[23] = seed[8] ^ seed[9] ^ seed[14] ^ seed[17] ^ seed[21] ^ seed[23] ^ seed[24] ^ seed[25] ^ seed[27] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[24] = seed[0] ^ seed[9] ^ seed[10] ^ seed[15] ^ seed[18] ^ seed[22] ^ seed[24] ^ seed[25] ^ seed[26] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[25] = seed[1] ^ seed[10] ^ seed[11] ^ seed[16] ^ seed[19] ^ seed[23] ^ seed[25] ^ seed[26] ^ seed[27] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[26] = seed[2] ^ seed[8] ^ seed[11] ^ seed[12] ^ seed[14] ^ seed[18] ^ seed[26] ^ seed[27] ^ seed[28] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[27] = seed[3] ^ seed[9] ^ seed[12] ^ seed[13] ^ seed[15] ^ seed[19] ^ seed[27] ^ seed[28] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[28] = seed[4] ^ seed[10] ^ seed[13] ^ seed[14] ^ seed[16] ^ seed[20] ^ seed[28] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[29] = seed[5] ^ seed[11] ^ seed[14] ^ seed[15] ^ seed[17] ^ seed[21] ^ seed[29] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[30] = seed[6] ^ seed[12] ^ seed[15] ^ seed[16] ^ seed[18] ^ seed[22] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[31] = seed[7] ^ seed[13] ^ seed[16] ^ seed[17] ^ seed[19] ^ seed[23] ^ seed[31];
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
`timescale 1ns/1ps
// synopsys translate_on


module crc32_d64(
 input      [63:0] data,
 output     [31:0] crc
);

 //registers decalarations
 reg [31:0] data_p0; 

 //remap signal
 assign crc = data_p0;


 always @(*) begin
  data_p0[0] = data[0] ^ data[6] ^ data[9] ^ data[10] ^ data[12] ^ data[16] ^ data[24] ^ data[25] ^ data[26] ^ data[28] ^ data[29] ^ data[30] ^ data[31] ^ data[32] ^ data[34] ^ data[37] ^ data[44] ^ data[45] ^ data[47] ^ data[48] ^ data[50] ^ data[53] ^ data[54] ^ data[55] ^ data[58] ^ data[60] ^ data[61] ^ data[63];
 end 


 always @(*) begin
  data_p0[1] = data[0] ^ data[1] ^ data[6] ^ data[7] ^ data[9] ^ data[11] ^ data[12] ^ data[13] ^ data[16] ^ data[17] ^ data[24] ^ data[27] ^ data[28] ^ data[33] ^ data[34] ^ data[35] ^ data[37] ^ data[38] ^ data[44] ^ data[46] ^ data[47] ^ data[49] ^ data[50] ^ data[51] ^ data[53] ^ data[56] ^ data[58] ^ data[59] ^ data[60] ^ data[62] ^ data[63];
 end 


 always @(*) begin
  data_p0[2] = data[0] ^ data[1] ^ data[2] ^ data[6] ^ data[7] ^ data[8] ^ data[9] ^ data[13] ^ data[14] ^ data[16] ^ data[17] ^ data[18] ^ data[24] ^ data[26] ^ data[30] ^ data[31] ^ data[32] ^ data[35] ^ data[36] ^ data[37] ^ data[38] ^ data[39] ^ data[44] ^ data[51] ^ data[52] ^ data[53] ^ data[55] ^ data[57] ^ data[58] ^ data[59];
 end 


 always @(*) begin
  data_p0[3] = data[1] ^ data[2] ^ data[3] ^ data[7] ^ data[8] ^ data[9] ^ data[10] ^ data[14] ^ data[15] ^ data[17] ^ data[18] ^ data[19] ^ data[25] ^ data[27] ^ data[31] ^ data[32] ^ data[33] ^ data[36] ^ data[37] ^ data[38] ^ data[39] ^ data[40] ^ data[45] ^ data[52] ^ data[53] ^ data[54] ^ data[56] ^ data[58] ^ data[59] ^ data[60];
 end 


 always @(*) begin
  data_p0[4] = data[0] ^ data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[8] ^ data[11] ^ data[12] ^ data[15] ^ data[18] ^ data[19] ^ data[20] ^ data[24] ^ data[25] ^ data[29] ^ data[30] ^ data[31] ^ data[33] ^ data[38] ^ data[39] ^ data[40] ^ data[41] ^ data[44] ^ data[45] ^ data[46] ^ data[47] ^ data[48] ^ data[50] ^ data[57] ^ data[58] ^ data[59] ^ data[63];
 end 


 always @(*) begin
  data_p0[5] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[5] ^ data[6] ^ data[7] ^ data[10] ^ data[13] ^ data[19] ^ data[20] ^ data[21] ^ data[24] ^ data[28] ^ data[29] ^ data[37] ^ data[39] ^ data[40] ^ data[41] ^ data[42] ^ data[44] ^ data[46] ^ data[49] ^ data[50] ^ data[51] ^ data[53] ^ data[54] ^ data[55] ^ data[59] ^ data[61] ^ data[63];
 end 


 always @(*) begin
  data_p0[6] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[7] ^ data[8] ^ data[11] ^ data[14] ^ data[20] ^ data[21] ^ data[22] ^ data[25] ^ data[29] ^ data[30] ^ data[38] ^ data[40] ^ data[41] ^ data[42] ^ data[43] ^ data[45] ^ data[47] ^ data[50] ^ data[51] ^ data[52] ^ data[54] ^ data[55] ^ data[56] ^ data[60] ^ data[62];
 end 


 always @(*) begin
  data_p0[7] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[7] ^ data[8] ^ data[10] ^ data[15] ^ data[16] ^ data[21] ^ data[22] ^ data[23] ^ data[24] ^ data[25] ^ data[28] ^ data[29] ^ data[32] ^ data[34] ^ data[37] ^ data[39] ^ data[41] ^ data[42] ^ data[43] ^ data[45] ^ data[46] ^ data[47] ^ data[50] ^ data[51] ^ data[52] ^ data[54] ^ data[56] ^ data[57] ^ data[58] ^ data[60];
 end 


 always @(*) begin
  data_p0[8] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[8] ^ data[10] ^ data[11] ^ data[12] ^ data[17] ^ data[22] ^ data[23] ^ data[28] ^ data[31] ^ data[32] ^ data[33] ^ data[34] ^ data[35] ^ data[37] ^ data[38] ^ data[40] ^ data[42] ^ data[43] ^ data[45] ^ data[46] ^ data[50] ^ data[51] ^ data[52] ^ data[54] ^ data[57] ^ data[59] ^ data[60] ^ data[63];
 end 


 always @(*) begin
  data_p0[9] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[9] ^ data[11] ^ data[12] ^ data[13] ^ data[18] ^ data[23] ^ data[24] ^ data[29] ^ data[32] ^ data[33] ^ data[34] ^ data[35] ^ data[36] ^ data[38] ^ data[39] ^ data[41] ^ data[43] ^ data[44] ^ data[46] ^ data[47] ^ data[51] ^ data[52] ^ data[53] ^ data[55] ^ data[58] ^ data[60] ^ data[61];
 end 


 always @(*) begin
  data_p0[10] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[9] ^ data[13] ^ data[14] ^ data[16] ^ data[19] ^ data[26] ^ data[28] ^ data[29] ^ data[31] ^ data[32] ^ data[33] ^ data[35] ^ data[36] ^ data[39] ^ data[40] ^ data[42] ^ data[50] ^ data[52] ^ data[55] ^ data[56] ^ data[58] ^ data[59] ^ data[60] ^ data[62] ^ data[63];
 end 


 always @(*) begin
  data_p0[11] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[9] ^ data[12] ^ data[14] ^ data[15] ^ data[16] ^ data[17] ^ data[20] ^ data[24] ^ data[25] ^ data[26] ^ data[27] ^ data[28] ^ data[31] ^ data[33] ^ data[36] ^ data[40] ^ data[41] ^ data[43] ^ data[44] ^ data[45] ^ data[47] ^ data[48] ^ data[50] ^ data[51] ^ data[54] ^ data[55] ^ data[56] ^ data[57] ^ data[58] ^ data[59];
 end 


 always @(*) begin
  data_p0[12] = data[0] ^ data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[9] ^ data[12] ^ data[13] ^ data[15] ^ data[17] ^ data[18] ^ data[21] ^ data[24] ^ data[27] ^ data[30] ^ data[31] ^ data[41] ^ data[42] ^ data[46] ^ data[47] ^ data[49] ^ data[50] ^ data[51] ^ data[52] ^ data[53] ^ data[54] ^ data[56] ^ data[57] ^ data[59] ^ data[61] ^ data[63];
 end 


 always @(*) begin
  data_p0[13] = data[1] ^ data[2] ^ data[3] ^ data[5] ^ data[6] ^ data[7] ^ data[10] ^ data[13] ^ data[14] ^ data[16] ^ data[18] ^ data[19] ^ data[22] ^ data[25] ^ data[28] ^ data[31] ^ data[32] ^ data[42] ^ data[43] ^ data[47] ^ data[48] ^ data[50] ^ data[51] ^ data[52] ^ data[53] ^ data[54] ^ data[55] ^ data[57] ^ data[58] ^ data[60] ^ data[62];
 end 


 always @(*) begin
  data_p0[14] = data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[7] ^ data[8] ^ data[11] ^ data[14] ^ data[15] ^ data[17] ^ data[19] ^ data[20] ^ data[23] ^ data[26] ^ data[29] ^ data[32] ^ data[33] ^ data[43] ^ data[44] ^ data[48] ^ data[49] ^ data[51] ^ data[52] ^ data[53] ^ data[54] ^ data[55] ^ data[56] ^ data[58] ^ data[59] ^ data[61] ^ data[63];
 end 


 always @(*) begin
  data_p0[15] = data[3] ^ data[4] ^ data[5] ^ data[7] ^ data[8] ^ data[9] ^ data[12] ^ data[15] ^ data[16] ^ data[18] ^ data[20] ^ data[21] ^ data[24] ^ data[27] ^ data[30] ^ data[33] ^ data[34] ^ data[44] ^ data[45] ^ data[49] ^ data[50] ^ data[52] ^ data[53] ^ data[54] ^ data[55] ^ data[56] ^ data[57] ^ data[59] ^ data[60] ^ data[62];
 end 


 always @(*) begin
  data_p0[16] = data[0] ^ data[4] ^ data[5] ^ data[8] ^ data[12] ^ data[13] ^ data[17] ^ data[19] ^ data[21] ^ data[22] ^ data[24] ^ data[26] ^ data[29] ^ data[30] ^ data[32] ^ data[35] ^ data[37] ^ data[44] ^ data[46] ^ data[47] ^ data[48] ^ data[51] ^ data[56] ^ data[57];
 end 


 always @(*) begin
  data_p0[17] = data[1] ^ data[5] ^ data[6] ^ data[9] ^ data[13] ^ data[14] ^ data[18] ^ data[20] ^ data[22] ^ data[23] ^ data[25] ^ data[27] ^ data[30] ^ data[31] ^ data[33] ^ data[36] ^ data[38] ^ data[45] ^ data[47] ^ data[48] ^ data[49] ^ data[52] ^ data[57] ^ data[58];
 end 


 always @(*) begin
  data_p0[18] = data[2] ^ data[6] ^ data[7] ^ data[10] ^ data[14] ^ data[15] ^ data[19] ^ data[21] ^ data[23] ^ data[24] ^ data[26] ^ data[28] ^ data[31] ^ data[32] ^ data[34] ^ data[37] ^ data[39] ^ data[46] ^ data[48] ^ data[49] ^ data[50] ^ data[53] ^ data[58] ^ data[59];
 end 


 always @(*) begin
  data_p0[19] = data[3] ^ data[7] ^ data[8] ^ data[11] ^ data[15] ^ data[16] ^ data[20] ^ data[22] ^ data[24] ^ data[25] ^ data[27] ^ data[29] ^ data[32] ^ data[33] ^ data[35] ^ data[38] ^ data[40] ^ data[47] ^ data[49] ^ data[50] ^ data[51] ^ data[54] ^ data[59] ^ data[60];
 end 


 always @(*) begin
  data_p0[20] = data[4] ^ data[8] ^ data[9] ^ data[12] ^ data[16] ^ data[17] ^ data[21] ^ data[23] ^ data[25] ^ data[26] ^ data[28] ^ data[30] ^ data[33] ^ data[34] ^ data[36] ^ data[39] ^ data[41] ^ data[48] ^ data[50] ^ data[51] ^ data[52] ^ data[55] ^ data[60] ^ data[61];
 end 


 always @(*) begin
  data_p0[21] = data[5] ^ data[9] ^ data[10] ^ data[13] ^ data[17] ^ data[18] ^ data[22] ^ data[24] ^ data[26] ^ data[27] ^ data[29] ^ data[31] ^ data[34] ^ data[35] ^ data[37] ^ data[40] ^ data[42] ^ data[49] ^ data[51] ^ data[52] ^ data[53] ^ data[56] ^ data[61] ^ data[62];
 end 


 always @(*) begin
  data_p0[22] = data[0] ^ data[9] ^ data[11] ^ data[12] ^ data[14] ^ data[16] ^ data[18] ^ data[19] ^ data[23] ^ data[24] ^ data[26] ^ data[27] ^ data[29] ^ data[31] ^ data[34] ^ data[35] ^ data[36] ^ data[37] ^ data[38] ^ data[41] ^ data[43] ^ data[44] ^ data[45] ^ data[47] ^ data[48] ^ data[52] ^ data[55] ^ data[57] ^ data[58] ^ data[60] ^ data[61] ^ data[62];
 end 


 always @(*) begin
  data_p0[23] = data[0] ^ data[1] ^ data[6] ^ data[9] ^ data[13] ^ data[15] ^ data[16] ^ data[17] ^ data[19] ^ data[20] ^ data[26] ^ data[27] ^ data[29] ^ data[31] ^ data[34] ^ data[35] ^ data[36] ^ data[38] ^ data[39] ^ data[42] ^ data[46] ^ data[47] ^ data[49] ^ data[50] ^ data[54] ^ data[55] ^ data[56] ^ data[59] ^ data[60] ^ data[62];
 end 


 always @(*) begin
  data_p0[24] = data[1] ^ data[2] ^ data[7] ^ data[10] ^ data[14] ^ data[16] ^ data[17] ^ data[18] ^ data[20] ^ data[21] ^ data[27] ^ data[28] ^ data[30] ^ data[32] ^ data[35] ^ data[36] ^ data[37] ^ data[39] ^ data[40] ^ data[43] ^ data[47] ^ data[48] ^ data[50] ^ data[51] ^ data[55] ^ data[56] ^ data[57] ^ data[60] ^ data[61] ^ data[63];
 end 


 always @(*) begin
  data_p0[25] = data[2] ^ data[3] ^ data[8] ^ data[11] ^ data[15] ^ data[17] ^ data[18] ^ data[19] ^ data[21] ^ data[22] ^ data[28] ^ data[29] ^ data[31] ^ data[33] ^ data[36] ^ data[37] ^ data[38] ^ data[40] ^ data[41] ^ data[44] ^ data[48] ^ data[49] ^ data[51] ^ data[52] ^ data[56] ^ data[57] ^ data[58] ^ data[61] ^ data[62];
 end 


 always @(*) begin
  data_p0[26] = data[0] ^ data[3] ^ data[4] ^ data[6] ^ data[10] ^ data[18] ^ data[19] ^ data[20] ^ data[22] ^ data[23] ^ data[24] ^ data[25] ^ data[26] ^ data[28] ^ data[31] ^ data[38] ^ data[39] ^ data[41] ^ data[42] ^ data[44] ^ data[47] ^ data[48] ^ data[49] ^ data[52] ^ data[54] ^ data[55] ^ data[57] ^ data[59] ^ data[60] ^ data[61] ^ data[62];
 end 


 always @(*) begin
  data_p0[27] = data[1] ^ data[4] ^ data[5] ^ data[7] ^ data[11] ^ data[19] ^ data[20] ^ data[21] ^ data[23] ^ data[24] ^ data[25] ^ data[26] ^ data[27] ^ data[29] ^ data[32] ^ data[39] ^ data[40] ^ data[42] ^ data[43] ^ data[45] ^ data[48] ^ data[49] ^ data[50] ^ data[53] ^ data[55] ^ data[56] ^ data[58] ^ data[60] ^ data[61] ^ data[62] ^ data[63];
 end 


 always @(*) begin
  data_p0[28] = data[2] ^ data[5] ^ data[6] ^ data[8] ^ data[12] ^ data[20] ^ data[21] ^ data[22] ^ data[24] ^ data[25] ^ data[26] ^ data[27] ^ data[28] ^ data[30] ^ data[33] ^ data[40] ^ data[41] ^ data[43] ^ data[44] ^ data[46] ^ data[49] ^ data[50] ^ data[51] ^ data[54] ^ data[56] ^ data[57] ^ data[59] ^ data[61] ^ data[62] ^ data[63];
 end 


 always @(*) begin
  data_p0[29] = data[3] ^ data[6] ^ data[7] ^ data[9] ^ data[13] ^ data[21] ^ data[22] ^ data[23] ^ data[25] ^ data[26] ^ data[27] ^ data[28] ^ data[29] ^ data[31] ^ data[34] ^ data[41] ^ data[42] ^ data[44] ^ data[45] ^ data[47] ^ data[50] ^ data[51] ^ data[52] ^ data[55] ^ data[57] ^ data[58] ^ data[60] ^ data[62] ^ data[63];
 end 


 always @(*) begin
  data_p0[30] = data[4] ^ data[7] ^ data[8] ^ data[10] ^ data[14] ^ data[22] ^ data[23] ^ data[24] ^ data[26] ^ data[27] ^ data[28] ^ data[29] ^ data[30] ^ data[32] ^ data[35] ^ data[42] ^ data[43] ^ data[45] ^ data[46] ^ data[48] ^ data[51] ^ data[52] ^ data[53] ^ data[56] ^ data[58] ^ data[59] ^ data[61] ^ data[63];
 end 


 always @(*) begin
  data_p0[31] = data[5] ^ data[8] ^ data[9] ^ data[11] ^ data[15] ^ data[23] ^ data[24] ^ data[25] ^ data[27] ^ data[28] ^ data[29] ^ data[30] ^ data[31] ^ data[33] ^ data[36] ^ data[43] ^ data[44] ^ data[46] ^ data[47] ^ data[49] ^ data[52] ^ data[53] ^ data[54] ^ data[57] ^ data[59] ^ data[60] ^ data[62];
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
`timescale 1ns/1ps
// synopsys translate_on


module crc32_d8s(
 input      [7:0] data,
 input      [31:0] seed,
 output     [31:0] crc
);

 //registers decalarations
 reg [31:0] data_p0; 
 reg [31:0] seed_p0; 

 //remap signal
 assign crc = data_p0 ^ seed_p0;


 always @(*) begin
  data_p0[0] = data[0] ^ data[6];
 end 


 always @(*) begin
  data_p0[1] = data[0] ^ data[1] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[2] = data[0] ^ data[1] ^ data[2] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[3] = data[1] ^ data[2] ^ data[3] ^ data[7];
 end 


 always @(*) begin
  data_p0[4] = data[0] ^ data[2] ^ data[3] ^ data[4] ^ data[6];
 end 


 always @(*) begin
  data_p0[5] = data[0] ^ data[1] ^ data[3] ^ data[4] ^ data[5] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[6] = data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[7] = data[0] ^ data[2] ^ data[3] ^ data[5] ^ data[7];
 end 


 always @(*) begin
  data_p0[8] = data[0] ^ data[1] ^ data[3] ^ data[4];
 end 


 always @(*) begin
  data_p0[9] = data[1] ^ data[2] ^ data[4] ^ data[5];
 end 


 always @(*) begin
  data_p0[10] = data[0] ^ data[2] ^ data[3] ^ data[5];
 end 


 always @(*) begin
  data_p0[11] = data[0] ^ data[1] ^ data[3] ^ data[4];
 end 


 always @(*) begin
  data_p0[12] = data[0] ^ data[1] ^ data[2] ^ data[4] ^ data[5] ^ data[6];
 end 


 always @(*) begin
  data_p0[13] = data[1] ^ data[2] ^ data[3] ^ data[5] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[14] = data[2] ^ data[3] ^ data[4] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[15] = data[3] ^ data[4] ^ data[5] ^ data[7];
 end 


 always @(*) begin
  data_p0[16] = data[0] ^ data[4] ^ data[5];
 end 


 always @(*) begin
  data_p0[17] = data[1] ^ data[5] ^ data[6];
 end 


 always @(*) begin
  data_p0[18] = data[2] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[19] = data[3] ^ data[7];
 end 


 always @(*) begin
  data_p0[20] = data[4];
 end 


 always @(*) begin
  data_p0[21] = data[5];
 end 


 always @(*) begin
  data_p0[22] = data[0];
 end 


 always @(*) begin
  data_p0[23] = data[0] ^ data[1] ^ data[6];
 end 


 always @(*) begin
  data_p0[24] = data[1] ^ data[2] ^ data[7];
 end 


 always @(*) begin
  data_p0[25] = data[2] ^ data[3];
 end 


 always @(*) begin
  data_p0[26] = data[0] ^ data[3] ^ data[4] ^ data[6];
 end 


 always @(*) begin
  data_p0[27] = data[1] ^ data[4] ^ data[5] ^ data[7];
 end 


 always @(*) begin
  data_p0[28] = data[2] ^ data[5] ^ data[6];
 end 


 always @(*) begin
  data_p0[29] = data[3] ^ data[6] ^ data[7];
 end 


 always @(*) begin
  data_p0[30] = data[4] ^ data[7];
 end 


 always @(*) begin
  data_p0[31] = data[5];
 end 


 always @(*) begin
 seed_p0[0] = seed[24] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[1] = seed[24] ^ seed[25] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[2] = seed[24] ^ seed[25] ^ seed[26] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[3] = seed[25] ^ seed[26] ^ seed[27] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[4] = seed[24] ^ seed[26] ^ seed[27] ^ seed[28] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[5] = seed[24] ^ seed[25] ^ seed[27] ^ seed[28] ^ seed[29] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[6] = seed[25] ^ seed[26] ^ seed[28] ^ seed[29] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[7] = seed[24] ^ seed[26] ^ seed[27] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[8] = seed[0] ^ seed[24] ^ seed[25] ^ seed[27] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[9] = seed[1] ^ seed[25] ^ seed[26] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[10] = seed[2] ^ seed[24] ^ seed[26] ^ seed[27] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[11] = seed[3] ^ seed[24] ^ seed[25] ^ seed[27] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[12] = seed[4] ^ seed[24] ^ seed[25] ^ seed[26] ^ seed[28] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[13] = seed[5] ^ seed[25] ^ seed[26] ^ seed[27] ^ seed[29] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[14] = seed[6] ^ seed[26] ^ seed[27] ^ seed[28] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[15] = seed[7] ^ seed[27] ^ seed[28] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[16] = seed[8] ^ seed[24] ^ seed[28] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[17] = seed[9] ^ seed[25] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[18] = seed[10] ^ seed[26] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[19] = seed[11] ^ seed[27] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[20] = seed[12] ^ seed[28];
 end 


 always @(*) begin
 seed_p0[21] = seed[13] ^ seed[29];
 end 


 always @(*) begin
 seed_p0[22] = seed[14] ^ seed[24];
 end 


 always @(*) begin
 seed_p0[23] = seed[15] ^ seed[24] ^ seed[25] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[24] = seed[16] ^ seed[25] ^ seed[26] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[25] = seed[17] ^ seed[26] ^ seed[27];
 end 


 always @(*) begin
 seed_p0[26] = seed[18] ^ seed[24] ^ seed[27] ^ seed[28] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[27] = seed[19] ^ seed[25] ^ seed[28] ^ seed[29] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[28] = seed[20] ^ seed[26] ^ seed[29] ^ seed[30];
 end 


 always @(*) begin
 seed_p0[29] = seed[21] ^ seed[27] ^ seed[30] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[30] = seed[22] ^ seed[28] ^ seed[31];
 end 


 always @(*) begin
 seed_p0[31] = seed[23] ^ seed[29];
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


`timescale 1ns/1ns

module ctrl_2g_5g
	(

		clk			,  	//156Mhz Clock i-1                        
		reset_		,  	//i-1                                     
                       	                                          
		mode_10G 	,  	//i-1, speed modes                        
		mode_5G  	,  	//i-1,                                    
		mode_2p5G	,  	//i-1,                                    
		mode_1G  	,  	//i-1,                                    
		               	                                          
		data_in		,  	//i-64, input data                        
		ctrl_in		,  	//i-8, input control                      
		               	                                          
		data_out	,  	//o-64, output data                       
		ctrl_out	,  	//o-8, output control                     
		we_5g		,  	//o-1, write enable for 2.5G and 5G speeds
		x_byte_cnt	,  	//o-16, byte count for every packet       
		x_bcnt_we	,  	//o-1, write enable for byte count fifo   
		linkup_5g      	
	
	);
	
	
	input 			clk			;	//156Mhz Clock i-1
	input 			reset_		;	//i-1

	input			mode_10G 	;	//i-1, speed modes
	input			mode_5G  	;	//i-1, 
	input			mode_2p5G	; 	//i-1, 
	input			mode_1G  	;	//i-1, 
	       	
	input  	[63:0] 	data_in		;	//i-64, input data
	input  	[07:0]	ctrl_in		;	//i-8, input control
	       	
	output 	[63:0] 	data_out	;	//o-64, output data
    output 	[07:0]  ctrl_out	;	//o-8, output control
    output 			we_5g		;	//o-1, write enable for 2.5G and 5G speeds 
    output 	[15:0] 	x_byte_cnt	;	//o-16, byte count for every packet
    output			x_bcnt_we	;	//o-1, write enable for byte count fifo
    output			linkup_5g	;

    reg   	[63:0] 	data_out	; 
    reg  	[07:0]  ctrl_out	;
    reg 			we_5g		;
    reg	 	[15:0]	x_byte_cnt	;
    reg				x_bcnt_we	; 
    
    reg    	[02:0]	count		;
    reg				sof			;	//Start of packet
    reg				sof0		;	//Start of packet on Byte 0 of the first QWD
    reg				sof4		;	//Start of packet on Byte 4 of the first QWD
    reg				eof			;	//End of Packet
    reg				eof0		;	//End of Packet on Byte 0 of the last QWD
    reg				eof1		;	//End of Packet on Byte 1 of the last QWD
    reg				eof2		;	//End of Packet on Byte 2 of the last QWD
    reg				eof3		;	//End of Packet on Byte 3 of the last QWD
    reg				eof4		;	//End of Packet on Byte 4 of the last QWD
    reg				eof5		;	//End of Packet on Byte 5 of the last QWD
    reg				eof6		;	//End of Packet on Byte 6 of the last QWD
    reg				eof7		;	//End of Packet on Byte 7 of the last QWD	
    reg 			rx_dinvalid	;	//invalid data
    reg				linkup_5g	;
    
    reg				frame		;
    
    parameter [2:0]
    	
    	LINK_FAIL = 3'd1,
    	LINK_RCVR = 3'd2,
    	LINK_GOOD = 3'd4;
    	
    reg [2:0] state;
    reg [4:0] link_cnt;
    reg		  link_ok;
    reg		  link_bad;
    wire	  link_fault;
    assign link_fault = (data_in[39:32] == 8'h9c && ctrl_in[4]) || 
    					(data_in[7:0] == 8'h9c && ctrl_in[0]);
        
    
	always @ (posedge clk) begin
	
			if (!reset_)
				begin
					
					data_out   	<= 64'h0707_0707_0707_0707;
					ctrl_out   	<= 8'hff;
					we_5g	   	<= 1'b0;
					count	   	<= 3'd0;
					sof 	   	<= 1'b0;
					sof0	   	<= 1'b0;
					sof4       	<= 1'b0;
					eof		   	<= 1'b0;
					eof0       	<= 1'b0;
					eof1       	<= 1'b0;
					eof2       	<= 1'b0;
					eof3       	<= 1'b0;
					eof4       	<= 1'b0;
					eof5       	<= 1'b0;
					eof6       	<= 1'b0;
					eof7       	<= 1'b0;
					x_byte_cnt 	<= 16'd0;
					x_bcnt_we 	<= 1'b0;
					rx_dinvalid <= 1'b1;
					linkup_5g	<= 1'b0;
					link_ok		<= 1'b0;
					link_bad	<= 1'b0; 
					
					frame		<= 1'b0;
										
				end
			
			else
				begin
				
				if (mode_2p5G | mode_5G) begin
					
					frame <= ((ctrl_in[0] && data_in[7:0] == 8'hfb) ||
						     (ctrl_in[4] && data_in[39:32] == 8'hfb))?	1'b1 :
						     (eof)? 1'b0	:	frame;
						
					sof <= (ctrl_in[0] && data_in[7:0] == 8'hfb) ||				//Detect the the start of the packet based on
						   (ctrl_in[4] && data_in[39:32] == 8'hfb);				//the position of "fb"
						   
					sof0 <=  (ctrl_in[0] && data_in[7:0]   == 8'hfb);			//Packet starts on byte 0
					sof4 <=  (ctrl_in[4] && data_in[39:32] == 8'hfb);			//Packet starts on byte 4
					
					
					eof  <= (eof0 | eof1 | eof2 | eof3 | eof4 | eof5 | eof6 | eof7 );		//Detects the end of packet based on the position of "fd"
					eof0 <= (ctrl_in[0] && data_in[7:0] == 8'hfd)    ;						//Packet ends on byte 0	
					eof1 <=	(ctrl_in[1] && data_in[15:8] == 8'hfd)   ;						//Packet ends on byte 1
					eof2 <=	(ctrl_in[2] && data_in[23:16] == 8'hfd)  ;						//Packet ends on byte 2
					eof3 <=	(ctrl_in[3] && data_in[31:24] == 8'hfd)  ;						//Packet ends on byte 3
					eof4 <=	(ctrl_in[4] && data_in[39:32] == 8'hfd)  ;						//Packet ends on byte 4
					eof5 <=	(ctrl_in[5] && data_in[47:40] == 8'hfd)  ;						//Packet ends on byte 5
					eof6 <=	(ctrl_in[6] && data_in[55:48] == 8'hfd)  ;						//Packet ends on byte 6
					eof7 <=	(ctrl_in[7] && data_in[63:56] == 8'hfd)	 ;						//Packet ends on byte 7
					
					if (frame) begin
					
					x_byte_cnt[14:0] <= (sof0) ? 15'd8 :				//Byte count for the number of bytes in the given packet									     
							(sof4) ? 15'd4 :							//if packet start at B0 then you start with "8"									
							(!rx_dinvalid & we_5g) ?                   	//and if it starts at B4 then you start with "4"
							((eof0) ? x_byte_cnt[14:0] + 15'd1 :		//As the position of "fd" is not fixed															               
							 (eof1) ? x_byte_cnt[14:0] + 15'd2 :		//for the last QWD, we add different numbers based on the 										           
							 (eof2) ? x_byte_cnt[14:0] + 15'd3 :		//position of "fd"										                  	
							 (eof3) ? x_byte_cnt[14:0] + 15'd4 :
							 (eof4) ? x_byte_cnt[14:0] + 15'd5 :
							 (eof5) ? x_byte_cnt[14:0] + 15'd6 :
							 (eof6) ? x_byte_cnt[14:0] + 15'd7 :
							 x_byte_cnt[14:0] + 15'd8) :
							 (eof) ? 15'd0 : 
							x_byte_cnt;								                                 

					//set MSB if packet is sof4 type. set it zero if sof0 type
					x_byte_cnt[15] <= (sof0) ? 1'b0 :									     
										(sof4) ? 1'b1 : x_byte_cnt[15];						
																                                 
					x_bcnt_we <= (eof & count == 3'd1) ? 1'b1 :	
							1'b0;
							
					rx_dinvalid <= ((data_in == 64'h0707_0707_0707_0707) && (ctrl_in == 8'hff));
					
					we_5g <= (rx_dinvalid) ? 1'b0 :       //Write enable generated for the gige_fifo, to write the data onto the memory
						(count == 3'd1) ? 1'b0 :
						(!count) ? 1'b1 :
						we_5g
						;							     
					
					count <= (mode_2p5G) ?       	//Count is the count used to control the "we_5g" signal
						((rx_dinvalid) ? 3'd0:      //Its value is different for different speed
						(count == 3'd3) ? 3'd0 : 
						count + 1) :             
						(mode_5G) ?         	
						((rx_dinvalid) ? 3'd0:   
						(count == 3'd1) ? 3'd0 : 
						count + 1) :             
						count                    
						;                        
					
					data_out <= data_in;                  //No change in data
					
					ctrl_out <= ctrl_in;	              //No change in control
							
							linkup_5g <= state[2] ; 
							link_bad <= link_fault;
							link_ok <= (link_cnt == 5'd0) ;
					
					end		
					else begin
					
					x_byte_cnt	<= 16'b0;								                                 
																                                 
					x_bcnt_we 	<= 1'b0;
							
					rx_dinvalid <= 1'b0;
					
					we_5g 		<= 1'b0;							                             
					
					count 		<= 3'd0;                              	
					
					data_out 	<= 64'h0707070707070707;              
					         	
					ctrl_out 	<= 8'hFF;	             
							
					linkup_5g 	<= state[2] ; 
					link_bad 	<= link_fault;
					link_ok 	<= (link_cnt == 5'd0) ;
					
					end		
				end
				
       		end
	end        
        
	//for linkup-detection                
	always @ (posedge clk)
		begin 
			if (!reset_)
				begin
					state <= LINK_FAIL;        
                    link_cnt <= 5'd30;
                end
            else
            	begin
            	if (mode_2p5G | mode_5G) begin
            		case(state)
            		LINK_FAIL :
            			begin
            				state <= link_bad ? LINK_FAIL : LINK_RCVR ;
            				link_cnt <= 5'd30;
                    	end
                    	
                    LINK_RCVR :
                    	begin
                    		state <= link_bad ? LINK_FAIL : 
                    			( link_ok ? LINK_GOOD : LINK_RCVR )
                    			;
                    		link_cnt <= link_cnt - 5'd1 ;
                    	end
                    	
                    LINK_GOOD :
                    	begin
                    		state <= link_bad ? LINK_FAIL :
                    			LINK_GOOD
                    			;
                    		link_cnt <= 5'd30;
                    	end
                    
                    default : 
                    		state <= LINK_FAIL;
                    endcase
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

module eth_crc32_gen(
	clk,         	   //i, clock
	rst_n,       	   //i, active low reset
	data_vld,    	   //i, data valid
	data_eop,    	   //i, end of frame
	data_sop,    	   //i, start of frame
	data_in,     	   //i, align first byte on bit [7:0] ... last byte [63:56]
	data_offset, 	   //i, number of starting bytes invalid on SOF beat, non SOF should set to 0
					
	data_be,     	   //i,0 - all bytes valid  (really is beat_bcnt)
	             	             
	crc_out,     	   //o-32, final generated crc32 value
	crc_vld      	   //o, crc check valid
 );

 parameter CRC_DWIDTH  = 32;
           
 input            clk;         	   //clock
 input            rst_n;       	    //active low reset
                          
                           
 input            data_vld;    		//packet data is valid
 input            data_eop;    	   //indicates last packet data for this packet
 input            data_sop;    	   //indicates the first packet data for this packet
 input  [64-1:0]  data_in;     	   //packet data
 input  [3-1:0]   data_be;     	  //total number of bytes valid, regardless of the where the first data is align on this clock
 input  [3-1:0]   data_offset; 	  //offset to first valid byte in the sof data beat, set to zero if non sof beat

 output [31:0]    crc_out;     	  //final crc32 value
 output reg       crc_vld;     	   //indicates crc status is valid
 
 reg              data_vld_s2;
 reg    [64-1:0]  shft_dout_s2;
 reg              data_eop_s2;
 reg              be_lt4_s2;
 reg    [32-1:0]  crc_dout_s3;
 reg    [32-1:0]  crc_dout_mux_s2;
 reg    [24-1:0]  shft_odd_dout_s2;
 reg    [64-1:0]  data_mask; 
 reg              info_mux_s2_crc_eop;
 reg    [2-1:0]   info_s2_crc_sel;  
 reg    [32-1:0]  crc_mux_s2;
 
 wire   [32-1:0]  crc_dout_d32_s2;
 wire   [4-1:0]   data_shft;  
 wire   [4-1:0]   seed_shft;
 wire   [3-1:0]   sum_data_be_offset;  
 wire   [64-1:0]  data_in_mask_s1;
 wire   [88-1:0]  adj_data_in_mask_s1;
 wire   [64-1:0]  adj_seed_crc_s1;
 wire   [88-1:0]  shft_dout_s1;
 wire   [64-1:0]  shft_crc_mux_s1;
 wire             be_lt4_s1;
 
 //number of bytes to shift down so that last valid byte is align on bit[7:0] of "data_in"
 assign sum_data_be_offset = data_offset  + data_be;
 assign data_shft          = ~(|sum_data_be_offset) ? 3'd0 : {1'b0, ~sum_data_be_offset} + 4'd1;
 
 //number of bytes to shift down the seed-crc so that it align with first valid data byte
 assign seed_shft = ~(|data_be) ? 4'd0 : {1'b0, ~data_be} + 4'd1;
 
 //packet data mask, use to mask out the data invalid data bytes in the data_in bus
 always@(*)
  begin
   case(data_offset)
    3'd1:    data_mask = data_sop ? {8'h0, {56{1'b1}}} : {64{1'b1}};
    3'd2:    data_mask = data_sop ? {16'h0,{48{1'b1}}} : {64{1'b1}};
    3'd3:    data_mask = data_sop ? {24'h0,{40{1'b1}}} : {64{1'b1}};
    3'd4:    data_mask = data_sop ? {32'h0,{32{1'b1}}} : {64{1'b1}};
    3'd5:    data_mask = data_sop ? {40'h0,{24{1'b1}}} : {64{1'b1}};
    3'd6:    data_mask = data_sop ? {48'h0,{16{1'b1}}} : {64{1'b1}};
    3'd7:    data_mask = data_sop ? {56'h0,{8{1'b1}}}  : {64{1'b1}};
    default: data_mask = {64{1'b1}}; 
   endcase
  end
 
 assign be_lt4_s1 = (data_be < 3'd4);
 
 //logic to pipe the data valid signal along
 always@(*)
  begin
   data_vld_s2     = data_vld;
   data_eop_s2     = data_eop;
   info_s2_crc_sel = sum_data_be_offset[1:0];
   be_lt4_s2       = be_lt4_s1;
  end

  //STAGE 1: logic to shift the input data from MSB to LSB to prepend zero's 
 assign data_in_mask_s1 = data_mask & SWAP_LEWIZ_DATA64(data_in);
 
 wire [4-1:0] adj_data_shft_s1 = (|sum_data_be_offset[2-1:0]) ? {data_shft[4-1:2], 2'd0} + 4'd4 : {data_shft[4-1:2], 2'd0};
 wire [4-1:0] adj_seed_shft_s1 = (|data_offset)      ? seed_shft :
                                 (|seed_shft[2-1:0]) ? {seed_shft[4-1:2], 2'd0} + 4'd4 : {seed_shft[4-1:2], 2'd0};
 
 assign adj_data_in_mask_s1 = {data_in_mask_s1, 24'd0};

 //logic to adjust the data shift value, to shift odd byte all the way down
 bsh32_dn_88 u_bsh32_dn_88_data(
  .shft(adj_data_shft_s1[4-1:2]),
  .din (adj_data_in_mask_s1),
  .dout(shft_dout_s1)
 );
 
 //adjust the input data after masking if starting byte is not align on 32 bits boundary
 assign adj_seed_crc_s1 = {SWAP_CRC(crc_mux_s2), 32'd0};
 
 //logic to shift the crc from MSB to LSB to xor with beginning bytes of input data
 bsh8_dn_64 u_bsh8_dn_64_crc(
  .shft(adj_seed_shft_s1[2:0]),
  .din (adj_seed_crc_s1),
  .dout(shft_crc_mux_s1)
 );
 
 always@(*) begin
  shft_dout_s2     = shft_dout_s1[88-1:24] ^ shft_crc_mux_s1;  
  shft_odd_dout_s2 = shft_dout_s1[24-1:0];
 end
 
 //STAGE 2: Compute the CRC32 for input data
 wire [64-1:0] swap_shft_dout_s2 = SWAP_DATA64(shft_dout_s2);
 wire [24-1:0] swap_shft_odd_dout_s2 = SWAP_DATA24(shft_odd_dout_s2);

 crc32_d64 u_crc32_d64(
  .data(swap_shft_dout_s2),
  .crc (crc_dout_d32_s2)
 );
 
 wire [32-1:0] crc_gen_d32_s2 = ~SWAP_NO_CRC(crc_dout_d32_s2);
  
 //logic to compute the non-word align data byte crc
 always@(*) begin
  crc_mux_s2 = crc_dout_s3 | {32{data_sop}};
 end 
  
 wire [32-1:0] crc_dout_d8_s2;
 wire [32-1:0] crc_seed_d8_s2 = be_lt4_s2 ? crc_mux_s2 : crc_dout_d32_s2;
 wire [32-1:0] crc_gen_d8_s2  = ~SWAP_NO_CRC(crc_dout_d8_s2); 
  
 crc32_d8s u_crc32_d8s(
  .seed(crc_seed_d8_s2),
  .data(swap_shft_odd_dout_s2[23:16]),
  .crc (crc_dout_d8_s2)
 );

 wire [32-1:0] crc_dout_d16_s2;
 wire [32-1:0] crc_seed_d16_s2 = be_lt4_s2 ? crc_mux_s2 : crc_dout_d32_s2;
 wire [32-1:0] crc_gen_d16_s2  = ~SWAP_NO_CRC(crc_dout_d16_s2); 
  
 crc32_d16s u_crc32_d16s(
  .seed(crc_seed_d16_s2),
  .data(swap_shft_odd_dout_s2[23:8]),
  .crc (crc_dout_d16_s2)
 );

 wire [32-1:0] crc_dout_d24_s2;
 wire [32-1:0] crc_seed_d24_s2 = be_lt4_s2 ? crc_mux_s2 : crc_dout_d32_s2;
 wire [32-1:0] crc_gen_d24_s2  = ~SWAP_NO_CRC(crc_dout_d24_s2);  
  
 crc32_d24s u_crc32_d24s(
  .seed(crc_seed_d24_s2),
  .data(swap_shft_odd_dout_s2[23:0]),
  .crc (crc_dout_d24_s2)
 );

 //STAGE 2: Multiplex out the current accumulate crc value from table
 always@(*) begin
   case(info_s2_crc_sel)
    2'd1:    crc_dout_mux_s2 = crc_dout_d8_s2;
    2'd2:    crc_dout_mux_s2 = crc_dout_d16_s2;
    2'd3:    crc_dout_mux_s2 = crc_dout_d24_s2;
    default: crc_dout_mux_s2 = crc_dout_d32_s2;
   endcase
 end
 
 always@(*) begin
   info_mux_s2_crc_eop = (data_eop && ~(|data_be));
  end
 
 
 //STAGE 3: Per Port CRC Accumulation Table Update and CRC Valid Output
 always@(posedge clk) 
  if(!rst_n) begin
   crc_dout_s3 <= {CRC_DWIDTH{1'b1}};
  end else begin 
   crc_dout_s3 <= crc_dout_mux_s2;
  end

 //logic to perform crc swap + inversion  
 assign crc_out = ~SWAP_NO_CRC(crc_dout_s3);
 
 //logic to swap and invert the final crc and assert crc valid
 always@(posedge clk) 
  if(!rst_n)
   crc_vld <= 1'b0;
  else
   crc_vld <= data_vld_s2 && data_eop_s2;

 //function to swap the final crc result 
 function [32-1:0] SWAP_CRC;
 input [32-1:0] crc;
 reg   [32-1:0] temp;
 begin
  temp[31] = crc[24];
  temp[30] = crc[25];
  temp[29] = crc[26];
  temp[28] = crc[27];
  temp[27] = crc[28];
  temp[26] = crc[29];
  temp[25] = crc[30];
  temp[24] = crc[31];
  temp[23] = crc[16];
  temp[22] = crc[17];
  temp[21] = crc[18];
  temp[20] = crc[19];
  temp[19] = crc[20];
  temp[18] = crc[21];
  temp[17] = crc[22];
  temp[16] = crc[23];
  temp[15] = crc[8];
  temp[14] = crc[9];
  temp[13] = crc[10];
  temp[12] = crc[11];
  temp[11] = crc[12];
  temp[10] = crc[13];
  temp[9] = crc[14];
  temp[8] = crc[15];
  temp[7] = crc[0];
  temp[6] = crc[1];
  temp[5] = crc[2];
  temp[4] = crc[3];
  temp[3] = crc[4];
  temp[2] = crc[5];
  temp[1] = crc[6];
  temp[0] = crc[7];
  SWAP_CRC = temp;
 end
 endfunction                
 
 function [32-1:0] SWAP_NO_CRC;
 input [32-1:0] crc;
 reg   [32-1:0] temp;
 begin
  temp[31] = crc[0];
  temp[30] = crc[1];
  temp[29] = crc[2];
  temp[28] = crc[3];
  temp[27] = crc[4];
  temp[26] = crc[5];
  temp[25] = crc[6];
  temp[24] = crc[7];
  temp[23] = crc[8]; 
  temp[22] = crc[9]; 
  temp[21] = crc[10];
  temp[20] = crc[11];
  temp[19] = crc[12];
  temp[18] = crc[13];
  temp[17] = crc[14];
  temp[16] = crc[15];
  temp[15] = crc[16];
  temp[14] = crc[17];
  temp[13] = crc[18];
  temp[12] = crc[19];
  temp[11] = crc[20];
  temp[10] = crc[21];
  temp[9]  = crc[22];
  temp[8]  = crc[23];
  temp[7]  = crc[24];
  temp[6]  = crc[25];
  temp[5]  = crc[26];
  temp[4]  = crc[27];
  temp[3]  = crc[28];
  temp[2]  = crc[29];
  temp[1]  = crc[30];
  temp[0]  = crc[31];
  SWAP_NO_CRC = temp;
 end
 endfunction                                
 
 //fucntion to swap the input data before sending it to the crc compute module
 function [64-1:0] SWAP_DATA64;
 input [64-1:0] DIN;
 reg   [64-1:0] DOUT;
 begin
   DOUT[63] = DIN[56];
   DOUT[62] = DIN[57];
   DOUT[61] = DIN[58];
   DOUT[60] = DIN[59];
   DOUT[59] = DIN[60];
   DOUT[58] = DIN[61];
   DOUT[57] = DIN[62];
   DOUT[56] = DIN[63];
   DOUT[55] = DIN[48];
   DOUT[54] = DIN[49];
   DOUT[53] = DIN[50];
   DOUT[52] = DIN[51];
   DOUT[51] = DIN[52];
   DOUT[50] = DIN[53];
   DOUT[49] = DIN[54];
   DOUT[48] = DIN[55];
   DOUT[47] = DIN[40];
   DOUT[46] = DIN[41];
   DOUT[45] = DIN[42];
   DOUT[44] = DIN[43];
   DOUT[43] = DIN[44];
   DOUT[42] = DIN[45];
   DOUT[41] = DIN[46];
   DOUT[40] = DIN[47];
   DOUT[39] = DIN[32];
   DOUT[38] = DIN[33];
   DOUT[37] = DIN[34];
   DOUT[36] = DIN[35];
   DOUT[35] = DIN[36];
   DOUT[34] = DIN[37];
   DOUT[33] = DIN[38];
   DOUT[32] = DIN[39];
   DOUT[31] = DIN[24];
   DOUT[30] = DIN[25];
   DOUT[29] = DIN[26];
   DOUT[28] = DIN[27];
   DOUT[27] = DIN[28];
   DOUT[26] = DIN[29];
   DOUT[25] = DIN[30];
   DOUT[24] = DIN[31];
   DOUT[23] = DIN[16];
   DOUT[22] = DIN[17];
   DOUT[21] = DIN[18];
   DOUT[20] = DIN[19];
   DOUT[19] = DIN[20];
   DOUT[18] = DIN[21];
   DOUT[17] = DIN[22];
   DOUT[16] = DIN[23];
   DOUT[15] = DIN[8];
   DOUT[14] = DIN[9];
   DOUT[13] = DIN[10];
   DOUT[12] = DIN[11];
   DOUT[11] = DIN[12];
   DOUT[10] = DIN[13];
   DOUT[9] = DIN[14];
   DOUT[8] = DIN[15];
   DOUT[7] = DIN[0];
   DOUT[6] = DIN[1];
   DOUT[5] = DIN[2];
   DOUT[4] = DIN[3];
   DOUT[3] = DIN[4];
   DOUT[2] = DIN[5];
   DOUT[1] = DIN[6];
   DOUT[0] = DIN[7];
   
   SWAP_DATA64 = DOUT; 
 end
 endfunction
 
 function [24-1:0] SWAP_DATA24;
 input [24-1:0] DIN;
 reg   [24-1:0] DOUT;
 begin
   DOUT[23] = DIN[16];
   DOUT[22] = DIN[17];
   DOUT[21] = DIN[18];
   DOUT[20] = DIN[19];
   DOUT[19] = DIN[20];
   DOUT[18] = DIN[21];
   DOUT[17] = DIN[22];
   DOUT[16] = DIN[23];
   DOUT[15] = DIN[8];
   DOUT[14] = DIN[9];
   DOUT[13] = DIN[10];
   DOUT[12] = DIN[11];
   DOUT[11] = DIN[12];
   DOUT[10] = DIN[13];
   DOUT[9] = DIN[14];
   DOUT[8] = DIN[15];
   DOUT[7] = DIN[0];
   DOUT[6] = DIN[1];
   DOUT[5] = DIN[2];
   DOUT[4] = DIN[3];
   DOUT[3] = DIN[4];
   DOUT[2] = DIN[5];
   DOUT[1] = DIN[6];
   DOUT[0] = DIN[7];
   
   SWAP_DATA24 = DOUT; 
 end
 endfunction
 
 //function to swap lewiz data format to crc data format
 function [64-1:0] SWAP_LEWIZ_DATA64;
 input [64-1:0] DIN;
 reg   [64-1:0] DOUT;
 begin
   DOUT[63] = DIN[7];
   DOUT[62] = DIN[6];
   DOUT[61] = DIN[5];
   DOUT[60] = DIN[4];
   DOUT[59] = DIN[3];
   DOUT[58] = DIN[2];
   DOUT[57] = DIN[1];
   DOUT[56] = DIN[0];
   DOUT[55] = DIN[15];
   DOUT[54] = DIN[14];
   DOUT[53] = DIN[13];
   DOUT[52] = DIN[12];
   DOUT[51] = DIN[11];
   DOUT[50] = DIN[10];
   DOUT[49] = DIN[9];
   DOUT[48] = DIN[8];
   DOUT[47] = DIN[23];
   DOUT[46] = DIN[22];
   DOUT[45] = DIN[21];
   DOUT[44] = DIN[20];
   DOUT[43] = DIN[19];
   DOUT[42] = DIN[18];
   DOUT[41] = DIN[17];
   DOUT[40] = DIN[16];
   DOUT[39] = DIN[31];
   DOUT[38] = DIN[30];
   DOUT[37] = DIN[29];
   DOUT[36] = DIN[28];
   DOUT[35] = DIN[27];
   DOUT[34] = DIN[26];
   DOUT[33] = DIN[25];
   DOUT[32] = DIN[24];
   DOUT[31] = DIN[39];
   DOUT[30] = DIN[38];
   DOUT[29] = DIN[37];
   DOUT[28] = DIN[36];
   DOUT[27] = DIN[35];
   DOUT[26] = DIN[34];
   DOUT[25] = DIN[33];
   DOUT[24] = DIN[32];
   DOUT[23] = DIN[47];
   DOUT[22] = DIN[46];
   DOUT[21] = DIN[45];
   DOUT[20] = DIN[44];
   DOUT[19] = DIN[43];
   DOUT[18] = DIN[42];
   DOUT[17] = DIN[41];
   DOUT[16] = DIN[40];
   DOUT[15] = DIN[55];
   DOUT[14] = DIN[54];
   DOUT[13] = DIN[53];
   DOUT[12] = DIN[52];
   DOUT[11] = DIN[51];
   DOUT[10] = DIN[50];
   DOUT[9]  = DIN[49];
   DOUT[8]  = DIN[48];
   DOUT[7]  = DIN[63];
   DOUT[6]  = DIN[62];
   DOUT[5]  = DIN[61];
   DOUT[4]  = DIN[60];
   DOUT[3]  = DIN[59];
   DOUT[2]  = DIN[58];
   DOUT[1]  = DIN[57];
   DOUT[0]  = DIN[56];
   
   SWAP_LEWIZ_DATA64 = DOUT; 
 end
 endfunction

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


module fmac_fifo4Kx64

(
			aclr,

			wrclk,	             // i,Clk for writing data                                 
			wrreq,               // i,request to write                                     
			data,                // i,Data coming in                                       
			wrfull,              // o,indicates fifo is full or not (To avoid overiding)   
			wrempty,             // o,indicates fifo is empty or not (to avoid underflow)               
			wrusedw,             // o,number of slots currently in use for writting                                                                           
                                                                                           
			rdclk,                // i,Clk for reading data                                
			rdreq,              	// i,Request to read from FIFO                            
			q,                  	// o,Data coming out                                      
			rdfull,             	 // o,indicates fifo is empty or not (to avoid underflow) 
			rdempty,            	  //o, number of slots currently in use for reading       
			rdusedw             	 // o,indicates fifo is full or not (To avoid overiding)  
			
);
parameter 	  WIDTH = 64,
			  DEPTH = 4096,
			  PTR	= 12;
			  
			input wire aclr;

			input  wire 				wrclk;            // Clk for writing data                                 
			input  wire 				wrreq;            // request to write                                     
			input  wire [WIDTH-1 : 0]	data;            // Data coming in                                        
			output wire					wrfull;           // indicates fifo is full or not (To avoid overiding)   
			output wire 			 	wrempty;          // indicates fifo is empty or not (to avoid underflow)                         
			output wire	[PTR : 0]		wrusedw;         // number of slots currently in use for writting                                                                                      
                                                                                                                  
			input  wire 				rdclk;           // Clk for reading data                                  
			input  wire 				rdreq;           // Request to read from FIFO                             
			output wire [WIDTH-1 : 0]	q;               // Data coming out                                       
			output wire 				rdfull;           // indicates fifo is empty or not (to avoid underflow)  
			output wire 				rdempty;           // number of slots currently in use for reading        
			output wire [PTR  : 0] 	rdusedw;           	 // indicates fifo is full or not (To avoid overiding)    





asynch_fifo		#(.WIDTH (64),	
				  .DEPTH (4096),
				  .PTR	 (12) )	
 								
	async	  (
			.reset_	(~aclr),
			
			.wrclk	(wrclk),	                // Clk to write data                                           
			.wren	(wrreq),	               	// write enable                                                
			.datain	(data),		                 // write data                                                 
			.wrfull	(wrfull),	               // indicates fifo is full or not (To avoid overiding)           
			.wrempty(wrempty),	                // indicates fifo is empty or not (to avoid underflow)         
			.wrusedw(wrusedw),	                // wrusedw -number of locations filled in fifo                 
                                                                                                               
			.rdclk	(rdclk),	                	// i-1, Clk to read data                                                               
			.rden	(rdreq),	                  // i-1, read enable of data FIFO                                    
			.dataout(q),		              	  // Dataout of data FIFO                              
			.rdfull	(rdfull),	              	 // indicates fifo is full or not (To avoid overiding) (Not used)                                        
			.rdempty(rdempty),	              		// indicates fifo is empty or not (to avoid underflow)      
			.rdusedw(rdusedw),	                  // rdusedw -number of locations filled in fifo (not used )  
                                                   
			.dbg()

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


`timescale 1ns / 1ns


module fmac_fifo4Kx8

(
			 aclr,

			wrclk,    	   // i,Clk for writing data    
			wrreq,    	   // i,request to write 
			data,     	   // i,Data coming in 
			wrfull,   	   // o,indicates fifo is full or not (To avoid overiding)
		    wrempty,       // o,indicates fifo is empty or not (to avoid underflow)                                                            
            wrusedw,  	   // o,number of slots currently in use for writting

		    rdclk,    	    // i,Clk for reading data 
			rdreq,    		// i,Request to read from FIFO
			q, 	    		// o,Data coming out
			rdempty,  		 // o,indicates fifo is empty or not (to avoid underflow) 
			rdusedw,  		  //o, number of slots currently in use for reading
			rdfull    		 // o,indicates fifo is full or not (To avoid overiding)
			
);


	parameter WIDTH = 8,
			  DEPTH = 4096,
			  PTR	= 12;
			  
			  
			input wire 				    aclr;

			input  wire 				wrclk;  	   // Clk for writing data 
			input  wire 				wrreq;  	   // request to write 
			input  wire [WIDTH-1 : 0]	data;         // Data coming in            
			output wire					wrfull; 	   // indicates fifo is full or not (To avoid overiding)
			output wire 			    wrempty;       // indicates fifo is empty or not (to avoid underflow)                        
			output wire	[PTR : 0]		wrusedw;	  // number of slots currently in use for writting

		    input  wire 				rdclk;  	  // Clk for reading data 
			input  wire 				rdreq;  	  // Request to read from FIFO  
			output wire [WIDTH-1 : 0]	q; 	    	  // Data coming out  
			output wire 				rdempty;	   // indicates fifo is empty or not (to avoid underflow)
			output wire [PTR : 0] 	rdusedw;    	    // number of slots currently in use for reading
			output wire 				rdfull; 		 // indicates fifo is full or not (To avoid overiding)


			asynch_fifo 	#(.WIDTH (8),		
					  		  .DEPTH (4096),
					 		  .PTR	 (12) )		
 											
    async_4Kx8 (
			.reset_	(~aclr),
			
			.wrclk	(wrclk),		  // Clk to write data
			.wren	(wrreq),		 	// write enable
			.datain	(data),			   // write data
			.wrfull	(wrfull),		 // indicates fifo is full or not (To avoid overiding)
			.wrempty(wrempty),		  // indicates fifo is empty or not (to avoid underflow)
			.wrusedw(wrusedw),		  // wrusedw -number of locations filled in fifo


			.rdclk	(rdclk),			// i-1, Clk to read data
			.rden	(rdreq),			// i-1, read enable of data FIFO
			.dataout(q),				// Dataout of data FIFO
			.rdfull	(rdfull),			// indicates fifo is full or not (To avoid overiding) (Not used)
			.rdempty(rdempty),			// indicates fifo is empty or not (to avoid underflow)
			.rdusedw(rdusedw),		   // rdusedw -number of locations filled in fifo (not used )

			.dbg()

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


`timescale 1ns/10ps

module fmac_fifo512x64_2clk 

(
			aclr,

			wrclk,                            // i,Clk for writing data                                    
			wrreq,                            // i,request to write                                        
			data,                             // i,Data coming in                                          
			wrfull,                           // o,indicates fifo is full or not (To avoid overiding)      
			wrempty,                          // o,indicates fifo is empty or not (to avoid underflow)        
			wrusedw,                          // o,number of slots currently in use for writting                                                                    
                                                                                                           
		    rdclk,                             // i,Clk for reading data                                   
			rdreq,                           	// i,Request to read from FIFO                               
			q,    	                         	// o,Data coming out                                         
			rdfull,                          	  // o,indicates fifo is full or not (To avoid overiding)     
			rdempty,                         	 // o,indicates fifo is empty or not (to avoid underflow)        
			rdusedw                          	  //o, number of slots currently in use for reading 

);

parameter 	  WIDTH = 64,
			  DEPTH = 512,
			  PTR	= 9;



			input wire aclr;

			input  wire 				wrclk;                       // i,Clk for writing data                                    
			input  wire 				wrreq;                       // i,request to write                                        
			input  wire [WIDTH-1 : 0]	data;                        // i,Data coming in                                          
			output wire					wrfull;                      // o,indicates fifo is full or not (To avoid overiding)      
			output wire 			 	wrempty;                     // o,indicates fifo is empty or not (to avoid underflow)                             
			output wire	[PTR : 0]		wrusedw;                     // o,number of slots currently in use for writting                                                                                         
                                                                                                                                  
		    input  wire 				rdclk;                        // i,Clk for reading data                                   
			input  wire 				rdreq;                      	// i,Request to read from FIFO                               
			output wire [WIDTH-1 : 0]	q;    		                	// o,Data coming out                                         
			output wire 				rdfull;                     	 // o,indicates fifo is full or not (To avoid overiding)   
			output wire 				rdempty;                    	  // o,indicates fifo is empty or not (to avoid underflow)       
			output wire [PTR  : 0] 		rdusedw;                    	    //o, number of slots currently in use for reading     
                                                                         



		   asynch_fifo	#(.WIDTH (64),	
					  	.DEPTH (512),
					 	.PTR	 (9) )	
 										
asynch_512x64_2clk		  (
			.reset_	(~aclr),
			
			.wrclk	(wrclk),			          // i,Clk for writing data                                 
			.wren	(wrreq),	   		          // i,request to write                                     
			.datain	(data),				          // i,Data coming in                                       
			.wrfull	(wrfull),			          // o,indicates fifo is full or not (To avoid overiding)   
			.wrempty(wrempty),			          // o,indicates fifo is empty or not (to avoid underflow)  
			.wrusedw(wrusedw),			          // o,number of slots currently in use for writting        


			.rdclk	(rdclk),			          // i,Clk for reading data                                   
			.rden	(rdreq),			         	// i,Request to read from FIFO                              
			.dataout(q),				         	// o,Data coming out                                        
			.rdfull	(rdfull),			         	 // o,indicates fifo is full or not (To avoid overiding)    
			.rdempty(rdempty),			         	  // o,indicates fifo is empty or not (to avoid underflow)  
			.rdusedw(rdusedw),			         	    //o, number of slots currently in use for reading       

			.dbg()

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
`timescale 1ns / 1ps
// synopsys translate_on

module fmac_register_if(
	clk,     				// i-1, 250MHz	
    reset_,  				// i-1	
     
    fmac_ctrl_dly,				//i-32
    FMAC_TX_PKT_CNT,  			//i-32
    FMAC_RX_PKT_CNT_LO,      	// i-32, clk250 (derived from SYNCLK125 [or FMAC0 clk])
    FMAC_RX_PKT_CNT_HI,      	// i-32, clk250 (derived from SYNCLK125 [or FMAC0 clk])

    FMAC_TX_BYTE_CNT,			// i-32
	FMAC_RX_BYTE_CNT_LO,   		// i-32, clk250 (from synclk)
	FMAC_RX_BYTE_CNT_HI,   		// i-32, clk250 (from synclk)

	FMAC_RX_UNDERSIZE_PKT_CNT,		// i-32
	FMAC_RX_CRC_ERR_CNT,			// i-32
	FMAC_DCNT_OVERRUN,				// i-32
	FMAC_DCNT_LINK_ERR,				// i-32
	FMAC_PKT_CNT_OVERSIZE,			// i-32
	FMAC_PHY_STAT,					// i-32
	fmac_ctrl1	,					// i-32
	
	FMAC_PKT_CNT_JABBER		,		// i-32
	FMAC_PKT_CNT_FRAGMENT	,		// i-32
	FMAC_RAW_FRAME_CNT	,			// i-32
	FMAC_BAD_FRAMESOF_CNT	,		// i-32
	
	STAT_GROUP_LO_DOUT	,			// i-32, clk250
	STAT_GROUP_HI_DOUT	,			// i-32, clk250
	STAT_GROUP_addr	,				// o-10, address to select the register within the STAT GROUP
	STAT_GROUP_sel	,				//o-1
	fmac_rx_clr_en,					//o-1
	
	fmac_tx_clr_en,					//o-1
	reg_rd_start,					// i-1, pulse indicating the start of a reg access
	reg_rd_done,					// i-1, pulse indicating the end of a reg access
	host_addr_reg,					// i-16
	SYS_ADDR,						// i-4
	
	rx_auto_clr_en,					//i-1
	tx_auto_clr_en,					//i-1
	
	
	FMAC_RX_PKT_CNT64_LO,   		// i-33
	FMAC_RX_PKT_CNT64_HI,   		// i-32
	                       
	FMAC_RX_PKT_CNT127_LO,  		// i-33
	FMAC_RX_PKT_CNT127_HI,  		// i-32
	                       
	FMAC_RX_PKT_CNT255_LO,  		// i-33
	FMAC_RX_PKT_CNT255_HI,  		// i-32
	                       
	FMAC_RX_PKT_CNT511_LO,  		// i-33
	FMAC_RX_PKT_CNT511_HI,  		// i-32
	                       
	FMAC_RX_PKT_CNT1023_LO, 		// i-33
	FMAC_RX_PKT_CNT1023_HI, 		 // i-32
	                       
	FMAC_RX_PKT_CNT1518_LO, 		 // i-33
	FMAC_RX_PKT_CNT1518_HI, 		 // i-32
	                       
	FMAC_RX_PKT_CNT2047_LO, 		 // i-33
	FMAC_RX_PKT_CNT2047_HI, 		 // i-32
	                       
	FMAC_RX_PKT_CNT4095_LO, 		 // i-33
	FMAC_RX_PKT_CNT4095_HI, 		 // i-32
	                       
	FMAC_RX_PKT_CNT8191_LO, 		 // i-33
	FMAC_RX_PKT_CNT8191_HI, 		 // i-32
	                       
	FMAC_RX_PKT_CNT9018_LO, 		  // i-33
	FMAC_RX_PKT_CNT9018_HI, 		  // i-32
	                       
	FMAC_RX_PKT_CNT9022_LO, 		  // i-33
	FMAC_RX_PKT_CNT9022_HI, 		  // i-32
	                       
	FMAC_RX_PKT_CNT9199P_LO,		   // i-33
	FMAC_RX_PKT_CNT9199P_HI,		   // i-32
		
	
	FMAC_REGDOUT					   // o-32
	
    );
      

input       clk;
input       reset_;

// Statistic Registers
input	[31:0]	fmac_ctrl_dly	;
input [31:0]	FMAC_TX_PKT_CNT;
input [31:0]	FMAC_RX_PKT_CNT_LO;
input [31:0]	FMAC_RX_PKT_CNT_HI;

input [31:0]	FMAC_TX_BYTE_CNT;
input [31:0]	FMAC_RX_BYTE_CNT_LO;
input [31:0]	FMAC_RX_BYTE_CNT_HI;

input [31:0]	FMAC_RX_UNDERSIZE_PKT_CNT;
input [31:0]	FMAC_RX_CRC_ERR_CNT;
input [31:0]	FMAC_DCNT_OVERRUN;
input [31:0]	FMAC_DCNT_LINK_ERR;
input [31:0]	FMAC_PKT_CNT_OVERSIZE;
input [31:0]	FMAC_PHY_STAT;
input	[31:0]	fmac_ctrl1	;

input	[31:0]	FMAC_PKT_CNT_JABBER		;		  //i-32
input	[31:0]	FMAC_PKT_CNT_FRAGMENT	;		   //i-32
input	[31:0]	FMAC_RAW_FRAME_CNT	;			   //i-32
input	[31:0]	FMAC_BAD_FRAMESOF_CNT	;		   //i-32
	
input	[31:0]	STAT_GROUP_LO_DOUT	;			// i-32, clk250
input	[31:0]	STAT_GROUP_HI_DOUT	;			// i-32, clk250
output	[9:0]	STAT_GROUP_addr	;				// o-10, address to select the register within the STAT GROUP
output			STAT_GROUP_sel	;				// o-1,
output			fmac_rx_clr_en	;				// o-1,
	
output			fmac_tx_clr_en	;				 // o-1,
input			reg_rd_start;
input			reg_rd_done;
input [15:0]	host_addr_reg;
input [3:0]		SYS_ADDR;

input			rx_auto_clr_en;
input			tx_auto_clr_en;


input	[32:0]		FMAC_RX_PKT_CNT64_LO;
input	[31:0]		FMAC_RX_PKT_CNT64_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT127_LO;
input	[31:0]		FMAC_RX_PKT_CNT127_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT255_LO;
input	[31:0]		FMAC_RX_PKT_CNT255_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT511_LO;
input	[31:0]		FMAC_RX_PKT_CNT511_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT1023_LO;
input	[31:0]		FMAC_RX_PKT_CNT1023_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT1518_LO;
input	[31:0]		FMAC_RX_PKT_CNT1518_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT2047_LO;
input	[31:0]		FMAC_RX_PKT_CNT2047_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT4095_LO;
input	[31:0]		FMAC_RX_PKT_CNT4095_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT8191_LO;
input	[31:0]		FMAC_RX_PKT_CNT8191_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT9018_LO;
input	[31:0]		FMAC_RX_PKT_CNT9018_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT9022_LO;
input	[31:0]		FMAC_RX_PKT_CNT9022_HI;
     	      		
input	[32:0]		FMAC_RX_PKT_CNT9199P_LO;
input	[31:0]		FMAC_RX_PKT_CNT9199P_HI;


output [31:0]	FMAC_REGDOUT;


wire	atomic_cycle_mode;
reg		atm_latch_en;
reg		atm_latch_en_dly;
reg		[31:0]	local32_hi;		 //keeping the upper 32 bit of the 64 bit reg
reg		[31:0]	my_local32_hi;	 //temp mux
reg		[8:0]	atm_tag;		 //keeping the addr of the previous reg read for checking matching
reg				atm_valid;
wire			tag_match;

reg		reg_rd_start_int;
reg		reg_rd_done_int;
reg		atomic_hi_en;					  //enable the access to the ATOMIC HI register

reg	[31:0]	FMAC_RAW_FRAME_CNT_DLY1	;		  //i-32
reg	[31:0]	FMAC_BAD_FRAMESOF_CNT_DLY1	;	  //i-32

reg [8:0]	addr_buf0;
reg [9:0]	STAT_GROUP_addr;		//only bit 9:3 are used, for used by the new statistic regs
reg			upper32_addr;

reg			STAT_GROUP_sel;
reg			fmac_rx_clr_en;
reg			fmac_tx_clr_en;

reg	[3:0]	host_addr_int;				//only upper nibble of the host addr

reg			high_sel;
always @ (posedge clk)
	begin
	addr_buf0	 <=	host_addr_reg[11:3];
	
	upper32_addr	<= host_addr_reg[2];
	
   //keeping the bit numbering the same as the address
	host_addr_int		<= host_addr_reg[15:12];
	
	STAT_GROUP_addr	 	<= {host_addr_reg[9:3], 3'b000} ;
	
	STAT_GROUP_sel		<= host_addr_reg[11];
	
	fmac_rx_clr_en			<= 
		!reset_ ? 1'b0 :
		(host_addr_int == SYS_ADDR) & reg_rd_done_int & rx_auto_clr_en ;
		
	fmac_tx_clr_en			<= 
		!reset_ ? 1'b0 :
		(host_addr_int == SYS_ADDR) & reg_rd_done_int & tx_auto_clr_en ;

	high_sel				<=
		host_addr_reg[2] | host_addr_reg[1];
	end
	

parameter	[9:0]	FMAC_CTRL_addr							= 	10'h0_00;
parameter	[9:0]	FMAC_TX_PKT_CNT_addr					= 	10'h0_20;
parameter 	[9:0]	FMAC_RX_PKT_CNT_addr					= 	10'h0_28;	  // - RX_PKT_CNT_LO
parameter	[9:0]	FMAC_TX_BYTE_CNT_addr					= 	10'h0_30;	  // - RX_PKT_CNT_LO
parameter	[9:0]	FMAC_RX_BYTE_CNT_addr  					= 	10'h0_38;
parameter 	[9:0]	FMAC_RX_UNDERSIZE_PKT_CNT_addr			= 	10'h0_40;
parameter 	[9:0]	FMAC_RX_CRC_ERR_CNT_addr				= 	10'h0_48;
parameter	[9:0]	FMAC_DCNT_OVERRUN_addr 			   		= 	10'h0_50;
parameter	[9:0]	FMAC_DCNT_LINK_ERR_addr 		   		= 	10'h0_58;
parameter	[9:0]	FMAC_PKT_CNT_OVERSIZE_addr 		   		= 	10'h0_60;
parameter	[9:0]	FMAC_PHY_STAT_addr  			 		= 	10'h0_68;
parameter	[9:0]	FMAC_CTRL1_addr  			 			= 	10'h0_70;
parameter	[9:0]	FMAC_PKT_CNT_JABBER_addr 		   		= 	10'h0_78;
parameter	[9:0]	FMAC_PKT_CNT_FRAGMENT_addr 		   		= 	10'h0_80;
parameter	[9:0]	FMAC_RAW_FRAME_CNT_addr 		   		= 	10'h0_88;
parameter	[9:0]	FMAC_BAD_FRAMESOF_CNT_addr 		   		= 	10'h0_90;

// Decode address to Select lines 

wire		FMAC_CTRL_sel		;
wire		FMAC_TX_PKT_CNT_sel;
wire		FMAC_RX_PKT_CNT_sel;
wire		FMAC_TX_BYTE_CNT_sel;
wire		FMAC_RX_BYTE_CNT_sel;
wire		FMAC_RX_UNDERSIZE_PKT_CNT_sel;
wire	 	FMAC_RX_CRC_ERR_CNT_sel;
wire		FMAC_DCNT_OVERRUN_sel;
wire		FMAC_DCNT_LINK_ERR_sel;

wire		FMAC_PKT_CNT_OVERSIZE_sel;
wire		FMAC_PHY_STAT_sel;
wire		FMAC_CTRL1_sel		;

wire		FMAC_PKT_CNT_JABBER_sel		;
wire		FMAC_PKT_CNT_FRAGMENT_sel	;
wire		FMAC_RAW_FRAME_CNT_sel	;
wire		FMAC_BAD_FRAMESOF_CNT_sel	;

assign	FMAC_CTRL_sel					=	( addr_buf0[6:0] == FMAC_CTRL_addr[9:3]						); 
assign	FMAC_TX_PKT_CNT_sel				=	( addr_buf0[6:0] == FMAC_TX_PKT_CNT_addr[9:3]				); 
assign	FMAC_TX_BYTE_CNT_sel			=	( addr_buf0[6:0] == FMAC_TX_BYTE_CNT_addr[9:3]				); 
assign	FMAC_RX_PKT_CNT_sel				=	( addr_buf0[6:0] == FMAC_RX_PKT_CNT_addr[9:3]				); 
assign	FMAC_RX_BYTE_CNT_sel			=	( addr_buf0[6:0] == FMAC_RX_BYTE_CNT_addr[9:3]				); 
assign	FMAC_RX_UNDERSIZE_PKT_CNT_sel	=	( addr_buf0[6:0] == FMAC_RX_UNDERSIZE_PKT_CNT_addr[9:3]		); 
assign	FMAC_RX_CRC_ERR_CNT_sel			=	( addr_buf0[6:0] == FMAC_RX_CRC_ERR_CNT_addr[9:3]			);
assign	FMAC_DCNT_OVERRUN_sel			=	( addr_buf0[6:0] == FMAC_DCNT_OVERRUN_addr[9:3]				); 
assign	FMAC_DCNT_LINK_ERR_sel			=	( addr_buf0[6:0] == FMAC_DCNT_LINK_ERR_addr[9:3]			); 
assign	FMAC_PKT_CNT_OVERSIZE_sel		=	( addr_buf0[6:0] == FMAC_PKT_CNT_OVERSIZE_addr[9:3]			); 
assign	FMAC_PHY_STAT_sel				=	( addr_buf0[6:0] == FMAC_PHY_STAT_addr[9:3]					); 	
assign	FMAC_CTRL1_sel					=	( addr_buf0[6:0] == FMAC_CTRL1_addr[9:3]					); 
assign	FMAC_PKT_CNT_JABBER_sel			=	( addr_buf0[6:0] == FMAC_PKT_CNT_JABBER_addr[9:3]			); 
assign	FMAC_PKT_CNT_FRAGMENT_sel		=	( addr_buf0[6:0] == FMAC_PKT_CNT_FRAGMENT_addr[9:3]			); 
assign	FMAC_RAW_FRAME_CNT_sel			=	( addr_buf0[6:0] == FMAC_RAW_FRAME_CNT_addr[9:3]			); 
assign	FMAC_BAD_FRAMESOF_CNT_sel		=	( addr_buf0[6:0] == FMAC_BAD_FRAMESOF_CNT_addr[9:3]			); 


//DELAYED VERSION FOR READING - better timing
reg		DLY_FMAC_CTRL_sel		;
reg		DLY_FMAC_TX_PKT_CNT_sel;
reg		DLY_FMAC_RX_PKT_CNT_sel;
reg		DLY_FMAC_TX_BYTE_CNT_sel;
reg		DLY_FMAC_RX_BYTE_CNT_sel;
reg		DLY_FMAC_RX_UNDERSIZE_PKT_CNT_sel;
reg	 	DLY_FMAC_RX_CRC_ERR_CNT_sel;
reg		DLY_FMAC_DCNT_OVERRUN_sel;
reg		DLY_FMAC_DCNT_LINK_ERR_sel;
reg		DLY_FMAC_PKT_CNT_OVERSIZE_sel;
reg		DLY_FMAC_PHY_STAT_sel;
reg		DLY_FMAC_CTRL1_sel		;
reg		DLY_FMAC_PKT_CNT_JABBER_sel;
reg		DLY_FMAC_PKT_CNT_FRAGMENT_sel;
reg		DLY_FMAC_RAW_FRAME_CNT_sel;
reg		DLY_FMAC_BAD_FRAMESOF_CNT_sel;

always@(posedge clk)
begin
		DLY_FMAC_CTRL_sel					<= !reset_ ? 1'b0 : FMAC_CTRL_sel			      		;
		DLY_FMAC_TX_PKT_CNT_sel				<= !reset_ ? 1'b0 : FMAC_TX_PKT_CNT_sel			      	;
		DLY_FMAC_RX_PKT_CNT_sel				<= !reset_ ? 1'b0 : FMAC_RX_PKT_CNT_sel				   	;
		DLY_FMAC_TX_BYTE_CNT_sel			<= !reset_ ? 1'b0 : FMAC_TX_BYTE_CNT_sel			   	;
		DLY_FMAC_RX_BYTE_CNT_sel			<= !reset_ ? 1'b0 : FMAC_RX_BYTE_CNT_sel			   	;
		DLY_FMAC_RX_UNDERSIZE_PKT_CNT_sel	<= !reset_ ? 1'b0 : FMAC_RX_UNDERSIZE_PKT_CNT_sel		;
	 	DLY_FMAC_RX_CRC_ERR_CNT_sel			<= !reset_ ? 1'b0 : FMAC_RX_CRC_ERR_CNT_sel			    ;
		DLY_FMAC_DCNT_OVERRUN_sel			<= !reset_ ? 1'b0 : FMAC_DCNT_OVERRUN_sel			    ;
		DLY_FMAC_DCNT_LINK_ERR_sel			<= !reset_ ? 1'b0 : FMAC_DCNT_LINK_ERR_sel			    ;
		DLY_FMAC_PKT_CNT_OVERSIZE_sel		<= !reset_ ? 1'b0 : FMAC_PKT_CNT_OVERSIZE_sel		   	;
		DLY_FMAC_PHY_STAT_sel				<= !reset_ ? 1'b0 : FMAC_PHY_STAT_sel				    ;
		DLY_FMAC_CTRL1_sel					<= !reset_ ? 1'b0 : FMAC_CTRL1_sel			      		;
	
		DLY_FMAC_PKT_CNT_JABBER_sel			<= !reset_ ? 1'b0 : FMAC_PKT_CNT_JABBER_sel		   		;
		DLY_FMAC_PKT_CNT_FRAGMENT_sel		<= !reset_ ? 1'b0 : FMAC_PKT_CNT_FRAGMENT_sel		   	;
		DLY_FMAC_RAW_FRAME_CNT_sel			<= !reset_ ? 1'b0 : FMAC_RAW_FRAME_CNT_sel		   	;
		DLY_FMAC_BAD_FRAMESOF_CNT_sel		<= !reset_ ? 1'b0 : FMAC_BAD_FRAMESOF_CNT_sel		   	;
end
	

reg		[31:0]	REGU_GROUP_LO_DOUT;

 // REGULAR GROUP register - LOW 32
always@(posedge clk)
	begin
		FMAC_RAW_FRAME_CNT_DLY1		<= !reset_ ? 32'h0	   	: FMAC_RAW_FRAME_CNT	;	
		FMAC_BAD_FRAMESOF_CNT_DLY1	<= !reset_ ? 32'h0 		: FMAC_BAD_FRAMESOF_CNT	;	
	
	REGU_GROUP_LO_DOUT		<=
	
			fmac_ctrl_dly 				&	{32{ DLY_FMAC_CTRL_sel					}}	| 
			fmac_ctrl1		 			&	{32{ DLY_FMAC_CTRL1_sel					}}	| 
			
			FMAC_TX_PKT_CNT 			&	{32{ DLY_FMAC_TX_PKT_CNT_sel			}}  | 
			FMAC_TX_BYTE_CNT 			&	{32{ DLY_FMAC_TX_BYTE_CNT_sel			}}  | 
			FMAC_RX_PKT_CNT_LO 			&	{32{ DLY_FMAC_RX_PKT_CNT_sel			}}  | 
			FMAC_RX_BYTE_CNT_LO 		&	{32{ DLY_FMAC_RX_BYTE_CNT_sel			}}  | 
			FMAC_RX_UNDERSIZE_PKT_CNT 	&	{32{ DLY_FMAC_RX_UNDERSIZE_PKT_CNT_sel	}}  | 
			FMAC_RX_CRC_ERR_CNT 		&	{32{ DLY_FMAC_RX_CRC_ERR_CNT_sel		}}  |
			FMAC_DCNT_OVERRUN 			&	{32{ DLY_FMAC_DCNT_OVERRUN_sel			}}  | 
			FMAC_DCNT_LINK_ERR 			&	{32{ DLY_FMAC_DCNT_LINK_ERR_sel			}}  | 
			FMAC_PKT_CNT_OVERSIZE 		&	{32{ DLY_FMAC_PKT_CNT_OVERSIZE_sel		}}  | 
			FMAC_PHY_STAT 				&	{32{ DLY_FMAC_PHY_STAT_sel				}}  |
			FMAC_PKT_CNT_JABBER 		&	{32{ DLY_FMAC_PKT_CNT_JABBER_sel		}}  | 
			
			FMAC_RAW_FRAME_CNT_DLY1 		&	{32{ DLY_FMAC_RAW_FRAME_CNT_sel			}}	|     
			FMAC_BAD_FRAMESOF_CNT_DLY1 		&	{32{ DLY_FMAC_BAD_FRAMESOF_CNT_sel		}}	| 
			FMAC_PKT_CNT_FRAGMENT 		&	{32{ DLY_FMAC_PKT_CNT_FRAGMENT_sel		}}   
			;	
		
	end

reg		[31:0]	REGU_GROUP_HI_DOUT;
always@ (posedge clk)
	begin
		if (!reset_) begin
			REGU_GROUP_HI_DOUT		<=		0;
		end
		else begin
			case (host_addr_reg)
				16'h102C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT_HI;
				16'h103C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_BYTE_CNT_HI;
				16'h1804	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT64_HI;
				16'h180C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT127_HI;
				16'h1814	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT255_HI;
				16'h181C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT511_HI;
				16'h1824	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT1023_HI;
				16'h182C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT1518_HI;
				16'h1834	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT2047_HI;
				16'h183C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT4095_HI;
				16'h1844	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT8191_HI;
				16'h184C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT9018_HI;
				16'h1854	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT9022_HI;
				16'h185C	:	REGU_GROUP_HI_DOUT		<=		FMAC_RX_PKT_CNT9199P_HI;		 
				default		:	REGU_GROUP_HI_DOUT		<= 		0;
			endcase
		end
	end
reg [31:0]	FMAC_REGDOUT;


always@(posedge clk)
begin
							
	FMAC_REGDOUT	<=		high_sel	?
							REGU_GROUP_HI_DOUT		:
							{32{ !STAT_GROUP_sel & !upper32_addr	}} & 		REGU_GROUP_LO_DOUT	|
							{32{  STAT_GROUP_sel & !upper32_addr	}} & 		STAT_GROUP_LO_DOUT	|
							{32{ atomic_hi_en }} & local32_hi
							;
										
end


// ATOMIC CONTROLLER - Enforce ATOMICITY for 64 bit reg reads
assign		atomic_cycle_mode = 
							( !STAT_GROUP_sel & DLY_FMAC_RX_PKT_CNT_sel 	& !upper32_addr )
						|	( !STAT_GROUP_sel & DLY_FMAC_RX_BYTE_CNT_sel 	& !upper32_addr )
						|	(  STAT_GROUP_sel 		& !upper32_addr )
						
						;

 	//HI access cycle
assign	tag_match	= (addr_buf0 == atm_tag);


always@(posedge clk)	
	if (!reset_)
		begin
		reg_rd_start_int	<= 1'b0;
		reg_rd_done_int	<= 1'b0;
		end
	else
		begin
		reg_rd_start_int	<= reg_rd_start;		//reg_rd_start and done are from MAC_REG module
		reg_rd_done_int	<= reg_rd_done;	
		end
		

always@(posedge clk)		
begin
	
		 	//local ATMOMIC HI valid bit
	if (!reset_)
		atm_valid	<= 1'b0;
	else case (atm_valid)
		1'b0:
		atm_valid	<=
			atm_latch_en_dly & atomic_cycle_mode ? 1'b1 : 1'b0;
			
		1'b1:
		atm_valid	<=
			(reg_rd_done & tag_match & upper32_addr) ? 1'b0 : 1'b1;
			
		endcase

if (!reset_ )
	begin
	atm_latch_en		<= 1'b0 ;
	atm_latch_en_dly	<= 1'b0 ;
	local32_hi			<= 32'h0 ;
	atm_tag				<= 9'h0 ;
	my_local32_hi		<= 32'h0 ;
	atomic_hi_en		<= 1'b0 ;
	
	end
else
	begin		
	atm_latch_en		<= reg_rd_start_int & atomic_cycle_mode;				//enable latching if it's atomic access start
	atm_latch_en_dly	<= atm_latch_en;										//delay to wait for address propagation
	local32_hi			<= atm_latch_en_dly ? my_local32_hi : local32_hi;
	atm_tag				<= atm_latch_en_dly ? addr_buf0 : atm_tag;
				
	my_local32_hi			<=
	                        	{32{ !STAT_GROUP_sel & DLY_FMAC_RX_PKT_CNT_sel	}} &	FMAC_RX_PKT_CNT_HI		
							|	{32{ !STAT_GROUP_sel & DLY_FMAC_RX_BYTE_CNT_sel	}} &	FMAC_RX_BYTE_CNT_HI		
							|	{32{  STAT_GROUP_sel			}} & 	STAT_GROUP_HI_DOUT
							
									;
	
	atomic_hi_en	<=
			atomic_hi_en & reg_rd_done ? 1'b0 :
			atm_valid & tag_match & upper32_addr ? 1'b1 :
			atomic_hi_en
			;
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


`timescale 1ns / 1ns                                                                                                                                               

module g2x_ctrl(
            
    clk,			// i-1
	reset_,			// i-1
                	
	mode_10G ,		//i-1, speed modes
	mode_5G  ,		//i-1, 
	mode_2p5G, 		//i-1, 
	mode_1G  ,		//i-1, 
	
	gf_bcnt_empty,	// i-1
	
	data_in,		// i-64
	ctrl_in,		// i-8
	bcnt_in,		// i-16
	
	gige_bcnt_fifo_re,	// o-1
	gige_data_fifo_re,	// o-1
	
	data_out,		// o-64
	ctrl_out,		// o-8
	            	
	dbg				// o-1, test
);

	input       		clk;
	input				reset_;

	input				mode_10G ;	//i-1, speed modes
	input				mode_5G  ;	//i-1, 
	input				mode_2p5G; 	//i-1, 
	input				mode_1G  ;	//i-1, 
	
	input				gf_bcnt_empty;
	
	input		[63:0]	data_in;
	input		[ 7:0] 	ctrl_in;
	input		[15:0] 	bcnt_in;
	        	
	output	reg 		gige_bcnt_fifo_re;
	output	reg 		gige_data_fifo_re;
	
	output	reg	[63:0]	data_out;
	output	reg	[ 7:0] 	ctrl_out;
	
	output  	 		dbg;

	reg			[15:0] 	qwd_cnt;
	reg 				gige_data_fifo_re_dly1;

			
	//State Machine to read from the gige_rx_bcnt_fifo
	reg		[7:0] 	gf_state;
	
	wire			gf_idle_st;
	wire			gf_rd_bcnt_st;
	wire			gf_bcnt_buf_st;
	wire			gf_rd_data_st;
	wire			gf_done_st;
	
		
	parameter [7:0]       
			GF_IDLE   		= 	8'h01,  
			GF_RD_BCNT		= 	8'h02, 	//read bcnt
			GF_BCNT_BUF		= 	8'h04, 	//store bcnt
			GF_RD_DATA	    = 	8'h08,	//read data based on bcnt	
			GF_DONE   		= 	8'h80;    
	
				
	assign	gf_idle_st		= 	gf_state[0];   
	assign  gf_rd_bcnt_st	= 	gf_state[1];             
	assign  gf_bcnt_buf_st	= 	gf_state[2];             
	assign	gf_rd_data_st	= 	gf_state[3];   
	assign	gf_done_st		= 	gf_state[7];
	
	assign 	dbg	= 1'b0;
		
	
	always @ (posedge clk) begin             
	               	                                
		if (!reset_) begin   
		                       
			gf_state			<=	GF_IDLE ; 
					     
		end  
		                          
		else begin                          
		                               
			if (gf_idle_st)
					//if bcnt_fifo is not empty, i.e. there is atleast one packet              
					gf_state	<=	(!gf_bcnt_empty)? GF_RD_BCNT : GF_IDLE;                            
					                             					                             
			else if (gf_rd_bcnt_st)  
					//read bcnt            
					gf_state	<=	GF_BCNT_BUF;
					  
			else if (gf_bcnt_buf_st)              
					gf_state	<=	GF_RD_DATA;  
											
			else if (gf_rd_data_st)            
					//read data till qwd_cnt is zero              
					gf_state	<=	(qwd_cnt == 16'b0)? GF_DONE : GF_RD_DATA;		
			 
			else if (gf_done_st)                          		
					gf_state	<=	GF_IDLE;                       	  		
		 			    									                          		                             
		end                 
	                                
	end		
	


	always @ (posedge clk) begin
	
	    if(!reset_) begin

	        gige_bcnt_fifo_re	<=	1'b0;
	        gige_data_fifo_re	<=	1'b0;
	    	                  
	    	data_out			<=	64'h0707_0707_0707_0707;
	        ctrl_out			<=	8'hff;
	        
	        qwd_cnt				<=	16'b0;
			
			gige_data_fifo_re_dly1	<=	1'b0;
	                
		end
	    else begin
			//dly signal
	    	gige_data_fifo_re_dly1	<=	gige_data_fifo_re;
	    
	    	data_out			<=	(gige_data_fifo_re_dly1)?	data_in : 64'h0707_0707_0707_0707;
	        ctrl_out			<=	(gige_data_fifo_re_dly1)?	ctrl_in : 8'hff;
	    	        
	    	if (gf_idle_st) begin
	    		//if bcnt_fifo is not empty, i.e. there is atleast one packet
	    		gige_bcnt_fifo_re	<=	(!gf_bcnt_empty)? 1'b1 : 1'b0;
	    	end
			else if (gf_rd_bcnt_st) begin
				//bcnt read
				gige_bcnt_fifo_re	<=	1'b0;
			end
			else if (gf_bcnt_buf_st) begin
				//bcnt_in[15] indicates if the packet is sof4 type. calculate qwd_cnt from the bcnt.
				qwd_cnt				<=	((bcnt_in[15] == 1'b1) & ((|bcnt_in[2:0] == 3'b0) | (bcnt_in[2:0] > 3'b100)))?	(bcnt_in[14:3] + (|bcnt_in[2:0]) + 1'b1) :
											(bcnt_in[14:3] + (|bcnt_in[2:0]));										
			end
			else if (gf_rd_data_st) begin
				qwd_cnt				<=	(qwd_cnt == 16'b0)? 16'b0 : (qwd_cnt - 1'b1);
				gige_data_fifo_re	<=	(qwd_cnt == 16'b0)? 1'b0  : 1'b1;
			end
			else begin
				qwd_cnt				<=	16'b0;
				gige_bcnt_fifo_re	<=	1'b0;
				gige_data_fifo_re	<=	1'b0;
			end
	    	        					
		end
	 
	end	
	
	
	
	//============== Simulation ONLY =======================//
	//synopsys translate_off                                  
		                                                         
	reg [64*8-1:0] ascii_gf_state;                          
	                                                          
	always@(gf_state)                                       
	begin                                                     
		case(gf_state)                                         
	    	GF_IDLE   	:	ascii_gf_state	=	"GF_IDLE";        
			GF_RD_BCNT	:	ascii_gf_state	=	"GF_RD_BCNT";          
			GF_BCNT_BUF	:	ascii_gf_state	=	"GF_BCNT_BUF";          
			GF_RD_DATA	:	ascii_gf_state	=	"GF_RD_DATA";            
			GF_DONE   	:	ascii_gf_state	=	"GF_DONE";
		endcase                                                  
	end 
	     
	//synopsys translate_on
	
	

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

module gige_crc32x64(
   	clk,    		//i-1
   	rst_,           //i-1
   	             
   	clr_,           //i-1
   	bytes,          //i-3
   	we_,            //i-1
   	last_,          //i-1
   	cdin,           //i-64
   	pdin,           //i-64
   	             
   	crc32,          //o-32
   	crc32_vld_      //o-1
    );
   
input clk;
input rst_;
input clr_;
input [63:0] cdin;
input [63:0] pdin;
input [02:0] bytes;
input we_;
input last_;
output [31:0] crc32;
output crc32_vld_;
reg    crc32_vld_;
reg    [31:0] new_crc;
wire [63:0] din_int;
reg we_int_;
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
	//crc32     <=   crc32_wire;
	new_crc   <=   state[0] ? init_value : ((state[1] & !we_int_) ? nextCRC32_D64(din_int,new_crc) : new_crc);
	case(bytes)
	0: bdin <=   cdin;
	1: bdin <=   state[0] ? {cdin[7:0], 56'h0} : {cdin[7:0], pdin[63:8]};
	2: bdin <=   state[0] ? {cdin[15:0], 48'h0} : {cdin[15:0], pdin[63:16]};
	3: bdin <=   state[0] ? {cdin[23:0], 40'h0} : {cdin[23:0], pdin[63:24]};
	4: bdin <=   state[0] ? {cdin[31:0], 32'h0} : {cdin[31:0], pdin[63:32]};
	5: bdin <=   state[0] ? {cdin[39:0], 24'h0} : {cdin[39:0], pdin[63:40]};
	6: bdin <=   state[0] ? {cdin[47:0], 16'h0} : {cdin[47:0], pdin[63:48]};
	7: bdin <=   state[0] ? {cdin[55:0], 8'h0}  : {cdin[55:0], pdin[63:56]};
	endcase
end

always@(posedge clk)
if(!rst_)
begin
	state   <=   IDLE;
	//new_crc <=   ~0; 
	we_int_ <=   1'b1;
	crc32_vld_<=   1'b1;
	last_int_ <=   1'b1;
end
else
begin
	we_int_  <=   we_;
	last_int_ <=   last_;
	crc32_vld_<=   last_int_;
	
	case(state)
	IDLE: 
	begin
		state   <=   we_ ? IDLE : CALC;
	end
	CALC:
	begin
		state   <=   last_int_ ? CALC : WAIT1;
	end
	WAIT1:
	begin
		state   <=   clr_ ? WAIT1 : IDLE;
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
`timescale 1ns / 1ns                                                                                                                                               
// synopsys translate_on

module gige_s2p (
	clk,				// i-1
	reset_,				// i-1

	mode_10G ,			//i-1, speed modes
	mode_5G  ,			//i-1, speed modes
	mode_2p5G, 			//i-1, speed modes
	mode_1G  ,			//i-1, speed modes
	
	data_in,			// i-8, input data
	ctrl_in,			// i-1
	pdet_in,			// i-1
	
	data_out,			// o-64
	ctrl_out,			// o-8
	
	loopback_en,		// i-1
	sfp_los,			// i-1
	linkup,				// o-1
	x_we,
	x_bcnt_we,
	x_byte_cnt
	);

input 			clk;
input 			reset_;

input			mode_10G ;		//i-1, speed modes
input			mode_5G  ;		//i-1, speed modes
input			mode_2p5G; 		//i-1, speed modes
input			mode_1G  ;		//i-1, speed modes


input 	[7:0]	data_in;		// i-8, input data
input 			ctrl_in;		// i-1
input			pdet_in;		// i-1

output	[63:0]	data_out;		// o-64, data output
output	[07:0]	ctrl_out;		// o-8, control output

input			loopback_en;	 // i-1
input			sfp_los;		 // i-1
output			linkup;			 // o-1
output          x_we;
output          x_bcnt_we;
output	[15:0]	x_byte_cnt;

reg			linkup;
reg         x_we;
reg         x_bcnt_we;
reg [15:0]	x_byte_cnt;

reg 	[7:0]	data_in_dly;
reg 			ctrl_in_dly;

reg			frame;
reg			insert;

reg			sof;
reg			eof;

reg			eof0;
reg			eof1;
reg			eof2;	
reg			eof3;
reg			eof4;
reg			eof5;
reg			eof6;
reg	[15:0]	count;

reg			pvld; 				   // parallel data is valid

reg [63:0]	data_out;
reg [7:0]	ctrl_out;

reg [7:0]	dff0, dff1, dff2, dff3, dff4, dff5, dff6, dff7;
reg 		cff0, cff1, cff2, cff3, cff4, cff5, cff6, cff7;

wire [63:0] pdata = {dff0, dff1, dff2, dff3, dff4, dff5, dff6, dff7};		  // parallel data
wire [7:0]	pctrl = {cff0, cff1, cff2, cff3, cff4, cff5, cff6, cff7};		  // parallel control

reg 		eof_dly1;
reg 		eof_dly2;
 
always @ (posedge clk)
begin
	if (!reset_)
	begin
		data_in_dly <= 8'h07;
		ctrl_in_dly <= 1'b1; 
	
		frame <= 1'b0;
		insert <= 1'b0;
		
		sof <= 1'b0;
		eof <= 1'b0;
		eof_dly1 <= 1'b0;
		eof_dly2 <= 1'b0;
		
		eof0 <= 1'b0;
		eof1 <= 1'b0;
		eof2 <= 1'b0;
		eof3 <= 1'b0;
		eof4 <= 1'b0;
		eof5 <= 1'b0;
		eof6 <= 1'b0;
		
		count <= 16'h0;
		pvld <= 1'b0;
		
		data_out <= 64'h0707_0707_0707_0707;
		ctrl_out <= 8'hff;
		x_bcnt_we <= 1'b0;
		x_we <= 1'b0;
		
		x_byte_cnt <= 16'h0;
	end
	
	else
	begin
				
		data_in_dly <= data_in;
		ctrl_in_dly <= ctrl_in;
	
		frame <= (ctrl_in & (data_in == 8'hfb))? 1'b1 : ((ctrl_in & (data_in == 8'hfd))? 1'b0 : frame);
		insert <= frame & !ctrl_in;
	
		sof <= ctrl_in & (data_in == 8'hfb);
		eof <= ctrl_in & (data_in == 8'hfd);
		eof_dly1	<= eof ;
		eof_dly2 <= eof_dly1;
		
		if (mode_1G)
			begin                  
				eof0 <= eof & (count == 16'd7);
				eof1 <= eof & (count == 16'd6);
				eof2 <= eof & (count == 16'd5);
				eof3 <= eof & (count == 16'd4);
				eof4 <= eof & (count == 16'd3);
				eof5 <= eof & (count == 16'd2);
				eof6 <= eof & (count == 16'd1);
				
				count <= (frame & count != 16'h0)? (count - 16'h1) : 16'h7 ;
				
				x_byte_cnt <= (data_in == 8'hfb & ctrl_in) ? 16'd1 :
						(frame) ? x_byte_cnt + 16'd1 :     
						x_byte_cnt;                                       
				
		        x_bcnt_we <= eof_dly2;
				
			end
		    			
		pvld <= (count == 16'h1);
				
		
		casez ({linkup, pvld, eof0, eof1, eof2, eof3, eof4, eof5, eof6})
		9'b11???????:			  // data within the frame
				begin
				data_out <= pdata;
		        ctrl_out <= pctrl;		        
		        x_we <=	1'b1;							
				end
		
		9'b101??????:			  // eof on lane 0
				begin
				data_out <= 64'h0707_0707_0707_07fd;
		        ctrl_out <= 8'hff;
		        x_we <= 1'b1;                  
				end
				
		9'b1001?????:			  // eof on lane 1
				begin
				data_out <= {56'h070707070707fd, dff2};
		        ctrl_out <= {7'b1111111, cff2};
		        x_we <= 1'b1;                  
				end
				
		9'b10001????:			 // eof on lane 2
				begin
				data_out <= {48'h0707070707fd, dff2, dff3};
		        ctrl_out <= {6'b111111, cff2, cff3};
		        x_we <= 1'b1;                  
				end
				
		9'b100001???:			 // eof on lane 3
				begin
				data_out <= {40'h07070707fd, dff2, dff3, dff4};
		        ctrl_out <= {5'b11111, cff2, cff3, cff4};
		        x_we <= 1'b1;      
				end
		
		9'b1000001??:		   // eof on lane 4
				begin
				data_out <= {32'h070707fd, dff2, dff3, dff4, dff5};
		        ctrl_out <= {4'b1111, cff2, cff3, cff4, cff5};
		        x_we <= 1'b1;   
				end
				
		9'b10000001?:			// eof on lane 5
				begin
				data_out <= {24'h0707fd, dff2, dff3, dff4, dff5, dff6};
		        ctrl_out <= {3'b111, cff2, cff3, cff4, cff5, cff6};
		        x_we <= 1'b1;   
				end
				
		9'b100000001:		   // eof on lane 6
				begin
				data_out <= {16'h07fd, dff2, dff3, dff4, dff5, dff6, dff7};
		        ctrl_out <= {2'b11, cff2, cff3, cff4, cff5, cff6, cff7};
		        x_we <= 1'b1;   
				end
			   // If eof on lane 7, it is multiple of 8, pvld will take care of it		
		default:
				begin
				data_out <= 64'h0707_0707_0707_0707;
		        ctrl_out <= 8'hff;
		        x_we <= 1'b0;                  
				end
		endcase
		
	end
end

// Cascading D flip flop 
always @ (posedge clk)
begin	
	if (!reset_)
		begin
			dff0 <= 8'b0;
			dff1 <= 8'b0;
			dff2 <= 8'b0;
			dff3 <= 8'b0;
			dff4 <= 8'b0;
			dff5 <= 8'b0;
			dff6 <= 8'b0;
			dff7 <= 8'b0;
			
			cff0 <= 1'b0;
			cff1 <= 1'b0;
			cff2 <= 1'b0;
			cff3 <= 1'b0;
			cff4 <= 1'b0;
			cff5 <= 1'b0;
			cff6 <= 1'b0;
			cff7 <= 1'b0;
		end
	else if (mode_1G)	
		begin
			dff0 <= data_in;
			dff1 <= dff0;
			dff2 <= dff1;
			dff3 <= dff2;
			dff4 <= dff3;
			dff5 <= dff4;
			dff6 <= dff5;
			dff7 <= dff6;
			
			cff0 <= ctrl_in;
			cff1 <= cff0;
			cff2 <= cff1;
			cff3 <= cff2;
			cff4 <= cff3;
			cff5 <= cff4;
			cff6 <= cff5;
			cff7 <= cff6;
		end		
end


// LINKUP DETECTION 
reg pdet_in_dly;
reg idle_detect;
reg [7:0] consec_idle;
reg link_ok;
reg	link_break;
reg real_los;

always @ (posedge clk)
begin
	if (!reset_)
	begin
		pdet_in_dly <= 1'b0;
		idle_detect <= 1'b0;
		consec_idle <= 8'h0;
		link_ok 	<= 1'b0;
		link_break	<= 1'b0;
		real_los	<= 1'b0;
		linkup		<= 1'b0;
	end
	
	else
	begin
		pdet_in_dly <= pdet_in;
		idle_detect <= pdet_in | pdet_in_dly;
		consec_idle <= linkup? 8'h00 : {consec_idle[6:0], idle_detect};
		link_ok		<= (consec_idle == 8'hff) & !real_los;
		link_break	<= (pdata == 64'h0000_42BC_0000_B5BC) | real_los;
		real_los	<= (sfp_los & !loopback_en);
		linkup		<= link_ok? 1'b1 : (link_break? 1'b0 : linkup);
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

module gige_tx_encap(
	clk,		         // i-1		
	rst_,		// i-1		

	rts,		// o-1		
	wdata,		// o-64		
	rbytes,		// o-16		
	cts,		// i-1		

	psaddr,		// i-48		
	mac_pause_value,	  // i-32
	tx_b2b_dly,		// i-2	
	
	rx_pause,   		// i-1
	rx_pvalue,             // i-16
	rx_pack,            // o-1
	
	txfifo_empty,		 // i-1
	txfifo_rd_en,    	 // o-1
	txfifo_dout,  		 // i-64
	
	xreq,				 // i-1					
	xon,				 // i-1
	xdone				 // o-1
	
	);

		
input [47:0] psaddr;		// pause source address, source mac address in the pause frame to transmit	
input [31:0] mac_pause_value; 	 // [31:16] = tx_pause_value,	[15:0] = rx_pause_value
input [1:0]	 tx_b2b_dly;
				
input txfifo_empty;
output txfifo_rd_en;

input [63:0] txfifo_dout; 		 // output of FIFO to input of this module

input clk;					   //i,
input rst_;					   //i,

output rts;					   //o, to gmii 
output [63:0] wdata;		   //o, data output
output [15:0] rbytes;		   //o, hold the length of data
input	cts;				   //i, from gmii

input rx_pause;
input [15:0] rx_pvalue;
output rx_pack;

// Interface to tx_decap
input	xreq; 		// need to transmit a pause frame, pause value is determined by xon
input	xon;    	// 1: use tx_pause value as in register , 0: use pause value of 0 to abort the previous pause
output	xdone;  	// pause frame has been transmitted

reg txfifo_rd_en;		 //o, read request to the FIFO
reg [15:0] rbytes;		 //o, hold the size of data in BYtes
reg rts;				 //o, request to send to xgmii
reg [63:0] wdata;		 //o-64, data output

reg wsel;
reg [16:0] ptimer;
reg [5:0] p_reg_count;	  // count 64 clk (8 bits per clk) for 512 bit time for each pause value
reg p_start;

reg tx_rdy;				  // tell if there is no pause frame activating
reg rx_pack;
reg rx_pause_sync;
reg [15:0] rx_pvalue_sync;

reg [15:0] bytes_remain;	// how many Bytes of data remaining for transmission 

reg [3:0] count8;
//setting default values
parameter[7:0] 
	IDLE		= 8'h01 ,
	READSIZE	= 8'h02 ,
	READ1		= 8'h04 ,
	WAIT		= 8'h08 ,
	MAC_DAT     = 8'h10 ,
	P_REQ		= 8'h20 ,
	P_PREAM		= 8'h40 ,
	P_PKT		= 8'h80	;
reg [7:0] state;

wire st_idle;		assign	st_idle		=	state[0];
wire st_readsize;	assign	st_readsize = 	state[1];
wire st_mac_dat;	assign	st_mac_dat	=	state[4];
wire st_p_req;		assign	st_p_req 	=	state[5];
wire st_p_pkt;		assign 	st_p_pkt	=	state[7];

reg tx_dvld;

// Counter for tx_b2b_dly
reg [8:0] b2b_cnt_val ;
always @(posedge clk)
begin
	if(!rst_)
	begin
		b2b_cnt_val <= 9'd0 ;
	end
	else
	begin
		case(tx_b2b_dly)
		2'b01 : b2b_cnt_val <= 9'd13 ; 			 // 16x8 bit delay (design already has 2, count another 14 clocks (13 to 0))
		2'b10 : b2b_cnt_val <= 9'd61 ; 	
		2'b11 : b2b_cnt_val <= 9'd509 ; 
		default: b2b_cnt_val <= 9'd0 ; 	
		endcase
	end
end

reg [8:0] b2b_counter;
reg		  b2b_ok;
always @ (posedge clk)
begin
	if (!rst_)
	begin
		b2b_counter	<=	9'd0;
		b2b_ok		<=	1'b1;
	end
	
	else
	begin
		b2b_counter <= (st_mac_dat)? b2b_cnt_val : ((st_idle & |b2b_counter)? (b2b_counter - 9'd1) : b2b_counter);
		b2b_ok		<=	!(|b2b_counter); 			 // b2b_counter == 9'h0
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
		p_reg_count <=   6'd63 ;
		p_start <=   0;
	end
	
	else
	begin
		ptimer    <=   rx_pause_sync ? {rx_pvalue_sync - 17'h1} : (ptimer[16] ? ptimer : ((|p_reg_count)? ptimer: (ptimer - 17'h1)));
		p_start <=   ptimer[16]? 1'b0 : (rx_pause_sync? 1'b0 : 1'b1);
		p_reg_count <=   p_start? ((|p_reg_count)? (p_reg_count - 6'd1) : 6'd63) : 6'd63;
	end
end

 // Transmit Pause
reg [63:0] 	p_data;
reg	[2:0]	p_cnt;
reg			p_1;
reg			p_done;
reg			p_send;
reg			xdone;
reg			clk_pulse;
reg [2:0]	p_qwcnt;

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
		clk_pulse <= 1'b0;
		p_qwcnt <= 3'h0;
	end
	
	else
	begin
		p_cnt <= st_p_pkt? (p_cnt - 3'd1) : 3'd7;
		p_1 <= st_p_req? 1'b1 : (clk_pulse? 1'b0 : p_1);
		p_done <= xdone;
		p_send <= (p_1 & clk_pulse)? 1'b1 : (p_done? 1'b0 : p_send);
		xdone  <= clk_pulse & (p_qwcnt == 8'h7);
		clk_pulse <= p_cnt == 3'h2;
		p_qwcnt <= clk_pulse? (p_qwcnt + 3'd1) : p_qwcnt;
		
		case (p_qwcnt)
		3'b000: p_data <= {psaddr[39:32], psaddr[47:40], 48'h0100_00c2_8001}; 
		3'b001: p_data <= {32'h0100_0888, psaddr[7:0], psaddr[15:8], psaddr[23:16], psaddr[31:24]};	
		3'b010: p_data <= xon? {48'h0, mac_pause_value[23:16], mac_pause_value[31:24]}: 64'h0;
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
		wdata	<=	p_send? p_data : (wsel? 64'hd5555555555555FB : txfifo_dout);
	
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
	count8 <= 4'd6;
	rts <= 1'b0;
end
else
begin
	tx_rdy    <=   ptimer[16];
	rx_pack   <=   rx_pause_sync; 
	rts		  <=   st_readsize | st_p_req;
	
	case(state)
	// disable the read request. 
	IDLE:
	begin
		wsel  <= 1'b1;
		if (b2b_ok & cts & xreq)
		begin
			state <= P_REQ;
			txfifo_rd_en <= 1'b0;
		end
		
		else if (b2b_ok & !txfifo_empty & tx_rdy & !rx_pause_sync & cts)
		begin
			state <= READSIZE;
			txfifo_rd_en <= 1'b1;
		end
		
		else
		begin
			state <= IDLE;
			txfifo_rd_en <= 1'b0;
		end
	end
	// disable the read request to the FIFo
	READSIZE:
	begin
		wsel  <= 1'b1;
		txfifo_rd_en <=   1'b0;
		state <=   READ1;
	end
// Collect the total data size in BYtes	
	READ1:
	begin
		txfifo_rd_en <=   1'b0;
		state <=   WAIT;
		rbytes <=   txfifo_dout[15:0];
		bytes_remain <=   txfifo_dout[15:0]-16'h8;	   // calculate how many bytes remaining to transmit
		wsel <= 1'b1;
		count8 <= 4'd6;
		tx_dvld <= 1'b1;
	end
	// wait state to transmit one byte of data.
	WAIT:
	begin
		state <=  (|count8)? WAIT : (tx_dvld)? MAC_DAT : IDLE;
		count8 <= count8 - 4'd1;
		txfifo_rd_en <= (count8 == 4'd1) & tx_dvld;
		wsel <= (|count8)? wsel : (tx_dvld)? 1'b0 : 1'b1;
	end
	
	MAC_DAT:
	begin
		wsel <= 1'b0;
		state <= WAIT;
		bytes_remain <=   bytes_remain - 16'h8;
		tx_dvld <=   (bytes_remain[15] || bytes_remain == 0)? 1'b0: 1'b1;
		count8 	  <=   (bytes_remain[15] || bytes_remain == 0)? 4'd12: 4'd6;
		txfifo_rd_en <= 1'b0;
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
	WAIT: 		ascii_state = "WAIT";
	MAC_DAT: 	ascii_state = "MAC_DAT";
	P_REQ:	    ascii_state = "P_REQ";  
	P_PREAM:	ascii_state = "P_PREAM";
	P_PKT:	    ascii_state = "P_PKT";
	default: 	ascii_state = "unknown";
	endcase
	
end
//synopsys translate_on


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

module gige_tx_gmii(
	clk250,			 // i-1
	clk125,   		// i-1
	rst_,  			// i-1
	
	// Interface to tx_encap
	rts,    		  // i-1
	rdata,  		  // i-64
	rbytes,			  // i-16
	cts,			  // o-1
	
	gmii_txd,		  // o-8
	gmii_txc,		  // o-1
	gmii_tx_en,		  // o-1
	gmii_tx_vld,	  // o-1
	
	FMAC_TX_PKT_CNT,  	  // o-32
	FMAC_TX_BYTE_CNT,	  // o-32
	fmac_tx_clr_en		  // i-1
	
	);

	
input clk250;			// i-1
input clk125;			// i-1
input rst_;				// i-1

input   rts;			 // i-1, request to send from tx_encap
input   [63:0] rdata;	 // i-64 , data input
input   [15:0] rbytes;	 // i-16, data size from encap
output	cts;

output [7:0] gmii_txd;			//o-8, 1 byte data output
output 		 gmii_txc;			//o, control output
output 		 gmii_tx_en;
output 		 gmii_tx_vld;

output [31:0] FMAC_TX_PKT_CNT;
output [31:0] FMAC_TX_BYTE_CNT;
input		  fmac_tx_clr_en;
	
reg	   [63:0] pdin;			// use this with gige_crc32x64 to support giving data that are not consec clk
reg    [63:0] bdata1;		// buffer input data 
reg    [63:0] bdata2;
reg    [15:0] wcnt;

wire	[15:0] nbytes;
reg  	[15:0] nbytes_reg;
reg 	[15:0] rbytes_reg;  //holds number of bytes in data

reg    [63:0] txd;			//o-64, data output
reg    [07:0] txc;			//o-8, control output
reg    [07:0] txc_int;

reg    IDLE_sel;
reg    insert_crc;			// a pulse to indicate when to insert crc frame. 

reg    crc_we_;
reg    crc_last_;
reg    crc_clr_;
reg    [15:0] crc_cnt;
wire   [31:0] crc32;	   //crc output

reg		sent;
reg		sent_dly;
reg		statistic_ok;
reg		[31:0]   pkt_transmitted;
reg		[31:0]   FMAC_TX_PKT_CNT;
reg 	[31:0]   accumulated_bcnt;
reg		[31:0]   FMAC_TX_BYTE_CNT;


parameter[5:0] 
    IDLE		= 6'h01 ,
	GET_WAIT1   = 6'h02 ,
	GET_WAIT2   = 6'h04 ,
	TX_DAT		= 6'h08 ,
	TX_CRC		= 6'h10 ,
	WAIT_S		= 6'h20 ;
reg    [5:0] state;

wire st_IDLE;			assign	st_IDLE			=	state[0];
wire st_GET_WAIT1;  	assign	st_GET_WAIT1	=	state[1];
wire st_GET_WAIT2;  	assign	st_GET_WAIT2	=	state[2];
wire st_TX_DAT;     	assign	st_TX_DAT		=	state[3];
wire st_TX_CRC;        	assign	st_TX_CRC		=	state[4];
wire st_WAIT_S;			assign 	st_WAIT_S		=  	state[5];

wire st_DAT_4;
wire st_DAT_6;
reg  last_dat;

reg	[15:0] 	bcnt;


assign nbytes = {(rbytes[15:3] + |rbytes[2:0]),3'b000};


//   BUFFER
always@(posedge clk125)
begin
	bdata1 <=   rdata;
	
	pdin  <= (!rst_)? 64'h0 :  
	       (crc_we_? pdin : rdata);  
	          
	bdata2 <=   bdata1;
	nbytes_reg <= nbytes;
	rbytes_reg <= rbytes;
	
end

//   FMAC_TX_PKT_CNT REGISTER
always@ (posedge clk125)
begin
	if (!rst_)
	begin
		sent	<=	1'b0;
		sent_dly <= 1'b0;
	end
	
	else
	begin
		sent	<=	st_TX_CRC & st_DAT_4;
		sent_dly <= sent;
	end
end

always@ (posedge clk125)
begin
	if (!rst_ | fmac_tx_clr_en)
		pkt_transmitted	<=	32'h0;
	else
		pkt_transmitted	<=	(sent)? (pkt_transmitted + 32'h1) : pkt_transmitted ;
end

always @ (posedge clk250)
begin
	if (!rst_)
		statistic_ok <= 1'b0;
	else
		statistic_ok <= sent_dly;
		
end

always @ (posedge clk250)
begin
	if (!rst_ | fmac_tx_clr_en)
		FMAC_TX_PKT_CNT <= 32'h0;
		
	else
		FMAC_TX_PKT_CNT <= statistic_ok? pkt_transmitted : FMAC_TX_PKT_CNT ;
		 // Make sure capture pkt_transmitted when its value is stable
end


 //   FMAC_TX_BYTE_CNT REGISTER with auto clear
always@ (posedge clk125)
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
		FMAC_TX_BYTE_CNT <= statistic_ok? accumulated_bcnt : FMAC_TX_BYTE_CNT ;
end


 //  STATE MACHINE
always@(posedge clk125)
if(!rst_)
begin
	state <=   IDLE;
	txd   <=   64'hf7f7f7f7f7f7f7f7; 	// IDLE for gmii interface (normal inter-frame)
	txc   <=   8'hff; 

	txc_int <=   8'hff;
	IDLE_sel  <=   1;
	insert_crc<=   0;

	wcnt <=   0;
	
	crc_we_ <=   1;
	crc_last_<=   1;
	crc_cnt  <=   0;
	crc_clr_ <=   1;
	
	last_dat <= 1'b0;
end
else
begin
	// insert crc frame depending upon the number of data bytes valid in last qwd.	
	if (insert_crc)
			begin 
			case (rbytes_reg[2:0])
			3'd0: txd <=   {32'hf7f7f7FD, crc32 };
			3'd1: txd <=   {64'hf7f7f7f7f7f7f7f7};
			3'd2: txd <=   {64'hf7f7f7f7f7f7f7f7};
			3'd3: txd <=   {64'hf7f7f7f7f7f7f7f7};
			3'd4: txd <=   {64'hf7f7f7f7f7f7f7FD};
			3'd5: txd <=   {32'hf7f7f7f7, 24'hf7f7FD, crc32[31:24] };
			3'd6: txd <=   {32'hf7f7f7f7, 16'hf7FD, crc32[31:16] };
			3'd7: txd <=   {32'hf7f7f7f7, 8'hFD, crc32[31:8] };
			endcase	
			end
		
	else
		begin
		if (wcnt[15]& st_TX_DAT)
			begin
			case (rbytes_reg[2:0])
			3'd0: txd <=   {bdata2[63:32], bdata2[31:0] };
			3'd1: txd <=   {24'hf7f7FD, crc32[31:0], bdata2[7:0] };
			3'd2: txd <=   {16'hf7FD, crc32[31:0], bdata2[15:0] };
			3'd3: txd <=   {8'hFD, crc32[31:0], bdata2[23:0] };
			3'd4: txd <=   {crc32, bdata2[31:0]};
			3'd5: txd <=   {crc32[23:0], bdata2[39:0] };
			3'd6: txd <=   {crc32[15:0], bdata2[47:0] };
			3'd7: txd <=   {crc32[7:0], bdata2[55:0] };
			endcase
				
			end
		// if not last data 
		else txd <=   st_TX_DAT? {bdata2[63:0]}: txd;
		end
	
	txc  <=   txc_int;
	 // pulse to indicate, when to transmit crc frame
	insert_crc <=   (st_DAT_6 && last_dat);

	crc_we_    <=   !(st_DAT_4 && !crc_cnt[15]); 
	crc_last_  <=   !(st_DAT_4 && !crc_cnt[15] && wcnt[15]);
	
	crc_cnt    <=   st_GET_WAIT1 ? (rbytes + 16'd7) : (st_TX_DAT? (crc_cnt - 16'd8) : crc_cnt); 
	crc_clr_   <=   !(st_IDLE || st_TX_CRC);
// state machine	
	case(state)
	IDLE:
	begin
		state <= rts? GET_WAIT1: IDLE;
	end

	GET_WAIT1:
	begin
		state <=   GET_WAIT2;
	end

	GET_WAIT2:
	begin
		state   <=   TX_DAT;  
		wcnt    <=   nbytes_reg - 16'd1;
		txc_int <=   8'h01;
		IDLE_sel<=   0;
	end
	
	TX_DAT:
	begin
		state  <=	WAIT_S;
		wcnt   <=   wcnt - 16'd8;
		last_dat <= wcnt[15];
	end
	
	WAIT_S:
	begin
		state <= st_DAT_6? (last_dat? TX_CRC : TX_DAT) : WAIT_S;
		// if last data, sent the control depending on the valid bytes in last qwd.
		if (st_DAT_6 )
		begin
			if (wcnt[15]& last_dat)
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
			begin	 //if not last data, adjust control according to the number of bytes valid.
			if (wcnt[15] & !last_dat)
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
			else txc_int <= 8'h00;	   // if not last data 
			end
		end
		
		else
			txc_int <=   txc_int; 
	end
//CRC state	
	TX_CRC:
	begin
		state <=   st_DAT_4? (rts? GET_WAIT1: IDLE) : TX_CRC ;
		last_dat <= 1'b0;
	end
	
	default:
	begin
		state <=   IDLE;
	end
	endcase
end


// State machine that takes 64 bits data and output 8 bits at a time for gmii interface
parameter[8:0] 
	DAT_I  	= 9'h001 ,
	DAT_0	= 9'h002 ,
	DAT_1	= 9'h004 ,
	DAT_2	= 9'h008 ,
	DAT_3	= 9'h010 ,
	DAT_4	= 9'h020 ,
	DAT_5   = 9'h040 ,
	DAT_6   = 9'h080 ,
	DAT_7	= 9'h100 ;             
reg [8:0] gstate ;	

wire 	st_DAT_I	= gstate[0];
assign 	st_DAT_4 	= gstate[5];
assign 	st_DAT_6 	= gstate[7];

reg [7:0] gmii_txd;
reg 	  gmii_txc;
reg		  gmii_tx_en;
reg		  gmii_tx_vld;

reg		  cts;
reg		  gmii_start;
reg [7:0] idle1, idle2, idle3, idle4;

// Control for FSM
always @ (posedge clk125)
begin
	if (!rst_)
	begin
		cts <= 1'b0;
		gmii_start <= 1'b0;
		
		idle1 <= 8'hBC; 
		idle2 <= 8'hC5; 
		idle3 <= 8'hBC; 
		idle4 <= 8'h50;
		
	end
	
	else
	begin
		cts <= st_DAT_I & (idle3 == 8'h50);
		gmii_start <= st_GET_WAIT2 | (st_DAT_6 & st_WAIT_S);
		
		idle1 <= st_DAT_I? idle2 : 8'hBC;
		idle2 <= st_DAT_I? idle3 : 8'hC5;
		idle3 <= st_DAT_I? idle4 : 8'hBC;
		idle4 <= st_DAT_I? idle1 : 8'h50;
		
	end
end


always@(posedge clk125)
if(!rst_)
begin
	gstate <= DAT_I;
	gmii_txd <= 8'hbc;
	gmii_txc <= 1'b1;
	gmii_tx_en	<=	1'b0;
	gmii_tx_vld	<=	1'b1;
	bcnt		<=	16'd0; 
end

else
begin


	gmii_tx_en	<=	(gstate == DAT_I)?	1'b0	:
						(bcnt	==	16'd0)?	1'b0	:	1'b1;
	
	gmii_tx_vld	<=	((bcnt	==	16'd1)|(bcnt	==	16'd0))?	1'b1	:	(!gmii_tx_en);

	
	case(gstate)
	DAT_I:	   // Transmit Idle Set
	begin
		gstate <= gmii_start? DAT_0 : DAT_I;
		gmii_txd <= idle1;
		gmii_txc <= (idle1 == 8'hbc);
		gmii_tx_en	<=	1'b0; 
		gmii_tx_vld	<=	1'b1; 
	
		bcnt		<=	rbytes + 16'd13; 

	end
	
	DAT_0:	   // Transmit Byte 0
	begin
		gstate <= DAT_1;
		gmii_txd <= txd[7:0];
		gmii_txc <= txc[0];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);
		
	end
	
	DAT_1:		 // Transmit Byte 1
	begin
		gstate <= DAT_2;
		gmii_txd <= txd[15:8];
		gmii_txc <= txc[1];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	DAT_2:		  // Transmit Byte 2
	begin
		gstate <= DAT_3;
		gmii_txd <= txd[23:16];
		gmii_txc <= txc[2];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	DAT_3:			  // Transmit Byte 3
	begin
		gstate <= DAT_4;
		gmii_txd <= txd[31:24];
		gmii_txc <= txc[3];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	DAT_4:				 // Transmit Byte 4
	begin
		gstate <= DAT_5;
		gmii_txd <= txd[39:32];
		gmii_txc <= txc[4];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	DAT_5:			   // Transmit Byte 5
	begin
		gstate <= DAT_6;
		gmii_txd <= txd[47:40];
		gmii_txc <= txc[5];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	DAT_6:			 // Transmit Byte 6
	begin
		gstate <= DAT_7;
		gmii_txd <= txd[55:48];
		gmii_txc <= txc[6];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	DAT_7:				  // Transmit Byte 7
	begin
		gstate <= (gmii_start)? DAT_0 : DAT_I;
		gmii_txd <= txd[63:56];
		gmii_txc <= txc[7];

		bcnt	<=	(bcnt == 16'd0)?	16'd0	:	(bcnt - 16'd1);

	end
	
	default:
	begin
		gstate <=  DAT_I;
	end
	endcase
end


gige_crc32x64 gige_crc32x64(
   	.clk(clk125),					//i,
   	.rst_(rst_),					//i,
   	
   	.bytes  (rbytes_reg[2:0]), 		//i, number of bytes valid in last qwd
   	.clr_  (crc_clr_),
   	.we_   (crc_we_),
   	.last_ (crc_last_),
   	.cdin  (rdata),				   //i, input data
   	.pdin  (pdin),	
   	
   	.crc32({crc32[7:0],crc32[15:8],crc32[23:16],crc32[31:24]}),
   	.crc32_vld_()				   
    );
   
   
//synopsys translate_off
reg [(32 *8)-1:0] ascii_state, ascii_gstate;
always@(state)
begin
	case(state)
	IDLE: ascii_state = "IDLE";
	GET_WAIT1: ascii_state = "GET_WAIT1";
	GET_WAIT2: ascii_state = "GET_WAIT2";
	TX_DAT: ascii_state = "TX_DAT";
	TX_CRC: ascii_state = "TX_CRC";
	WAIT_S: ascii_state = "WAIT_S";
	default: ascii_state = "unknown";
	endcase
end

always@(gstate)
begin
	case(gstate)
	DAT_I: ascii_gstate = "DAT_I";
	DAT_0: ascii_gstate = "DAT_0";
	DAT_1: ascii_gstate = "DAT_1";
	DAT_2: ascii_gstate = "DAT_2";
	DAT_3: ascii_gstate = "DAT_3";
	DAT_4: ascii_gstate = "DAT_4";
	DAT_5: ascii_gstate = "DAT_5";
	DAT_6: ascii_gstate = "DAT_6";
	DAT_7: ascii_gstate = "DAT_7";
	default: ascii_state = "unknown";
	endcase
end
//synopsys translate_on



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


module gigerx_bcnt_fifo256x16

(
			aclr,
			 
			wrclk,   			  // i,Clk for writing data                                  
			wrreq,   			  // i,request to write                                      
			data,    			  // i,Data coming in                                        
			full,                 // o,indicates fifo is full or not (To avoid overiding)    
		                                                                                     
			rdclk,	              // i,Clk for reading data                                  
			rdreq,                // i,Request to read from FIFO                             
			q, 	                  // o,Data coming out                                       
			empty,                 // o,indicates fifo is empty or not (to avoid underflow)  
			usedw                   //o, number of slots currently in use for reading        

);
	parameter WIDTH = 16,
			  DEPTH = 256,
			  PTR	= 8;
			  
			  
			input  wire 				aclr;
			
			input  wire 				wrclk;             // i,Clk for writing data                                  
			input  wire 				wrreq;             // i,request to write                                      
			input  wire [WIDTH-1 : 0]	data;              // i,Data coming in                                         
			output wire					full;              // o,indicates fifo is full or not (To avoid overiding)    
                                                                                                                      
			input  wire 				rdclk;             // i,Clk for reading data                                  
			input  wire 				rdreq;             // i,Request to read from FIFO                             
			output wire [WIDTH-1 : 0]	q; 	               // o,Data coming out                                       
			output wire 				empty;              // o,indicates fifo is empty or not (to avoid underflow)  
			output wire [PTR  : 0] 		usedw;               //o, number of slots currently in use for reading        



asynch_fifo	#(.WIDTH (WIDTH),		  			
					  	  .DEPTH (DEPTH),
					 	  .PTR	 (PTR) )		  
 											
	asynch_256x64		  (
			.reset_	(aclr),
			
			.wrclk	(wrclk),		              // i,Clk for writing data                                  
			.wren	(wrreq),	   	              // i,request to write                                      
			.datain	(data),			              // i,Data coming in                                        
			.wrfull	(full),			              // o,indicates fifo is full or not (To avoid overiding)    
			.wrempty(),				                                                                         
			.wrusedw(),				                
                                                    
			.rdclk	(rdclk),		           // i,Clk for reading data                                     
			.rden	(rdreq),		           // i,Request to read from FIFO                                
			.dataout(q),			           // o,Data coming out                                          
			.rdfull	(),				            // o,indicates fifo is full or not (to avoid overiding)
			.rdempty(empty),		            // o,indicates fifo is empty or not (to avoid underflow)    
			.rdusedw(usedw),		            //o, number of slots currently in use for reading  

			.dbg()

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


`timescale 1ns / 1ns                                                                                                                                               


module gigerx_fifo256x64_2clk

(
			aclr,

			wrclk,                  // i,Clk for writing data                                  
			wrreq,                  // i,request to write                                      
			data,                   // i,Data coming in                                        
			full,                   // o,indicates fifo is full or not (To avoid overiding)    
		                                                                                       
			rdclk,	                // i,Clk for reading data                                  
			rdreq,                  // i,Request to read from FIFO                             
			q, 	                    // o,Data coming out                                       
			empty,                   // o,indicates fifo is empty or not (to avoid underflow)  
			usedw                     //o, number of slots currently in use for reading        

);
	parameter WIDTH = 64,
			  DEPTH = 256,
			  PTR	= 8;
			  
			  
			input wire aclr;

			input  wire 				wrclk;          // Clk for writing data                                    
			input  wire 				wrreq;          // request to write                                        
			input  wire [WIDTH-1 : 0]	data;           // Data coming in                                                    
			output wire					full;           // indicates fifo is full or not (To avoid overiding)      
		                                                                                                           
			input  wire 				rdclk;          // Clk for read data                                                            
			input  wire 				rdreq;           // Request to read from FIFO                                                                                      
			output wire [WIDTH-1 : 0]	q; 	             // Data coming out                                                                                                
			output wire 				empty;           // indicates fifo is empty or not (to avoid underflow)                                       
			output wire [PTR  : 0] 		usedw;           // number of slots currently in use for reading           
                                                           
			                                               
                                                           
asynch_fifo	#(.WIDTH (WIDTH),		  			
					  	  .DEPTH (DEPTH),
					 	  .PTR	 (PTR) )		 
 											
	asynch_256x64		  (
			.reset_	(aclr),
			
			.wrclk	(wrclk),		                      // Clk to write data                                            
			.wren	(wrreq),	   	                      // write enable                                                 
			.datain	(data),			                      // write data                                                   
			.wrfull	(full),			                      // indicates fifo is full or not (To avoid overiding)           
			.wrempty(),				                      // indicates fifo is empty or not (to avoid underflow)          
			.wrusedw(),				                      // wrusedw -number of locations filled in fifo                  
                                                                                                                          
			.rdclk	(rdclk),		                                                                                      
			.rden	(rdreq),		                      // i-1, Clk to read data                                        
			.dataout(q),			                      // i-1, read enable of data FIFO                                
			.rdfull	(),				                      // Dataout of data FIFO                                         
			.rdempty(empty),		                      // indicates fifo is full or not (To avoid overiding) (Not used)
			.rdusedw(usedw),		                      // indicates fifo is empty or not (to avoid underflow)          
                                                          // rdusedw -number of locations filled in fifo (not used )      
			.dbg()

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


`timescale 1ns / 1ns


module gigerx_fifo256x8

(
			aclr,
			
			wrclk,          // i,Clk for writing data                                  
			wrreq,          // i,request to write                                      
			data,           // i,Data coming in                                          
			full,           // o,indicates fifo is full or not (To avoid overiding)    
		                                                                               
			rdclk,	        // i,Clk for reading data                                  
			rdreq,          // i,Request to read from FIFO                             
			q, 	            // o,Data coming out                                       
			empty,           // o,indicates fifo is empty or not (to avoid underflow)  
			usedw             //o, number of slots currently in use for reading        

);
	parameter WIDTH = 8,
			  DEPTH = 256,
			  PTR	= 8;
			  
			  
			input wire aclr;

			input  wire 				wrclk;          // Clk for writing data                              
			input  wire 				wrreq;          // request to write                                  
			input  wire [WIDTH-1 : 0]	data;          	// Data coming in                                                   
			output wire					full;           // indicates fifo is full or not (To avoid overiding)
		                       
			input  wire 				rdclk;           // Clk for read data                                     
			input  wire 				rdreq;            // Request to read from FIFO                            
			output wire [WIDTH-1 : 0]	q; 	            	 // Data coming out                                      
			output wire 				empty;          	 // indicates fifo is empty or not (to avoid underflow)  
			output wire [PTR  : 0] 		usedw;          	 // number of slots currently in use for reading         


asynch_fifo	#(.WIDTH (WIDTH),		  			
					  	  .DEPTH (DEPTH),
					 	  .PTR	 (PTR) )		 
 											
	asynch_256x8		  (
			.reset_	(aclr),                            // Clk to write data                                            
			                                           // write enable                                                 
			.wrclk	(wrclk),		                   // write data                                                   
			.wren	(wrreq),	   	                   // indicates fifo is full or not (To avoid overiding)           
			.datain	(data),			                   // indicates fifo is empty or not (to avoid underflow)          
			.wrfull	(full),			                   // wrusedw -number of locations filled in fifo                  
			.wrempty(),				                                                                                   
			.wrusedw(),				                                                                                   
                                                       // i-1, Clk to read data                                        
			.rdclk	(rdclk),		                   // i-1, read enable of data FIFO                                
			.rden	(rdreq),		                   // Dataout of data FIFO                                         
			.dataout(q),			                   // indicates fifo is full or not (To avoid overiding) (Not used)
			.rdfull	(),				                   // indicates fifo is empty or not (to avoid underflow)          
			.rdempty(empty),		                   // rdusedw -number of locations filled in fifo (not used )      
			.rdusedw(usedw),		

			.dbg()

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


`timescale 1ns/1ns

module rx_5g(

	clk,              //i-1, Clock  
	reset_,           //i-1, reset   

	mode_10G,		  //i-1, speed modes
	mode_5G,		  //i-1, speed modes
	mode_2p5G, 		  //i-1, speed modes
	mode_1G,		  //i-1, speed modes
	                   
	data_in,           //i-64, Input data 
	ctrl_in,           //i-8, Input control
	                   
	data_out,          //o-64, Output data
	ctrl_out,          //o-8, output control 
	                   
	linkup_1g,         //o-1
	linkup_5g          //o-1
	
	);

		input  			clk				;			//i-1, Clock
		input  			reset_			;   		 //i-1, reset

		input			mode_10G 		;			//i-1, speed modes
		input			mode_5G  		;			//i-1,
		input			mode_2p5G		; 			//i-1,
		input			mode_1G  		;			//i-1, 
		
		input 	[63:0] 	data_in			;   		//i-64, Input data
		input 	[7:0] 	ctrl_in			;   		//i-8, Input control
		
		output 	[63:0] 	data_out		;   		//o-64, Output data
		output 	[7:0] 	ctrl_out		;   		//o-8, output control
		output 			linkup_1g		;   		 //o-1,
		output 			linkup_5g		;   	   //o-1,
		
		wire 	[63:0] 	data_out		;
		wire 	[7:0] 	ctrl_out		; 
		reg 			f_we			;
		
		wire 			x_bcnt_we_s2p	;      
		wire 	[15:0] 	x_byte_cnt_s2p	;
		wire 			x_bcnt_we_5g	;      
		wire 	[15:0] 	x_byte_cnt_5g	;
		wire 			x_we			;
		wire 			we_5g			;
		wire 	[63:0] 	data_out_s2p	;
		wire 	[7:0] 	ctrl_out_s2p	;
		wire 	[63:0] 	data_out_5g		;
		wire 	[7:0] 	ctrl_out_5g		;
		wire 	[63:0] 	data_out_ff		;
		wire 	[7:0] 	ctrl_out_ff		; 
		wire 			gf_bcnt_empty	;
		wire 	[15:0]	bcnt_in			;                               
		wire 			gige_bcnt_fifo_re;
		wire 			gige_data_fifo_re;
		
		reg 	[63:0] 	data_mux		;
		reg 	[7:0] 	ctrl_mux		; 
		reg 			x_bcnt_we		;       
		reg 	[15:0] 	x_byte_cnt		;

		reg				mode_10G_buf	; 		//buffer speed modes
		reg				mode_5G_buf 	;		 //buffer speed modes
		reg				mode_2p5G_buf 	;		//buffer speed modes
		reg				mode_1G_buf 	;		//buffer speed modes

		
	gige_s2p gige_s2p                          		 //S2P Module Instantiation
		(
			.clk			(clk),		
			.reset_			(reset_),	

			.mode_10G 		(mode_10G_buf), 		 //i-1, speed modes
			.mode_5G  		(mode_5G_buf), 			 //i-1,
			.mode_2p5G		(mode_2p5G_buf), 		 //i-1,
			.mode_1G  		(mode_1G_buf), 			  //i-1,
			
			.data_in		(data_in[7:0]),
			.ctrl_in		(ctrl_in[0]),
			.pdet_in		(ctrl_in[0]),
			            	            
			.data_out		(data_out_s2p),
			.ctrl_out		(ctrl_out_s2p),
			
			.loopback_en	(1'b0),		
			.sfp_los		(1'b0),		
			
			.linkup			(linkup_1g),	
			.x_we			(x_we), 	
			
			.x_bcnt_we		(x_bcnt_we_s2p),
			.x_byte_cnt		(x_byte_cnt_s2p)
		);
	
	ctrl_2g_5g ctrl_2g_5g                 		    //5G/2.5 speed control module instantiation
		(
    	
			.clk		(clk),
			.reset_		(reset_),

			.mode_10G 	(mode_10G_buf), 	 //i-1, speed modes
			.mode_5G  	(mode_5G_buf), 		 //i-1, 
			.mode_2p5G	(mode_2p5G_buf), 	  //i-1, 
			.mode_1G  	(mode_1G_buf), 		  //i-1, 
			
			.data_in	(data_in),
			.ctrl_in	(ctrl_in),
			
			.data_out	(data_out_5g),
			.ctrl_out	(ctrl_out_5g),
			.we_5g		(we_5g),
			.x_byte_cnt	(x_byte_cnt_5g),
			.x_bcnt_we	(x_bcnt_we_5g),
			.linkup_5g	(linkup_5g)
		
		);	

    gigerx_fifo256x64_2clk gigerx_fifo256x64_2clk  			//Gige RX fifo for data
		(                                          
			.aclr			(reset_),              
			                                       
			.wrclk			(clk),             //i, clock    
			.wrreq			(f_we),            //i, write request                
			.data			(data_mux),       //i              
			.full			(),       	                         
			        	                                   
			.rdclk			(clk),				 //i                        
			.rdreq			(gige_data_fifo_re),  //i             
			.q				(data_out_ff),			//o,                         
			.empty			(),  	 			                         
			.usedw			()					                            
		);                                           
	                                             
	                                             
	gigerx_fifo256x8 gigerx_fifo256x8         
		(                                     
			.aclr			(reset_),         		//i,
			                                  
			.wrclk			(clk),      	  		//i,
			.wrreq			(f_we),      	        //i,             
			.data			(ctrl_mux),	            //i,        
			.full			(),       		                        
			        	                                   
			.rdclk			(clk),				    //i,                     
			.rdreq			(gige_data_fifo_re),    //i,           
			.q				(ctrl_out_ff),			//o,                         
			.empty			(),  	 			                         
			.usedw			()       			                       
		);                                           
	                                             
	                                             
	gigerx_bcnt_fifo256x16 gigerx_bcnt_fifo256x16 
		(                                         
			.aclr			(reset_),             	 //i,
			                                      
			.wrclk			(clk),                     //i,         
			.wrreq			(x_bcnt_we),              //i,          
			.data			(x_byte_cnt),             //i,           
			.full			(),       	                         
			        	                                   
			.rdclk			(clk),				       //i,                   
			.rdreq			(gige_bcnt_fifo_re),        //i,        
			.q				(bcnt_in),			        //o,                 
			.empty			(gf_bcnt_empty),	        //o           
			.usedw			()       			         //o,               
		);                                           
	                                         
	                                         
	g2x_ctrl g2x_ctrl                        		 //Readout control from the fifo, to give as an output to the byte reordering module
		(                                    
		                                     		    
		    .clk			(clk),					   //i,
			.reset_			(reset_),				    //i,

			.mode_10G 		(mode_10G_buf), 		    //i,
			.mode_5G  		(mode_5G_buf), 			    //i,
			.mode_2p5G		(mode_2p5G_buf), 		    //i,
			.mode_1G  		(mode_1G_buf), 				 //i,
			                                
			.gf_bcnt_empty	(gf_bcnt_empty),
			                                		          
			.data_in		(data_out_ff),				  //i,                   
			.ctrl_in		(ctrl_out_ff),				   //i,                  
			.bcnt_in		(bcnt_in),		   			                    
			                                            
			.gige_bcnt_fifo_re	(gige_bcnt_fifo_re),     
			.gige_data_fifo_re	(gige_data_fifo_re),     
			                                            
			.data_out		(data_out),		              //o,  
			.ctrl_out		(ctrl_out),		               //o, 
			                                		          
			.dbg			()						                             
		);                                           
	
	
	always @ (posedge clk)
	begin
		mode_10G_buf	<=	mode_10G	;	
		mode_5G_buf 	<=	mode_5G 	;	
		mode_2p5G_buf	<=	mode_2p5G	;	
		mode_1G_buf 	<=	mode_1G 	;	
	end
		
			
	always @ (posedge clk)
		begin
		
			if (!reset_)
				begin
				
					f_we <= 1'b0;
					data_mux <= 64'h0707_0707_0707_0707;
					ctrl_mux <= 8'hff;
					x_byte_cnt <= 16'd0;
					x_bcnt_we <= 1'b0;
								
				end
			else
				begin
																				
					data_mux <= (mode_2p5G_buf | mode_5G_buf) ? data_out_5g :				//Register Mux for output data
						data_out_s2p                            				
						;										                  
																				
					ctrl_mux <=	(mode_2p5G_buf | mode_5G_buf) ? ctrl_out_5g :				//Register Mux for output control								
						ctrl_out_s2p                                              
						;											              
																				
					f_we <= (mode_2p5G_buf | mode_5G_buf) ? we_5g :							 //Write Mux	
						x_we                             
						;                                
							
					x_byte_cnt <= (mode_2p5G_buf | mode_5G_buf) ? x_byte_cnt_5g : 			 	//Byte count
						x_byte_cnt_s2p                             
						;                                                	
						      		
					x_bcnt_we <= (mode_2p5G_buf | mode_5G_buf) ? x_bcnt_we_5g :  				//Byte count write enable	
						x_bcnt_we_s2p                             
						;                                                	
						    													
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

module rx_decap(
	clk250,					 // i-1
	clk156,					 // i-1
	rst_,					 // i-1

	full,					 // i-1
	usedw,					 // i-12
			
	rx_check_crc,			 // i-1, enabling checking of CRC
	
	fmac_ctrl1_dly	,		 //i-32
	fmac_rxd_en	,			 //i-1
	

	FMAC_RX_CRC_ERR_CNT,				 // o-32
	FMAC_RX_UNDERSIZE_PKT_CNT,			  // o-32
	FMAC_RX_PKT_CNT_LO,					 // o-32
	FMAC_RX_PKT_CNT_HI,					  // o-32
	FMAC_RX_BYTE_CNT_LO,				  // o-32
	FMAC_RX_BYTE_CNT_HI,				 // o-32
	
	FMAC_PKT_CNT_JABBER,				 // o-32
	FMAC_PKT_CNT_FRAGMENT,				  // o-32
	
    	//Interface to 64 bit Statistic register group, in DECAP
	STAT_GROUP_LO_DOUT	,			    // o-32
	STAT_GROUP_HI_DOUT	,				 // o-32
	STAT_GROUP_addr	,					// i-10,  address to select the register within the STAT GROUP
	STAT_GROUP_sel	,					//i-1
	fmac_rx_clr_en	,					//i-1
	
	wptr,							   // i-param
	rdata,							   // i-64
	
	add_lo_bcast,					  // i-1, these signals are 250Mhz pre-synced
	add_lo_mcast,					  // i-1
	clr_carry_cast,					  // i-1 clr the carry of the B/Mcast group
	add_hi_cast,					  // i-1 add the HI reg of the B/Mcast group
	
	clr_pkt_cnt_oversize,			  //o-1
	
		tx_xo_en,				// i-1 From Register
		xdone,					// o-1
	
						
		
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
		FMAC_RX_PKT_CNT9199P_HI,
		
		nbyte,
		pkt_done,
		crc_chk,
		crc32,
		crc32_vld_,
		
		crc_ok
			
		
	);

parameter   FMAC_ID = 10;
parameter	RX_FIFO_DEPTH = 13'd4096;		
parameter	RX_FIFO_ADDR_WIDTH = 12;	
parameter	RX_DRAM_DEPTH = 13'd3072;
parameter	RX_DRAM_ADDR_WIDTH = 12;

input clk250;	
input clk156;	
input rst_;

	


 // FIFO interface
input 	full;
input 	[RX_FIFO_ADDR_WIDTH-1:0] usedw;

 // From Register
input	rx_check_crc;

input	[31:0]	fmac_ctrl1_dly;
input			fmac_rxd_en	;		   //i-1


// To fmac_register_if

output [31:0]	FMAC_RX_UNDERSIZE_PKT_CNT;
output [31:0]	FMAC_RX_CRC_ERR_CNT;
output [31:0]	FMAC_RX_PKT_CNT_LO;
output [31:0]	FMAC_RX_PKT_CNT_HI;
output [31:0]	FMAC_RX_BYTE_CNT_LO;
output [31:0]	FMAC_RX_BYTE_CNT_HI;

output [31:0]	FMAC_PKT_CNT_JABBER;			 // o-32
output [31:0]	FMAC_PKT_CNT_FRAGMENT;			 // o-32

//Interface to 64 bit Statistic register group, in DECAP
	output [31:0]		STAT_GROUP_LO_DOUT	;		// o-32,
output [31:0]		STAT_GROUP_HI_DOUT	;			// o-32,
input	[9:0]		STAT_GROUP_addr	;				// o-10, address to select the register within the STAT GROUP
input				STAT_GROUP_sel	;
input				fmac_rx_clr_en	;
	
input  [RX_DRAM_ADDR_WIDTH:0] 		wptr;	
input  [63:0] 	rdata;								 //data reading in from the front end's DRAM buffer

input	add_lo_bcast	;							// i-1, these signals are 250Mhz pre-synced
input	add_lo_mcast	;							// i-1
input	clr_carry_cast	;							// i-1 clr the carry of the B/Mcast group
input	add_hi_cast		;							// i-1 add the HI reg of the B/Mcast group

output	clr_pkt_cnt_oversize	;

input			tx_xo_en;
input			xdone;								 // pause frame has been transmitted





output [32:0]	FMAC_RX_PKT_CNT64_LO;
output [31:0]	FMAC_RX_PKT_CNT64_HI;

output [32:0]	FMAC_RX_PKT_CNT127_LO;
output [31:0]	FMAC_RX_PKT_CNT127_HI;

output [32:0]	FMAC_RX_PKT_CNT255_LO;
output [31:0]	FMAC_RX_PKT_CNT255_HI;

output [32:0]	FMAC_RX_PKT_CNT511_LO;
output [31:0]	FMAC_RX_PKT_CNT511_HI;

output [32:0]	FMAC_RX_PKT_CNT1023_LO;
output [31:0]	FMAC_RX_PKT_CNT1023_HI;

output [32:0]	FMAC_RX_PKT_CNT1518_LO;
output [31:0]	FMAC_RX_PKT_CNT1518_HI;

output [32:0]	FMAC_RX_PKT_CNT2047_LO;
output [31:0]	FMAC_RX_PKT_CNT2047_HI;

output [32:0]	FMAC_RX_PKT_CNT4095_LO;
output [31:0]	FMAC_RX_PKT_CNT4095_HI;

output [32:0]	FMAC_RX_PKT_CNT8191_LO;
output [31:0]	FMAC_RX_PKT_CNT8191_HI;

output [32:0]	FMAC_RX_PKT_CNT9018_LO;
output [31:0]	FMAC_RX_PKT_CNT9018_HI;

output [32:0]	FMAC_RX_PKT_CNT9022_LO;
output [31:0]	FMAC_RX_PKT_CNT9022_HI;

output [32:0]	FMAC_RX_PKT_CNT9199P_LO;
output [31:0]	FMAC_RX_PKT_CNT9199P_HI;

input  [31:0]	crc_chk;

input  [31:0]	crc32;
input  			crc32_vld_;


input			crc_ok;



reg			[7:0]	pkt_qwd_cnt;	
														
wire			cs_fifo_wr_en;
        
reg		[2:0]	ipp_offset ;    	
reg     [15:0]	ip_dlen ;
reg				ipp_start ;
reg				mac_en1, mac_en2 ;

        
reg		fmac_rxd_en156 ;	   //buffer the signal before using everywhere in clk156 domain

reg		[13:0]	MAX_PKT_SIZE;

wire [RX_DRAM_ADDR_WIDTH:0] wptr_sync;		

reg		   hold;						// stop advancing the raddr_marker
reg [RX_DRAM_ADDR_WIDTH:0] rptr;
reg [RX_DRAM_ADDR_WIDTH-1:0] raddr;
reg [RX_DRAM_ADDR_WIDTH-1:0] raddr_marker;					  // read address marker, send to rx_xgmii to check for preventing overwrite beyond read
wire [RX_DRAM_ADDR_WIDTH-1:0] raddr_marker_sync;			  // read address marker synced to 156MHz
reg [63:0] bdata;
reg [63:0] bdata_dly1;

input [15:0] nbyte;

reg [7:0]  pre_stat;
reg [7:0]  pre_stat2;
reg [15:0] rx_cnt;
reg [11:0] upd_cnt;

reg		vlan_mode, normal_ip, non_ip,  csum_abort ;

reg [15:0] crc_cnt;
wire [31:0] crc_chk;
wire [RX_DRAM_ADDR_WIDTH-1:0] diff;
wire [31:0] crc32;
wire crc32_vld_;
wire crc_clr_;
reg crc_we_;
reg crc_last_;

reg		crc32_vld_dly1_	;
reg		crc32_vld_dly2_	;

reg empty;
reg	has_pkt;		  //indicating the XGMII pkt buffer has 3 qwd or more (potentially a pkt is in there)

reg ld_byte;
reg ld_port;

wire	cnt_ld;		

reg	b2b_pkt;

reg [63:0] fifo_din;
reg  		wr_en;		   //same time as fifo_din, 1 clk before bdata
reg 		advance;
reg 		rewind;

reg			bdata_vld ;		
assign		cs_fifo_wr_en = advance ;		//only wr extracted pattern if packet is good.

parameter XON_MARK  = RX_FIFO_DEPTH / 4 * 3 ;		   // 75% of RX_FIFO_DEPTH
parameter XOFF_MARK = RX_FIFO_DEPTH / 4 ;			   // 25% of RX_FIFO_DEPTH

parameter[07:0] 
    IDLE		= 8'h01 ,
	GET_CNT     = 8'h02 ,
	GET_WT1 	= 8'h04 ,
	RAM_WT1		= 8'h08 ,
	GET_WT2     = 8'h10 ,
	RX_DAT      = 8'h20 ,
	RX_WT		= 8'h40 ,
	RX_DONE		= 8'h80 ;
reg [07:0] state;

wire st_idle;		assign	st_idle 	= 	state[0];
wire st_get_cnt;	assign	st_get_cnt	= 	state[1];
wire st_get_wt1;	assign 	st_get_wt1 	= 	state[2];
wire st_ram_wt1;	assign 	st_ram_wt1 	= 	state[3];
wire st_get_wt2;	assign	st_get_wt2	= 	state[4];
wire st_rx_dat;		assign	st_rx_dat	= 	state[5];
wire st_rx_wt;		assign	st_rx_wt	= 	state[6];
wire st_rx_done;	assign	st_rx_done 	=	state[7];

//must clear soon at the beginning to allow time for CRC code to settle
assign	crc_clr_	= !st_get_cnt;

assign diff = (wptr_sync[RX_DRAM_ADDR_WIDTH-1:0] - rptr[RX_DRAM_ADDR_WIDTH-1:0]);

	

always@(posedge clk250)
begin
		fmac_rxd_en156	<= fmac_rxd_en;
	
	bdata   <=   rdata;
	fifo_din	<=	st_get_wt2?	{pre_stat, pre_stat2, 28'h0, FMAC_ID[3:0], nbyte} : bdata;
	
	upd_cnt <=   
				(!rst_ | !fmac_rxd_en156) ? 12'h0 :
		//case of uneven qwd bytes
				(|nbyte[2:0])? (nbyte[14:3] + 12'd2) : 
		//case of even qwds
				(nbyte[14:3] + 12'd1);		
		
															end

wire	[RX_DRAM_ADDR_WIDTH-1:0]	raddr_plus1;
				//reach MAX depth wrap back to 0
				assign			raddr_plus1 = (raddr == (RX_DRAM_DEPTH - 1))? 0 : (raddr + 1);

wire	[RX_DRAM_ADDR_WIDTH:0]	rptr_plus_upd_cnt;
assign			rptr_plus_upd_cnt =	rptr + upd_cnt;

wire	[RX_DRAM_ADDR_WIDTH:0]	new_rptr;
			//if wrap condition, set the new rptr to the DELTA.  Otherwise inc as normal
			assign			new_rptr = (rptr_plus_upd_cnt > (RX_DRAM_DEPTH - 1))? (rptr_plus_upd_cnt - RX_DRAM_DEPTH) : rptr_plus_upd_cnt;

wire	bad_crc;
		assign	bad_crc = (crc_chk != crc32) ;


	parameter [13:0] RX_FIFO_CHK = RX_FIFO_DEPTH - 10'd256;	
				wire	[13:0]	rx_fifo_remain_space = ( (RX_FIFO_CHK - usedw) - nbyte[15:3] ) ; 

wire	rx_fifo_ok = (!full  &  !rx_fifo_remain_space[13])	;

reg		rx_fifo_ok_out;


 //	STATISTIC REGISTERS

reg [31:0]	FMAC_RX_CRC_ERR_CNT;
reg [31:0]	FMAC_RX_UNDERSIZE_PKT_CNT;

reg [31:0]	FMAC_PKT_CNT_JABBER;
reg [31:0]	FMAC_PKT_CNT_FRAGMENT;
	reg 	[32:0]	RX_BYTE_CNT_LO;
reg 	[31:0]	RX_BYTE_CNT_HI;

reg 	[32:0]	RX_PKT_CNT_LO;
reg 	[31:0]	RX_PKT_CNT_HI;

wire	[31:0]	FMAC_RX_BYTE_CNT_LO = RX_BYTE_CNT_LO[31:0];
wire	[31:0]	FMAC_RX_BYTE_CNT_HI = RX_BYTE_CNT_HI[31:0];

wire	[31:0]	FMAC_RX_PKT_CNT_LO = RX_PKT_CNT_LO[31:0];
wire	[31:0]	FMAC_RX_PKT_CNT_HI = RX_PKT_CNT_HI[31:0];

reg [32:0]	FMAC_RX_PKT_CNT64_LO;	
reg [31:0]	FMAC_RX_PKT_CNT64_HI;

reg [32:0]	FMAC_RX_PKT_CNT127_LO;
reg [31:0]	FMAC_RX_PKT_CNT127_HI;

reg [32:0]	FMAC_RX_PKT_CNT255_LO;
reg [31:0]	FMAC_RX_PKT_CNT255_HI;

reg [32:0]	FMAC_RX_PKT_CNT511_LO;
reg [31:0]	FMAC_RX_PKT_CNT511_HI;

reg [32:0]	FMAC_RX_PKT_CNT1023_LO;
reg [31:0]	FMAC_RX_PKT_CNT1023_HI;

reg [32:0]	FMAC_RX_PKT_CNT1518_LO;
reg [31:0]	FMAC_RX_PKT_CNT1518_HI;

reg [32:0]	FMAC_RX_PKT_CNT2047_LO;
reg [31:0]	FMAC_RX_PKT_CNT2047_HI;

reg [32:0]	FMAC_RX_PKT_CNT4095_LO;
reg [31:0]	FMAC_RX_PKT_CNT4095_HI;

reg [32:0]	FMAC_RX_PKT_CNT8191_LO;
reg [31:0]	FMAC_RX_PKT_CNT8191_HI;

reg [32:0]	FMAC_RX_PKT_CNT9018_LO;
reg [31:0]	FMAC_RX_PKT_CNT9018_HI;

reg [32:0]	FMAC_RX_PKT_CNT9022_LO;
reg [31:0]	FMAC_RX_PKT_CNT9022_HI;

reg [32:0]	FMAC_RX_PKT_CNT9199P_LO;  		 //9199 plus bytes per packet
reg [31:0]	FMAC_RX_PKT_CNT9199P_HI;

reg [32:0]	FMAC_RX_PKT_CNT_BCAST_LO;  		 //broadcast packet
reg [31:0]	FMAC_RX_PKT_CNT_BCAST_HI;

reg [32:0]	FMAC_RX_PKT_CNT_MCAST_LO;  		 //multicast packet
reg [31:0]	FMAC_RX_PKT_CNT_MCAST_HI;
reg [31:0]	pkt_undersize;

input		pkt_done;
reg			pkt_done_dly1;	  
reg			pkt_done_dly2;

reg			statistic_ok;

reg [31:0] 	rx_err_cnt;
reg 		increase_err_cnt;
wire			rx_err_cnt_ok;

always@ (posedge clk250)
begin
	if (!rst_)
	begin
		pkt_done_dly1 <=	1'b0;
		pkt_done_dly2 <=	1'b0;
		
		crc32_vld_dly1_ 	<= 	1'b0;
		crc32_vld_dly2_ 	<= 	1'b0;
		
		pkt_undersize <= 32'h0;
				
		increase_err_cnt	<=	1'b0;
		rx_err_cnt			<=	32'h0;
	end
	
	else
	begin
								pkt_done_dly1 	<= 	pkt_done;
		pkt_done_dly2 	<= 	pkt_done_dly1;
		
		crc32_vld_dly1_ 	<= 	crc32_vld_		;
		crc32_vld_dly2_ 	<= 	crc32_vld_dly1_	;
		
			//undersize are pkt size < 64 bytes including the CRC.  NBYTE excluded the CRC
		pkt_undersize 	<= (pkt_done & (nbyte < 16'd60))? (pkt_undersize + 32'h1) : pkt_undersize; 
				
		
		increase_err_cnt	<=	(crc32_vld_? (bad_crc ? 1'b1 : 1'b0): 1'b0);
		
		rx_err_cnt			<=	increase_err_cnt? (rx_err_cnt + 32'h1) : rx_err_cnt;
	end
end

//============== SYNC the reg for output to internal logic
reg		err_cnt_ok0_clk250;
reg		err_cnt_ok1_clk250;

wire	err_cnt_ok_clk250 = err_cnt_ok0_clk250 & err_cnt_ok1_clk250;

reg			sync_wait;
reg			sync_wait_crc;

wire		crc_ok;
reg			crc_ok_dly1;
reg			crc_ok_dly2;
reg			crc_ok_dly3;
reg			crc_ok_dly4;



always @ (posedge clk250)
	begin
	
		
		statistic_ok		<= 
								(!rst_ | statistic_ok) ? 1'b0 :
								(!statistic_ok & !sync_wait & pkt_done_dly1)  ? 1'b1 :
								statistic_ok;
					
																																	
		crc_ok_dly1		<=	crc_ok	;
		crc_ok_dly2		<=	crc_ok_dly1	;
		crc_ok_dly3		<=	crc_ok_dly2	;
		crc_ok_dly4		<=	crc_ok_dly3	;
					
	err_cnt_ok0_clk250	<= !increase_err_cnt;
	err_cnt_ok1_clk250	<=  err_cnt_ok0_clk250;
	
	
	end

// Synchronization for statistic registers

assign		rx_err_cnt_ok 	= err_cnt_ok_clk250;

//STATISTIC_OK PULSE
reg			stat_ok_dly;

reg			stat_ok_dly2;
reg			stat_ok_dly3;
reg			stat_ok_dly4;

always @ (posedge clk250)
begin
	if (!rst_)
	begin
		stat_ok_dly	<=	1'b0;
		stat_ok_dly2	<=	1'b0;
		stat_ok_dly3	<=	1'b0;
		stat_ok_dly4	<=	1'b0;
		
				FMAC_RX_UNDERSIZE_PKT_CNT <= 32'h0;
				
				FMAC_RX_CRC_ERR_CNT <= 32'h0;
	end
	
	else
	begin  
	
		stat_ok_dly	<=	statistic_ok;

				
		stat_ok_dly2	<=	stat_ok_dly;
		stat_ok_dly3	<=	stat_ok_dly2;
		stat_ok_dly4	<=	stat_ok_dly3;
		
		FMAC_RX_UNDERSIZE_PKT_CNT <= fmac_rx_clr_en ? 32'h0 : (statistic_ok? pkt_undersize : FMAC_RX_UNDERSIZE_PKT_CNT);
		
		FMAC_RX_CRC_ERR_CNT <= fmac_rx_clr_en ? 32'h0 : (rx_err_cnt_ok? FMAC_RX_CRC_ERR_CNT : rx_err_cnt);
		
	end
end


//	SIGNAL TAP
reg rx_stop_load;
reg	raddr_err;
reg	rsize_err;

parameter	[15:0]	KNOWN_PKT_SIZE 	= 16'h3C;
parameter	[15:0]	SWITCH_PKT 		= 16'd256;			 //pkt from the switch

reg		dbg_trig;
reg		dbg_trig2;
reg		not_my_pkt;
reg		fifo_stuck_trig;

always @ (posedge clk250)
begin
	if (!rst_) 
	begin
		rx_stop_load <= 1'b0;
		raddr_err <= 1'b0;
		rsize_err <= 1'b0;
		
		dbg_trig	<= 1'b0;
		dbg_trig2	<= 1'b0;
		
		not_my_pkt	<= 1'b0;
		fifo_stuck_trig	<= 1'b0;
		
		rx_fifo_ok_out	<= 1'b0;
	end
	
	else	
	begin
		rx_fifo_ok_out	<= rx_fifo_ok;
		
					rx_stop_load <= st_get_wt1 & !rx_fifo_ok;
					raddr_err <= 
			raddr > (RX_DRAM_DEPTH - 1) |
			dbg_trig2
			;
		rsize_err <= 
			(nbyte > 16'd1526) 	|	
			dbg_trig
			;
		
		dbg_trig	<= not_my_pkt | rx_fifo_ok_out ;
			//after reset nbyte = 0, so cannot assert falsely
					not_my_pkt	<= 
			!(nbyte == KNOWN_PKT_SIZE) & !(nbyte == SWITCH_PKT) & !(nbyte == 16'd0) ;
			
		dbg_trig2	<= fifo_stuck_trig;
		fifo_stuck_trig	<=
			(usedw >= 8'd36);	
		
	end
end

//	XON_XOFF FLOW CONTROL
reg			reach_xon_mark;
reg			reach_xoff_mark;

reg			xreq;
reg			xon;


parameter[3:0] 
    XIDLE	= 4'h1 ,
	XREQ1   = 4'h2 ,
	XDONE1 	= 4'h4 ,
	XREQ2   = 4'h8 ;
reg [3:0] xstate;

always @ (posedge clk250)
begin
	if (!rst_)
	begin
		reach_xon_mark <= 1'b0; 
	    reach_xoff_mark <= 1'b0;
	    
		xreq <= 1'b0;
		xon <= 1'b0;
		
		xstate <= XIDLE;
	end
	
	else
	begin
		reach_xon_mark <= tx_xo_en & (usedw > XON_MARK);
		reach_xoff_mark <= tx_xo_en & (usedw < XOFF_MARK);
		
		case(xstate) 
		XIDLE:	begin
				xstate <= reach_xon_mark? XREQ1 : XIDLE;
				xreq <= 1'b0;
				xon <= 1'b0;
				end
				
		XREQ1:	  // request to send xon
				begin
				xstate <= xdone? XDONE1 : XREQ1;
				xreq <= 1'b1;
				xon <= 1'b1;
				end
				
		XDONE1:		 // xon has been transmitted, wait to send xoff
				begin
				xstate <= reach_xoff_mark? XREQ2 : XDONE1;
				xreq <= 1'b0;
				xon <= 1'b0;
				end
				
		XREQ2:		// request to send xoff
				begin
				xstate <= xdone? XIDLE : XREQ2;
				xreq <= 1'b1;
				xon <= 1'b0;
				end 
				
		default:
				begin
				xstate <= XIDLE;
				xreq <= 1'b0;
				xon <= 1'b0;
				end
		endcase
	end
end

//	MAIN STATE MACHINE
always@(posedge clk250)
if(!rst_ | !fmac_rxd_en156)
begin
	state 	<=   IDLE;
	raddr 	<=   0;
	wr_en	<=	1'b0;
	
	bdata_vld	<= 1'b0 ;	  //same as pre_wr_en.  Valid at the same time as BDATA, 1 clk before fifo_din
end
else

begin
	case(state) 
	IDLE: 
	begin
		state <= (!empty & has_pkt)? GET_CNT : IDLE;
		raddr <= rptr[RX_DRAM_ADDR_WIDTH-1:0];
		wr_en <= 1'b0;		
		
		bdata_vld <= 1'b0;		
	end
	
	//for back2back pkt, ld_byte happens 1 clk later than normal to allow time for RAM delay
			GET_CNT: 
	begin
		state <= GET_WT1 ; 
		raddr <= raddr_plus1;
		wr_en <= 1'b0;
		bdata_vld <= 1'b0;		
	end
	
	//cannot read the next one yet if FIFO has no room otherwise we will loose data
			GET_WT1: 
	begin
		state <= rx_fifo_ok? RAM_WT1 : GET_WT1;
				raddr <= rx_fifo_ok? raddr_plus1: raddr;
		wr_en <= 1'b0;
		bdata_vld <= 1'b0;		
	end
	
	RAM_WT1: 
	begin
		state <= GET_WT2 ;
		raddr <= raddr_plus1;
		wr_en <= 1'b0;		
		
				bdata_vld <= 1'b0;		
	end
	
	GET_WT2: 
	begin
		state <= RX_DAT;
		raddr <= raddr_plus1;
		wr_en <= 1'b1;			   //for writing NBYTE into RxFIFO
		bdata_vld <= 1'b1;		
	end
	
	RX_DAT: 
	begin
		state <= rx_cnt[15]? RX_WT : RX_DAT;
		raddr <= raddr_plus1;
		wr_en <= 1'b1;			   //for writing the data into RxFIFO
		
		bdata_vld <= 
			//if nbyte has extra bytes, assert 1 last time
					rx_cnt[15] ? ( (|nbyte[2:0]) ? 1'b1 : 1'b0 ) : 
					1'b1;		
	end
	RX_WT: 
	begin
		state <= RX_DONE;
		raddr <= rptr[RX_DRAM_ADDR_WIDTH-1:0];
		wr_en <= (|nbyte[2:0])? 1'b1 : 1'b0;		  //write extra bytes due to NBYTE not even # of qwds
		
		bdata_vld <= 1'b0 ;
	end
	RX_DONE: 
	begin
							state <= (!empty & has_pkt) ? GET_CNT : IDLE;
		raddr <= rptr[RX_DRAM_ADDR_WIDTH-1:0];
		wr_en <= 1'b0;
		bdata_vld <= 1'b0 ;
	end
	endcase

end



//	OUTPUTS OF STATE MACHINE & CONTROL SIGNALS
always @ (posedge clk250)
begin
	if (!rst_ | !fmac_rxd_en156)	
	begin
	
										
		pre_stat 	<= 8'h0;
		pre_stat2 	<= 8'h0;
		rx_cnt		<=   16'h0;
						
		rptr   <=   0;
		empty  <=   1'b1;
		has_pkt	<= 1'b0;
		
		ld_byte	<=   1'b0;
		ld_port	<=   1'b0;
		b2b_pkt	<=   1'b0;

		crc_we_ 	<=   1'b1;
		crc_last_	<=   1'b1;
		crc_cnt  	<=   16'h0;

		advance	<=	1'b0;
		rewind	<=	1'b0;
		
		hold  <=   1'b0;
		raddr_marker <=	0;
		
		vlan_mode	<= 1'b0 ;
		normal_ip	<= 1'b0 ;
		non_ip		<= 1'b0 ;
		csum_abort	<= 1'b0 ;
	end
	
	else
	begin
							crc_we_  <=   
								crc_we_ ? !(st_ram_wt1) : 
								(!crc_last_);
		
		crc_last_<=   
								crc_last_ ? (crc_we_ || !crc_cnt[15]) : 
								1'b1;
				
		crc_cnt  <=   
			//hold - keep from free runnning
				(st_idle | st_rx_done) ? 16'h0 :
				(st_ram_wt1) ? (nbyte - 16'd17) : 
				(crc_cnt - 16'd8); 

							ld_byte	<=   
			//normal ld of byte cnt
				(st_idle  & !empty & has_pkt ) |
			//back 2 back pkt, ld byte from just completed a previous pkt
				b2b_pkt
			;
		ld_port	<=   ld_byte;
		
		b2b_pkt	<= st_rx_done & !empty & has_pkt;
		
			//gating with has_pkt to avoid erroneous conditions
								empty <=   (diff == 0);
					has_pkt	<= (diff >= 4'd3 ) ;
		
															
			//shifting a bit around each time wptr==wptr_chk
										
		pre_stat <= ld_byte ? rdata[31:24] : pre_stat;
		
		vlan_mode	<=	ld_byte ? rdata[31] : vlan_mode ;
		normal_ip	<=	ld_byte ? rdata[28] : normal_ip ;
		non_ip		<= !(vlan_mode | normal_ip) ;
		
		csum_abort	<=
									csum_abort ? 1'b0 :		
			mac_en2 & !(vlan_mode | normal_ip) ? 1'b1 :
			//normal pre_cs completion
													(advance | rewind) ? 1'b1 :		
			1'b0 ;
					
							pre_stat2 <= 
			ld_byte ? rdata[23:16] : pre_stat2;
		
		rx_cnt <=   
						(st_idle | st_rx_done) ? 16'h0 :
						st_get_wt2 ? (nbyte - 16'd16) : 
			//count down (should only count down during READ?)
						(rx_cnt - 16'd8);
		rptr   <=   
			//update the rptr on last data read
						(st_rx_dat & rx_cnt[15])? new_rptr : 
						rptr;
		rewind	<=	crc32_vld_? 1'b0 : (bad_crc & rx_check_crc);	//	ignore if bad crc and crc_check is enable			
		advance	<=	
			//cannot advance the RxFIFO if not enabled
												crc32_vld_? 1'b0 : (!bad_crc | (bad_crc & !rx_check_crc)); 		//	keep if good crc or bad crc but crc_check is disable
	
							hold <=   st_rx_dat & (rx_cnt <= 16'd8);
					raddr_marker <=	(st_rx_dat & !hold)? raddr : raddr_marker;
	end
end
    

always@ (posedge clk250)
	if (!rst_)
		begin
		MAX_PKT_SIZE	<=	14'd1518	;
		end
	else
		begin
		MAX_PKT_SIZE	<=	fmac_ctrl1_dly[13:0]	;

		end


reg		[31:0]		STAT_GROUP_LO_DOUT;
reg		[31:0]		STAT_GROUP_HI_DOUT;

//156MHz - local info for tracking various counts
reg				pkt_rcv_jabber 	;
reg				pkt_rcv_fragment 	;

reg				pkt_rcv64 	;
reg				pkt_rcv127 	;
reg				pkt_rcv255 	;
reg				pkt_rcv511 	;
reg				pkt_rcv1023 ;
reg				pkt_rcv1518 ;
		
reg				pkt_rcv2047  ; 		
reg				pkt_rcv4095  ; 		
reg				pkt_rcv8191  ; 		
reg				pkt_rcv9018  ; 		
reg				pkt_rcv9022  ; 		
reg				pkt_rcv9199p ;		

//single bit synced selects
reg     SYNC_PKT_CNT_SEL   ;
reg		SYNC_BYTE_CNT_SEL  ;
reg		SYNC_PKT_CNT_OVERSIZE_SEL	;

reg     SYNC_PKT_CNT_JABBER_SEL 	       ;
reg     SYNC_PKT_CNT_FRAGMENT_SEL 	       ;

			reg     SYNC_SEL64 	       ;
reg		SYNC_SEL127 	   ;
reg		SYNC_SEL255 	   ;
reg		SYNC_SEL511 	   ;
reg		SYNC_SEL1023       ;
reg		SYNC_SEL1518       ;
		                 
reg		SYNC_SEL2047       ;
reg		SYNC_SEL4095       ;
reg		SYNC_SEL8191       ;
reg		SYNC_SEL9018       ;
reg		SYNC_SEL9022       ;
reg		SYNC_SEL9199P      ;
		                 
reg		SYNC_SEL_BCAST     ;
reg		SYNC_SEL_MCAST     ;


//signal used to allow the 156MHz signal to pass completely before adding again
reg		sync_wait_dly		;


reg		[15:0]		sync_nbyte;
reg					sync_pkt_done;


parameter	[9:0]
		RX_PKT_CNT_ADDR     =	10'h0_28,	
		RX_BYTE_CNT_ADDR	=	10'h0_38,	
		
		PKT_CNT_OVERSIZE_ADDR	=	10'h0_60,	
		
			//new regs in the REGULAR group
		PKT_CNT_JABBER_ADDR		=	10'h0_78,	
		PKT_CNT_FRAGMENT_ADDR	=	10'h0_80,	
		
		PKT_RCV_ADDR64 		=	10'h0_00,
		PKT_RCV_ADDR127 	=	10'h0_08,
		PKT_RCV_ADDR255 	=	10'h0_10,
		PKT_RCV_ADDR511 	=	10'h0_18,
		PKT_RCV_ADDR1023 	=	10'h0_20,
		PKT_RCV_ADDR1518 	=	10'h0_28,
		        
		PKT_RCV_ADDR2047  	=	10'h0_30, 		
		PKT_RCV_ADDR4095  	=	10'h0_38, 		
		PKT_RCV_ADDR8191  	=	10'h0_40, 		
		PKT_RCV_ADDR9018  	=	10'h0_48, 		
		PKT_RCV_ADDR9022  	=	10'h0_50, 		
		PKT_RCV_ADDR9199P 	=	10'h0_58,	 //9199 plus bytes
		
		PKT_RCV_ADDR_BCAST 	=	10'h0_60,	   //broadcast
		PKT_RCV_ADDR_MCAST 	=	10'h0_68	   //multicast
		
		;	

		//regular group
wire		RX_PKT_CNT_SEL			=	(STAT_GROUP_addr[9:3] == RX_PKT_CNT_ADDR[9:3]  );
wire		RX_BYTE_CNT_SEL			=	(STAT_GROUP_addr[9:3] == RX_BYTE_CNT_ADDR[9:3]  );

wire		PKT_CNT_OVERSIZE_SEL	=	(STAT_GROUP_addr[9:3] == PKT_CNT_OVERSIZE_ADDR[9:3]  );

wire		PKT_CNT_JABBER_SEL		=	(STAT_GROUP_addr[9:3] == PKT_CNT_JABBER_ADDR[9:3]  );
wire		PKT_CNT_FRAGMENT_SEL	=	(STAT_GROUP_addr[9:3] == PKT_CNT_FRAGMENT_ADDR[9:3]  );

		//STAT GROUP
		wire		PKT_RCV_SEL64 		=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR64[9:3]  );
wire		PKT_RCV_SEL127 		=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR127[9:3] );
wire		PKT_RCV_SEL255 		=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR255[9:3] );
wire		PKT_RCV_SEL511 		=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR511[9:3] );
wire		PKT_RCV_SEL1023 	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR1023[9:3]);
wire		PKT_RCV_SEL1518 	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR1518[9:3]);
		                                            
wire		PKT_RCV_SEL2047  	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR2047[9:3]);	
wire		PKT_RCV_SEL4095  	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR4095[9:3]);	
wire		PKT_RCV_SEL8191  	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR8191[9:3]);	
wire		PKT_RCV_SEL9018  	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR9018[9:3]);	
wire		PKT_RCV_SEL9022  	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR9022[9:3]);	
wire		PKT_RCV_SEL9199P 	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR9199P[9:3]);
                                                    
wire		PKT_RCV_SEL_BCAST  	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR_BCAST[9:3]);	
wire		PKT_RCV_SEL_MCAST 	=	(STAT_GROUP_addr[9:3] == PKT_RCV_ADDR_MCAST[9:3]);


		
reg		DLY_PKT_RCV_SEL64 		;	
reg		DLY_PKT_RCV_SEL127 		;	
reg		DLY_PKT_RCV_SEL255 		;	
reg		DLY_PKT_RCV_SEL511 		;	
reg		DLY_PKT_RCV_SEL1023 	;	
reg		DLY_PKT_RCV_SEL1518 	;	
	                                            
reg		DLY_PKT_RCV_SEL2047  	;		
reg		DLY_PKT_RCV_SEL4095  	;		
reg		DLY_PKT_RCV_SEL8191  	;		
reg		DLY_PKT_RCV_SEL9018  	;		
reg		DLY_PKT_RCV_SEL9022  	;		
reg		DLY_PKT_RCV_SEL9199P 	;	
                                                
reg		DLY_PKT_RCV_SEL_BCAST  	;		
reg		DLY_PKT_RCV_SEL_MCAST 	;	

//USED FOR READING
always @(posedge clk250)
	begin
		
		DLY_PKT_RCV_SEL64 		<= (!rst_) ? 1'b0 : PKT_RCV_SEL64 	 ;	
		DLY_PKT_RCV_SEL127 		<= (!rst_) ? 1'b0 : PKT_RCV_SEL127 	 ;	
		DLY_PKT_RCV_SEL255 		<= (!rst_) ? 1'b0 : PKT_RCV_SEL255 	 ;	
		DLY_PKT_RCV_SEL511 		<= (!rst_) ? 1'b0 : PKT_RCV_SEL511 	 ;	
		DLY_PKT_RCV_SEL1023 	<= (!rst_) ? 1'b0 : PKT_RCV_SEL1023  ;	
		DLY_PKT_RCV_SEL1518 	<= (!rst_) ? 1'b0 : PKT_RCV_SEL1518  ;	
	                                                                 
		DLY_PKT_RCV_SEL2047  	<= (!rst_) ? 1'b0 : PKT_RCV_SEL2047  ;		
		DLY_PKT_RCV_SEL4095  	<= (!rst_) ? 1'b0 : PKT_RCV_SEL4095  ;		
		DLY_PKT_RCV_SEL8191  	<= (!rst_) ? 1'b0 : PKT_RCV_SEL8191  ;		
		DLY_PKT_RCV_SEL9018  	<= (!rst_) ? 1'b0 : PKT_RCV_SEL9018  ;		
		DLY_PKT_RCV_SEL9022  	<= (!rst_) ? 1'b0 : PKT_RCV_SEL9022  ;		
		DLY_PKT_RCV_SEL9199P 	<= (!rst_) ? 1'b0 : PKT_RCV_SEL9199P ;	
                                                
		DLY_PKT_RCV_SEL_BCAST  	<= (!rst_) ? 1'b0 : PKT_RCV_SEL_BCAST;		
		DLY_PKT_RCV_SEL_MCAST 	<= (!rst_) ? 1'b0 : PKT_RCV_SEL_MCAST;	
	
	end

//sync the select signal for better timing and gate more infor for clr
always @(posedge clk250)
	if (!rst_)
		begin
		
        SYNC_PKT_CNT_SEL   <=	1'b0;
		SYNC_BYTE_CNT_SEL  <=	1'b0;
		
		SYNC_PKT_CNT_OVERSIZE_SEL	<= 1'b0;
		
		SYNC_PKT_CNT_JABBER_SEL		<= 1'b0;
		SYNC_PKT_CNT_FRAGMENT_SEL	<= 1'b0;
		
			        SYNC_SEL64 	       <=	1'b0;
		SYNC_SEL127 	   <=	1'b0;
		SYNC_SEL255 	   <=	1'b0;
		SYNC_SEL511 	   <=	1'b0;
		SYNC_SEL1023       <=	1'b0;
		SYNC_SEL1518       <=	1'b0;
		                 
		SYNC_SEL2047       <=	1'b0;
		SYNC_SEL4095       <=	1'b0;
		SYNC_SEL8191       <=	1'b0;
		SYNC_SEL9018       <=	1'b0;
		SYNC_SEL9022       <=	1'b0;
		SYNC_SEL9199P      <=	1'b0;
		                 
		SYNC_SEL_BCAST     <=	1'b0;
		SYNC_SEL_MCAST     <=	1'b0;
		end
	else
		begin
		SYNC_PKT_CNT_SEL   <=	RX_PKT_CNT_SEL  & !STAT_GROUP_sel;
		SYNC_BYTE_CNT_SEL  <=	RX_BYTE_CNT_SEL & !STAT_GROUP_sel;
		
		SYNC_PKT_CNT_OVERSIZE_SEL  <=	PKT_CNT_OVERSIZE_SEL 	& !STAT_GROUP_sel;
		
		SYNC_PKT_CNT_JABBER_SEL  	<=	PKT_CNT_JABBER_SEL 		& !STAT_GROUP_sel;
		SYNC_PKT_CNT_FRAGMENT_SEL  	<=	PKT_CNT_FRAGMENT_SEL 	& !STAT_GROUP_sel;
		
			//stat group
			        SYNC_SEL64 	       <=	PKT_RCV_SEL64 	  & STAT_GROUP_sel;
		SYNC_SEL127 	   <=	PKT_RCV_SEL127 	  & STAT_GROUP_sel;
		SYNC_SEL255 	   <=	PKT_RCV_SEL255 	  & STAT_GROUP_sel;
		SYNC_SEL511 	   <=	PKT_RCV_SEL511 	  & STAT_GROUP_sel;
		SYNC_SEL1023       <=	PKT_RCV_SEL1023   & STAT_GROUP_sel;
		SYNC_SEL1518       <=	PKT_RCV_SEL1518   & STAT_GROUP_sel;
		                                       
		SYNC_SEL2047       <=	PKT_RCV_SEL2047   & STAT_GROUP_sel;
		SYNC_SEL4095       <=	PKT_RCV_SEL4095   & STAT_GROUP_sel;
		SYNC_SEL8191       <=	PKT_RCV_SEL8191   & STAT_GROUP_sel;
		SYNC_SEL9018       <=	PKT_RCV_SEL9018   & STAT_GROUP_sel;
		SYNC_SEL9022       <=	PKT_RCV_SEL9022   & STAT_GROUP_sel;
		SYNC_SEL9199P      <=	PKT_RCV_SEL9199P  & STAT_GROUP_sel;
		                                       
		SYNC_SEL_BCAST     <=	PKT_RCV_SEL_BCAST & STAT_GROUP_sel;
		SYNC_SEL_MCAST     <=	PKT_RCV_SEL_MCAST & STAT_GROUP_sel;
		end
	
		
//=========== tracking the reg value of various packet sizes =============
wire		pkt_size_jabber	;
wire		pkt_size_fragment	;

wire		pkt_size64 	 	; 
wire		pkt_size127  	; 
wire		pkt_size255  	; 
wire		pkt_size511  	; 
wire		pkt_size1023 	; 
wire		pkt_size1518 	; 
		                      
wire		pkt_size2047  	;
wire		pkt_size4095  	;
wire		pkt_size8191  	;
wire		pkt_size9018  	;
wire		pkt_size9022  	;
wire		pkt_size9199p 	;


assign		pkt_size_jabber 	 	=	pkt_done	?	(nbyte > MAX_PKT_SIZE	?	1'b1	: 1'b0)	:	1'b0;
assign		pkt_size_fragment 	 	=	pkt_done	?	(nbyte < 14'd64			?	1'b1	: 1'b0)	:	1'b0;
assign		pkt_size64 	 	=	(nbyte == 16'd64);
assign		pkt_size127  	=	(nbyte > 16'd64    ) & (nbyte < 16'd128);
assign		pkt_size255  	=	(nbyte >= 16'd128  ) & (nbyte < 16'd256 );
assign		pkt_size511  	=	(nbyte >= 16'd256  ) & (nbyte < 16'd512 );
assign		pkt_size1023 	=	(nbyte >= 16'd512  ) & (nbyte < 16'd1024 );
assign		pkt_size1518 	=	(nbyte >= 16'd1024 ) & (nbyte <= 16'd1518 );
		        
assign		pkt_size2047  	=	(nbyte >= 16'd1519 ) & (nbyte < 16'd2048 ); 		
assign		pkt_size4095  	=	(nbyte >= 16'd2048 ) & (nbyte < 16'd4096 ); 		
assign		pkt_size8191  	=	(nbyte >= 16'd4096 ) & (nbyte < 16'd8192 ); 		
assign		pkt_size9018  	=	(nbyte >= 16'd8192 ) & (nbyte <= 16'd9018 ); 		
assign		pkt_size9022  	=	(nbyte >= 16'd9019 ) & (nbyte <= 16'd9022 ); 		
assign		pkt_size9199p 	=	(nbyte > 16'd9199 );		

always@ (posedge clk250)       
begin
	if (!rst_)
		begin
		pkt_rcv64 	<=	1'b0;
		pkt_rcv127 	<=	1'b0;
		pkt_rcv255 	<=	1'b0;
		pkt_rcv511 	<=	1'b0;
		pkt_rcv1023 <=	1'b0;
		pkt_rcv1518 <=	1'b0;
		
		pkt_rcv2047  <=	1'b0; 		
		pkt_rcv4095  <=	1'b0; 		
		pkt_rcv8191  <=	1'b0; 		
		pkt_rcv9018  <=	1'b0; 		
		pkt_rcv9022  <=	1'b0; 		
		pkt_rcv9199p <=	1'b0;		
		
		sync_nbyte		<= 16'h0;
		sync_pkt_done	<= 1'b0;	
		
		pkt_rcv_jabber		<= 1'b0;
		pkt_rcv_fragment	<= 1'b0;
					
		end
	
	else
		begin
								
		
		pkt_rcv64 	<=	
						(pkt_done & pkt_size64  )? 1'b1 :
						pkt_done_dly2 ? 1'b0 :
						pkt_rcv64 ;
		pkt_rcv127 	<=	(pkt_done & pkt_size127 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv127 ;
		pkt_rcv255 	<=	(pkt_done & pkt_size255 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv255 ;
		pkt_rcv511  <=	(pkt_done & pkt_size511 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv511 ;
		pkt_rcv1023 <=	(pkt_done & pkt_size1023)? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv1023 ;
		pkt_rcv1518 <=	(pkt_done & pkt_size1518)? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv1518 ;
					pkt_rcv2047 <=	(pkt_done & pkt_size2047 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv2047  ;
		pkt_rcv4095 <=	(pkt_done & pkt_size4095 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv4095  ;
		pkt_rcv8191 <=	(pkt_done & pkt_size8191 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv8191  ;
		pkt_rcv9018 <=	(pkt_done & pkt_size9018 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv9018  ;
		pkt_rcv9022 <=	(pkt_done & pkt_size9022 )? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv9022  ;
		pkt_rcv9199p <=	(pkt_done & pkt_size9199p)? 1'b1 : pkt_done_dly2 ? 1'b0 : pkt_rcv9199p ;
		
						
		//used in tracking total cumulative byte count
		sync_nbyte	<=	
						pkt_done ? nbyte :
						pkt_done_dly2 ? 16'h0 :
						sync_nbyte;
		
		//used in tracking total cumulative number of packets
		sync_pkt_done <=
						pkt_done ? 1'b1 :
						pkt_done_dly2 ? 1'b0 :
						sync_pkt_done;

		//used in tracking JABBER & FRAGMENT packet count
		pkt_rcv_jabber <=
								
						!crc32_vld_ & bad_crc & pkt_size_jabber ? 1'b1 : 1'b0;
								
																
												
		pkt_rcv_fragment <=
								
						!crc32_vld_ & bad_crc & pkt_size_fragment ? 1'b1 : 1'b0;
				
								
												
												
		end
end


//======================= SYNC to 250 MHz clock ===================    
    
always@ (posedge clk250)
	if (!rst_)
		begin
		sync_wait				<= 1'b0;
		sync_wait_dly			<= 1'b0;
		
		sync_wait_crc				<= 1'b0;
		
			//regular group
		RX_PKT_CNT_LO			<= 33'h0;
    	RX_PKT_CNT_HI						<= 32'h0;
    	RX_BYTE_CNT_LO			<= 33'h0;
    	RX_BYTE_CNT_HI						<= 32'h0;
    	
    	FMAC_PKT_CNT_JABBER					<= 32'h0;
    	FMAC_PKT_CNT_FRAGMENT				<= 32'h0;
			
			//STAT GROUP
		FMAC_RX_PKT_CNT64_LO	<= 33'h0;
    	FMAC_RX_PKT_CNT64_HI				<= 32'h0;
    	FMAC_RX_PKT_CNT127_LO	<= 33'h0;
    	FMAC_RX_PKT_CNT127_HI				<= 32'h0;
    	FMAC_RX_PKT_CNT255_LO	<= 33'h0;
    	FMAC_RX_PKT_CNT255_HI				<= 32'h0;
    	FMAC_RX_PKT_CNT511_LO	<= 33'h0;
    	FMAC_RX_PKT_CNT511_HI				<= 32'h0;
    	FMAC_RX_PKT_CNT1023_LO	<= 33'h0;
    	FMAC_RX_PKT_CNT1023_HI				<= 32'h0;
    	FMAC_RX_PKT_CNT1518_LO	<= 33'h0;
    	FMAC_RX_PKT_CNT1518_HI				<= 32'h0;

       	FMAC_RX_PKT_CNT2047_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT2047_HI				<= 32'h0;
       	FMAC_RX_PKT_CNT4095_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT4095_HI				<= 32'h0;
       	FMAC_RX_PKT_CNT8191_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT8191_HI				<= 32'h0;
       	FMAC_RX_PKT_CNT9018_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT9018_HI				<= 32'h0;
       	FMAC_RX_PKT_CNT9022_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT9022_HI				<= 32'h0;
       	FMAC_RX_PKT_CNT9199P_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT9199P_HI				<= 32'h0;
       	
       	FMAC_RX_PKT_CNT_BCAST_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT_BCAST_HI	<= 32'h0;
       	
       	FMAC_RX_PKT_CNT_MCAST_LO	<= 33'h0;
       	FMAC_RX_PKT_CNT_MCAST_HI	<= 32'h0;
		
		end
	
	else
		begin
		sync_wait		 <= 
						 		stat_ok_dly4 ? 1'b0 :
						 		statistic_ok ? 1'b1 :
						 		sync_wait;
		sync_wait_dly	 <= 	sync_wait ;
		                 
		sync_wait_crc	 <= 
								crc_ok_dly4 ? 1'b0 :
								crc_ok ? 1'b1 :
								sync_wait_crc;
		

		RX_PKT_CNT_LO			<=
    					(fmac_rx_clr_en & SYNC_PKT_CNT_SEL) ? 33'h0 :
    					(statistic_ok & !sync_wait & sync_pkt_done) ? RX_PKT_CNT_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,RX_PKT_CNT_LO[31:0]  } :		
    				 	RX_PKT_CNT_LO;
    	RX_PKT_CNT_HI			<=
    				(fmac_rx_clr_en & SYNC_PKT_CNT_SEL) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? RX_PKT_CNT_HI + RX_PKT_CNT_LO[32]   : 
    				RX_PKT_CNT_HI;
    	
    	RX_BYTE_CNT_LO			<=
    					(fmac_rx_clr_en & SYNC_BYTE_CNT_SEL) ? 33'h0 :
    					(statistic_ok & !sync_wait) ? RX_BYTE_CNT_LO + sync_nbyte  :
    					stat_ok_dly4 ? {1'b0,RX_BYTE_CNT_LO[31:0]  } :
    				 	RX_BYTE_CNT_LO;
    	RX_BYTE_CNT_HI			<=
    				(fmac_rx_clr_en & SYNC_BYTE_CNT_SEL) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? RX_BYTE_CNT_HI + RX_BYTE_CNT_LO[32]   : 
    				RX_BYTE_CNT_HI;
		
    	FMAC_PKT_CNT_JABBER		<= 
    					    			(fmac_rx_clr_en & SYNC_PKT_CNT_JABBER_SEL) ? 32'h0 :
    					    			(!crc_ok & sync_wait_crc & pkt_rcv_jabber) ? FMAC_PKT_CNT_JABBER + 1'b1   : 
    					            	
    					    			FMAC_PKT_CNT_JABBER;
    					
    	FMAC_PKT_CNT_FRAGMENT	<= 
    									(fmac_rx_clr_en & SYNC_PKT_CNT_FRAGMENT_SEL) ? 32'h0 :
    					    			(!crc_ok & sync_wait_crc & pkt_rcv_fragment) ? FMAC_PKT_CNT_FRAGMENT + 1'b1   : 
    					
    					    			FMAC_PKT_CNT_FRAGMENT;
		
		FMAC_RX_PKT_CNT64_LO[32:0]	<= 
    					//clear on a read to my reg
    					    			(fmac_rx_clr_en & SYNC_SEL64) ? 33'h0 :
    					//increment if OK and my count
    					    			(statistic_ok & !sync_wait & pkt_rcv64) ? FMAC_RX_PKT_CNT64_LO[32:0] + 1'b1   : 
    					//clear carry bit after add it to the HI reg
    					    			stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT64_LO[31:0]  } :
    					    			FMAC_RX_PKT_CNT64_LO;
    	FMAC_RX_PKT_CNT64_HI	<= 
    				    				(fmac_rx_clr_en & SYNC_SEL64) ? 32'h0 :
    				//adding the carry
    				    				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT64_HI + FMAC_RX_PKT_CNT64_LO[32]   : 
    				    				FMAC_RX_PKT_CNT64_HI;
    				
    	FMAC_RX_PKT_CNT127_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL127) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv127) ? FMAC_RX_PKT_CNT127_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT127_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT127_LO;
    	FMAC_RX_PKT_CNT127_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL127) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT127_HI + FMAC_RX_PKT_CNT127_LO[32]   : 
    				FMAC_RX_PKT_CNT127_HI;
   	
    	FMAC_RX_PKT_CNT255_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL255) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv255) ? FMAC_RX_PKT_CNT255_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT255_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT255_LO;
    	FMAC_RX_PKT_CNT255_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL255) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT255_HI + FMAC_RX_PKT_CNT255_LO[32]   : 
    				FMAC_RX_PKT_CNT255_HI;
    	
    	FMAC_RX_PKT_CNT511_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL511) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv511) ? FMAC_RX_PKT_CNT511_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT511_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT511_LO;
    	FMAC_RX_PKT_CNT511_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL511) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT511_HI + FMAC_RX_PKT_CNT511_LO[32]   : 
    				FMAC_RX_PKT_CNT511_HI;
    	
    	FMAC_RX_PKT_CNT1023_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL1023) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv1023) ? FMAC_RX_PKT_CNT1023_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT1023_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT1023_LO;
    	FMAC_RX_PKT_CNT1023_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL1023) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT1023_HI + FMAC_RX_PKT_CNT1023_LO[32]   : 
    				FMAC_RX_PKT_CNT1023_HI;
    	
    	FMAC_RX_PKT_CNT1518_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL1518) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv1518) ? FMAC_RX_PKT_CNT1518_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT1518_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT1518_LO;
    	FMAC_RX_PKT_CNT1518_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL1518) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT1518_HI + FMAC_RX_PKT_CNT1518_LO[32]   : 
    				FMAC_RX_PKT_CNT1518_HI;

       	FMAC_RX_PKT_CNT2047_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL2047) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv2047) ? FMAC_RX_PKT_CNT2047_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT2047_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT2047_LO;
       	FMAC_RX_PKT_CNT2047_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL2047) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT2047_HI + FMAC_RX_PKT_CNT2047_LO[32]   : 
    				FMAC_RX_PKT_CNT2047_HI;
       	
       	FMAC_RX_PKT_CNT4095_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL4095) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv4095) ? FMAC_RX_PKT_CNT4095_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT4095_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT4095_LO;
       	FMAC_RX_PKT_CNT4095_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL4095) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT4095_HI + FMAC_RX_PKT_CNT4095_LO[32]   : 
    				FMAC_RX_PKT_CNT4095_HI;
       	
       	FMAC_RX_PKT_CNT8191_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL8191) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv8191) ? FMAC_RX_PKT_CNT8191_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT8191_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT8191_LO;
       	FMAC_RX_PKT_CNT8191_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL8191) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT8191_HI + FMAC_RX_PKT_CNT8191_LO[32]   : 
    				FMAC_RX_PKT_CNT8191_HI;
       	
       	FMAC_RX_PKT_CNT9018_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL9018) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv9018) ? FMAC_RX_PKT_CNT9018_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT9018_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT9018_LO;
       	FMAC_RX_PKT_CNT9018_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL9018) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT9018_HI + FMAC_RX_PKT_CNT9018_LO[32]   : 
    				FMAC_RX_PKT_CNT9018_HI;
       	
       	FMAC_RX_PKT_CNT9022_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL9022) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv9022) ? FMAC_RX_PKT_CNT9022_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT9022_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT9022_LO;
       	FMAC_RX_PKT_CNT9022_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL9022) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT9022_HI + FMAC_RX_PKT_CNT9022_LO[32]   : 
    				FMAC_RX_PKT_CNT9022_HI;
       	
       	FMAC_RX_PKT_CNT9199P_LO	<= 
    					(fmac_rx_clr_en & SYNC_SEL9199P) ? 33'h0 :
    					(statistic_ok & !sync_wait & pkt_rcv9199p) ? FMAC_RX_PKT_CNT9199P_LO + 1'b1  :
    					stat_ok_dly4 ? {1'b0,FMAC_RX_PKT_CNT9199P_LO[31:0]  } :
    				 	FMAC_RX_PKT_CNT9199P_LO;
       	FMAC_RX_PKT_CNT9199P_HI	<= 
    				(fmac_rx_clr_en & SYNC_SEL9199P) ? 32'h0 :
     				(stat_ok_dly & !sync_wait_dly) ? FMAC_RX_PKT_CNT9199P_HI + FMAC_RX_PKT_CNT9199P_LO[32]   : 
    				FMAC_RX_PKT_CNT9199P_HI;
    				
    	//==== BROADCAST and MULTICAST has different events than the above			
    	    	    	FMAC_RX_PKT_CNT_BCAST_LO <=
    			(fmac_rx_clr_en & SYNC_SEL_BCAST) ? 33'h0 :
    			add_lo_bcast ? FMAC_RX_PKT_CNT_BCAST_LO + 1'b1 :
    			clr_carry_cast ? {1'b0, FMAC_RX_PKT_CNT_BCAST_LO[31:0]} :
    			FMAC_RX_PKT_CNT_BCAST_LO;
    			
    	FMAC_RX_PKT_CNT_BCAST_HI <=
    			(fmac_rx_clr_en & SYNC_SEL_BCAST) ? 32'h0 :
    			add_hi_cast ? FMAC_RX_PKT_CNT_BCAST_HI + FMAC_RX_PKT_CNT_BCAST_LO[32] :
    			FMAC_RX_PKT_CNT_BCAST_HI;
    			
    			
    	FMAC_RX_PKT_CNT_MCAST_LO <=
    			(fmac_rx_clr_en & SYNC_SEL_MCAST) ? 33'h0 :
    			add_lo_mcast ? FMAC_RX_PKT_CNT_MCAST_LO + 1'b1 :
    			clr_carry_cast ? {1'b0, FMAC_RX_PKT_CNT_MCAST_LO[31:0]} :
    			FMAC_RX_PKT_CNT_MCAST_LO;
    			
    	FMAC_RX_PKT_CNT_MCAST_HI <=
    			(fmac_rx_clr_en & SYNC_SEL_MCAST) ? 32'h0 :
    			add_hi_cast ? FMAC_RX_PKT_CNT_MCAST_HI + FMAC_RX_PKT_CNT_MCAST_LO[32] :
    			FMAC_RX_PKT_CNT_MCAST_HI;

    					
		end
    
//======= MUXING OUT THE LO & HI GROUP


always@ (posedge clk250)
	if (!rst_)
		begin
    	STAT_GROUP_LO_DOUT	<=	32'h0	;
    	STAT_GROUP_HI_DOUT	<=	32'h0	;
    	end
    	
    else
    	begin
    	//PKT_RCV_SEL is combinational
    	    	    	STAT_GROUP_LO_DOUT	<=	
    			{32{DLY_PKT_RCV_SEL64 	  }} &  FMAC_RX_PKT_CNT64_LO[31:0]   |
    	        {32{DLY_PKT_RCV_SEL127 	  }} &  FMAC_RX_PKT_CNT127_LO[31:0]  |
    	        {32{DLY_PKT_RCV_SEL255 	  }} &  FMAC_RX_PKT_CNT255_LO[31:0]  |
    	        {32{DLY_PKT_RCV_SEL511 	  }} &  FMAC_RX_PKT_CNT511_LO[31:0]  |
    	        {32{DLY_PKT_RCV_SEL1023   }} &  FMAC_RX_PKT_CNT1023_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL1518   }} &  FMAC_RX_PKT_CNT1518_LO[31:0] |
    	                         
    	        {32{DLY_PKT_RCV_SEL2047   }} &  FMAC_RX_PKT_CNT2047_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL4095   }} &  FMAC_RX_PKT_CNT4095_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL8191   }} &  FMAC_RX_PKT_CNT8191_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL9018   }} &  FMAC_RX_PKT_CNT9018_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL9022   }} &  FMAC_RX_PKT_CNT9022_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL9199P  }} &  FMAC_RX_PKT_CNT9199P_LO[31:0] |
    	        
    	        {32{DLY_PKT_RCV_SEL_BCAST  }} &  FMAC_RX_PKT_CNT_BCAST_LO[31:0] |
    	        {32{DLY_PKT_RCV_SEL_MCAST  }} &  FMAC_RX_PKT_CNT_MCAST_LO[31:0] 
    	        ;
    	
    	STAT_GROUP_HI_DOUT	<=	
    			{32{DLY_PKT_RCV_SEL64 	  }} &  FMAC_RX_PKT_CNT64_HI   |
    	        {32{DLY_PKT_RCV_SEL127 	  }} &  FMAC_RX_PKT_CNT127_HI  |
    	        {32{DLY_PKT_RCV_SEL255 	  }} &  FMAC_RX_PKT_CNT255_HI  |
    	        {32{DLY_PKT_RCV_SEL511 	  }} &  FMAC_RX_PKT_CNT511_HI  |
    	        {32{DLY_PKT_RCV_SEL1023   }} &  FMAC_RX_PKT_CNT1023_HI |
    	        {32{DLY_PKT_RCV_SEL1518   }} &  FMAC_RX_PKT_CNT1518_HI |
    	                         
    	        {32{DLY_PKT_RCV_SEL2047   }} &  FMAC_RX_PKT_CNT2047_HI |
    	        {32{DLY_PKT_RCV_SEL4095   }} &  FMAC_RX_PKT_CNT4095_HI |
    	        {32{DLY_PKT_RCV_SEL8191   }} &  FMAC_RX_PKT_CNT8191_HI |
    	        {32{DLY_PKT_RCV_SEL9018   }} &  FMAC_RX_PKT_CNT9018_HI |
    	        {32{DLY_PKT_RCV_SEL9022   }} &  FMAC_RX_PKT_CNT9022_HI |
    	        {32{DLY_PKT_RCV_SEL9199P  }} &  FMAC_RX_PKT_CNT9199P_HI |
    	        
    	        {32{DLY_PKT_RCV_SEL_BCAST  }} &  FMAC_RX_PKT_CNT_BCAST_HI |
    	        {32{DLY_PKT_RCV_SEL_MCAST  }} &  FMAC_RX_PKT_CNT_MCAST_HI 
    	        
    	        ;    	
    	end
    
// GENERATING CLEAR SIGNALS FOR DIFFERENT REGs inside the FMAC_RX    
reg		clr_pkt_cnt_oversize	;

always @(posedge clk250)
	begin
			clr_pkt_cnt_oversize <= !rst_ ? 1'b0 : (fmac_rx_clr_en & SYNC_PKT_CNT_OVERSIZE_SEL) ? 1'b1 : 1'b0 ;
	
	end    
    

wire	[15:0]	raddr_marker_sync_out = 16'b0;
wire	[15:0]	wptr_sync_out = 16'b0;
	assign	wptr_sync = wptr_sync_out[12:0] ;
	assign	raddr_marker_sync = raddr_marker_sync_out[11:0]	;

assign	cnt_ld = ld_byte ;

wire	csum_gnt_ = 1'b0;
reg		csum_ack  = 1'b0;

always @(posedge clk250)
begin
	if (!rst_ )
		begin
		pkt_qwd_cnt	<=	8'h0;
 		bdata_dly1		<= 64'h0 ;
 		ipp_offset		<= 3'd0 ;
 		ip_dlen			<= 16'd0 ;
 		ipp_start		<= 1'b0 ;
 		
 		mac_en1		<= 1'b0 ;
 		mac_en2		<= 1'b0 ;
 		
 		csum_ack	<= 1'b0 ;
		end
	else
		begin
 		 		mac_en1		<= ipp_start ;
 		mac_en2		<= mac_en1 ;
		
		bdata_dly1	<= bdata ;	
		pkt_qwd_cnt	<= 
						cnt_ld ? 8'd0 :
							bdata_vld ? pkt_qwd_cnt + 4'd1 :
							pkt_qwd_cnt ;
			
		ipp_offset	<=
			vlan_mode ? 3'd2 :
			3'd6 ;
			
								ip_dlen		<=
			vlan_mode ? (nbyte - 8'd18) :
			(nbyte - 8'd14) ;
			
					ipp_start	<=
			vlan_mode ? st_get_wt2 :	
			st_ram_wt1 ;
			
		csum_ack	<= !csum_gnt_ ;
		
		end		
					 
end		






  
//synopsys translate_off
reg [(32 *8)-1:0] ascii_state;
always@(state)
begin
	case(state)
	IDLE: ascii_state = "IDLE";
	GET_CNT: ascii_state = "GET_CNT";
	GET_WT1: ascii_state = "GET_WT1";
	RAM_WT1: ascii_state = "RAM_WT1";
	GET_WT2: ascii_state = "GET_WT2";
	RX_DAT: ascii_state = "RX_DAT";
	RX_WT: ascii_state = "RX_WT";
	RX_DONE: ascii_state = "RX_DONE";
	default: ascii_state = "unknown";
	endcase
end

reg [(64 *8)-1:0] ascii_xstate;
always@(xstate)
begin
	case(xstate)
	XIDLE: 	ascii_xstate = "XIDLE";
	XREQ1: 	ascii_xstate = "XREQ1";
	XDONE1: ascii_xstate = "XDONE1";
	XREQ2: 	ascii_xstate = "XREQ2";
	default:ascii_xstate = "unknown";
	endcase
end
//synopsys translate_on

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

module tcore_rx_xgmii(
	clk156,				  // i-1
	clk250,				  // i-1
	rst_,				  // i-1
                    	
	TCORE_MODE	,		  // i-1
	
	xaui_mode	,		   // i-1
                    	
	pkt_data	,		  //o-64
    pkt_start	,		 //o-1
	pkt_end		,		  //o-1
	pkt_we		,		 //o-1
	
	drx_pkt_data		,	//o-64
	drx_pkt_start 		,	//o-1
	drx_pkt_end 		,	//o-1
	drx_pkt_we 			,	//o-1
	drx_pkt_beat_bcnt	,	//o-3
	drx_pkt_be			,	 //o-8
	drx_crc32 			,	 //o-32
	drx_crc_vld 		,	 //o-1
	drx_crc_err 		,	 //o-1
	drx_crc_err_dly1 	,	 //o-1
	
	wen,					 //o-1
	waddr,					 // o-param
	wptr,					 // o-param
	raddr_marker,			 // i-param
	wdata,					 // o-64
	                	
	rx_pause,				 // o-1
	rx_pvalue,				  // o-16
	rx_pack,				 // i-1
	                	
	pause_en,				 // i-1
	bcast_en,				 // i-1
	pmode,					 // i-1, promiscuous mode enable bit
	daddr0,					 // i-48
	                	
	rsize,					 // i-12
	rxd,					 // i-64
	rxc,					 // i-8
	br_sof4,				 // i-1, byte_reordering's sof4_out
	rxp,					 // i-8, not used, always 0
	
	fmac_ctrl1_dly	,		 //i-32, contains the max_pkt_size and enable
	fmac_rxd_en	,			 //i-1, from TSPE_CTRL1  reg
	
	FMAC_DCNT_OVERRUN,		  // o-32
	FMAC_DCNT_LINK_ERR,		  // o-32
	FMAC_PKT_CNT_OVERSIZE, 	  // o-32
	FIFO_OV_IPEND,			  // o-1
	
	clr_pkt_cnt_oversize	,	// i-1
	
	add_lo_bcast	,		   // o-1, these signals are 250Mhz pre-synced
	add_lo_mcast	,		   // o-1  
	clr_carry_cast	,		   // o-1 clr the carry of the B/Mcast group
	add_hi_cast		,		   // o-1 add the HI reg of the B/Mcast group 
                                                           		
    vlan_ip,				   //o-1
    normal_ip,				   //o-1
    non_ip,					   //o-1
    pkt_reject,					//o-1, EXTR use to drop the pkt at end
    pkt_jumbo_flag,		
    pkt_ipver,			
    
    wr_nbyte	,			   //o-1
    nbytes_out		,		   //o-16, pkt byte cnt
    rxfifo_full	, 			   //i-1
    
    chk_crc,
    
    crc32_ok,			
    fmac_rx_clr_en
	
	);

	
parameter	RX_DRAM_DEPTH = 3072;	
parameter	RX_DRAM_ADDR_WIDTH = 12;

input clk156;
input clk250;
input rst_;

input TCORE_MODE;

input xaui_mode;

input pause_en;
input bcast_en;
input pmode;

input [47:0] daddr0;

input rx_pack;
output rx_pause;
output [15:0] rx_pvalue;

output	[63:0]	pkt_data	;		  //o-64
output		pkt_start	;			  //o-1
output		pkt_end		;			 //o-1
output		pkt_we		;

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

//output to the DRAM buffer where the pkt from the Ethernet port is 1st stored
output wen;
output [RX_DRAM_ADDR_WIDTH-1:0] waddr;         	//current DRAM buffer Write Addr
input  [RX_DRAM_ADDR_WIDTH-1:0] raddr_marker;
output [RX_DRAM_ADDR_WIDTH:0] 	wptr; 			//pointer of the start of the last pkt
output [63:0] wdata;

input  [63:0] rxd;
input  [07:0] rxc;
input  [07:0] rxp;
input  [11:0] rsize;
input			br_sof4 ;

input [31:0]	fmac_ctrl1_dly;

input			fmac_rxd_en	;

// To Register
output [31:0]	FMAC_DCNT_OVERRUN;
output [31:0]	FMAC_DCNT_LINK_ERR;
output [31:0]	FMAC_PKT_CNT_OVERSIZE;
output			FIFO_OV_IPEND;

input		clr_pkt_cnt_oversize	;	 //control signal to clear the PKT_CNT_OVERSIZE reg

output		add_lo_bcast	;			// o-1, these signals are 250Mhz pre-synced
output		add_lo_mcast	;			// o-1  
output		clr_carry_cast	;			// o-1 clr the carry of the B/Mcast group
output		add_hi_cast		;			// o-1 add the HI reg of the B/Mcast group

output			vlan_ip ;
output			normal_ip ;
output			non_ip ;
output		    pkt_reject;
output		    pkt_jumbo_flag;				 //o-1
output	[3:0]	pkt_ipver ;

output			wr_nbyte	;
output	[15:0]	nbytes_out		;
input			rxfifo_full	;

output	[31:0]	chk_crc;


output			crc32_ok;

input			fmac_rx_clr_en;

reg		wr_nbyte ;		

wire	sof_n_eof ;
reg		sof_n_eof_dly1, sof_n_eof_dly2 ;

reg		pre_eof	;

reg		[13:0]	MAX_PKT_SIZE	;		   //this is a dynamic parameter vary from system to system
reg				pkt_slice_en	;

parameter	[15:0]	MAX_RSVD_SIZE = (16'd1138 + 8'd16);	
parameter	[15:0]	MAX_ALLOW		= (RX_DRAM_DEPTH - 8'd16)	;	

reg [RX_DRAM_ADDR_WIDTH-1:0] raddr_chk;					 // buffer the raddr_marker from rx_decap

reg [RX_DRAM_ADDR_WIDTH:0] 		wptr;
reg [RX_DRAM_ADDR_WIDTH-1:0] 	wrusedw;				 //current used qwd in the DRAM buffer

reg			wrfull	;						  //if full do not write in any more new pkt until the old one had read out
reg			space_ok;

reg			has_pre_sof ;
reg		   has_sof;							 // use to detect a frame that has EOF but no SOF
reg		   has_sof_dly1;		

reg		   valid_frame;					   // when see EOF, if does see that it has SOF, it is not valid

reg [03:0] bcnt;
reg	pre_sof;
reg sof;

reg sof_dly;
reg post_sof_dly;			//a 1 clk delay of SOF_DLY

reg		sof_pending ;	   //must be quick enough to avoid racing conditions


reg rx_err0;
reg rx_err1;
reg err;

reg eof0;
reg eof1;
wire 	eof;
wire	eof_qwd ;		   //current incoming control qwd contains EOF (direct detect to be on time)
wire	eof_dqwd ;
reg		eof_dqwd_dly1 ;

reg eof_dly;
reg eof_dly2;

reg		ok_clk250	;
reg [63:0] bdata1;
reg [63:0] bdata2;
reg [07:0] brxc1;

reg		[63:0]	pkt_data	;           		 //same time as bdata2
reg				pkt_start, pkt_end, pkt_we ;

reg [15:0] nbytes, nbytes_out;
reg [63:0] wdata, pre_wdata;
reg [RX_DRAM_ADDR_WIDTH-1:0] waddr1; 
reg		   b2b_pkt;								// indicate packets that have only 1 or no Idle gap in between
reg		   reject;		

wire	pkt_reject = reject ;				  //over all late rejection signal
reg		type_reject;						  //protocol type reject

reg [RX_DRAM_ADDR_WIDTH-1:0] waddr, pre_waddr;

reg [11:0] upd_cnt;

reg overwrite;
reg first_time;
reg  wen1;
reg  wen, pre_wen;
reg  nowr;

reg daddr_hit0;
reg baddr_hit;
reg bcast_addr;								   //if 1, MAC dest addr is broadcast addr
reg mcast_addr;

reg paddr_hit;

wire [47:0] chk_daddr_order;
wire [47:0] qchk_daddr_order;

reg  [31:0] chk_crc;
reg  [15:0] rx_opcode;
reg  [15:0] rx_type;
reg  [15:0] rx_pvalue;
reg  [47:0] chk_daddr;
reg  [47:0] qchk_daddr;

reg  [07:0] rport;
reg  mac_hit;
reg  my_mac_hit;
reg  mcast_hit;	

reg  rx_pause;
reg  sof_dly2;

reg  opcode_pause;
reg  port0_hit;
reg  pmode_hit;

//reg pkt_vlan_flag ;
reg	vlan_ip	;
reg pppoe_ip ;

reg normal_ip ;

reg	isl_frame ;

reg [3:0] pkt_ipver;
wire pkt_jumbo_flag;

//reg [47:0] mac_saddr ;
//wire       mac_saddr_vld  ;

//wire       saddr_filter_drop ;
reg saddr_filter_drop_flag ;

	//for 1G support
reg	[2:0]	count8 		;
reg			count8_en1 	;
reg			count8_en2 	;
reg			count8_en3  ;
reg	[63:0]	qwd0_data_dly1 	;
reg			qwd0_time	;    

wire	[1:0]	fmac_speed 	= fmac_ctrl1_dly[17:16] ;


assign	sof_n_eof	= sof & (eof & has_sof) ;

//received MAC ADDR reordered from big endian
assign chk_daddr_order = {chk_daddr[7:0],chk_daddr[15:8],chk_daddr[23:16],chk_daddr[31:24],chk_daddr[39:32],chk_daddr[47:40]};
assign qchk_daddr_order = {qchk_daddr[7:0],qchk_daddr[15:8],qchk_daddr[23:16],qchk_daddr[31:24],qchk_daddr[39:32],qchk_daddr[47:40]};


wire advance_wptr;


assign	advance_wptr = 
			!wrfull &  sof_n_eof                & mac_hit & !reject               & !overwrite & !saddr_filter_drop_flag |
			!wrfull & !sof_n_eof_dly1 & eof_dly & mac_hit & !reject & valid_frame & !overwrite & !saddr_filter_drop_flag ;


wire	[7:0]	pre_stat2 = {isl_frame, 7'h0 };

always@(posedge clk156)
begin

	bdata1   <=   rxd;
	bdata2   <=   bdata1;
		//control bytes, if all 0, has data otherwise control is presence
	brxc1    <=   rxc;
	
	pre_wdata    <=   
		(sof_n_eof |
		!sof_n_eof_dly1 & eof_dly ) ? {chk_crc,										
						{ (vlan_ip & !isl_frame), pkt_jumbo_flag,					
								(pppoe_ip & !isl_frame), (normal_ip & !isl_frame),	
										pkt_ipver},									
							pre_stat2,												
							nbytes} : 												
							bdata2;
							
	wdata	<= pre_wdata ;
	
	//saving away the pkt's original CRC for checking later
	if(eof0 || eof1)
		//hold if EOF
		chk_crc <=   chk_crc;
	else
	begin
		if (xaui_mode)
			case(brxc1)
			//take the current byte, combine with previous 3 bytes
			8'hfe: chk_crc <=   {bdata1[7:0], bdata2[63:40]};
			8'hfc: chk_crc <=   {bdata1[15:0],bdata2[63:48]};
			8'hf8: chk_crc <=   {bdata1[23:0],bdata2[63:56]};
			8'hf0: chk_crc <=   bdata1[31:0];
			8'he0: chk_crc <=   bdata1[39:8];
			8'hc0: chk_crc <=   bdata1[47:16];
		8'h80: chk_crc <=   bdata1[55:24];			  //7 bytes, take last 4 bytes
		default: chk_crc <=   bdata2[63:32];		 //8 bytes, take last 4 bytes
			endcase
		else
			//data valid each 8th clk
			case(brxc1)
			8'hfe: chk_crc <=   {bdata1[7:0], chk_crc[31:8]};
			8'hfc: chk_crc <=   {bdata1[15:0],chk_crc[31:16]};
			8'hf8: chk_crc <=   {bdata1[23:0],chk_crc[31:24]};
			8'hf0: chk_crc <=   bdata1[31:0];
				//some CRC code is in upper data
			8'he0: chk_crc <=   bdata1[39:8];
			8'hc0: chk_crc <=   bdata1[47:16];
			8'h80: chk_crc <=   bdata1[55:24];
			8'h00: chk_crc <=   bdata1[63:32];
			default: chk_crc <=  chk_crc;
			endcase
		
	end
	
	//counting the byte of the current BDATA1
	case(brxc1)
	8'hfe: bcnt <=   4'd1;
	8'hfc: bcnt <=   4'd2;
	8'hf8: bcnt <=   4'd3;
	8'hf0: bcnt <=   4'd4;
	8'he0: bcnt <=   4'd5;
	8'hc0: bcnt <=   4'd6;
	8'h80: bcnt <=   4'd7;
	8'h00: bcnt <=   4'd8;			
	default: bcnt <=   4'd0;
	endcase
	
	//for GigE support
	qwd0_data_dly1	<= 
		!rst_ ? 64'h0 :
		(qwd0_time & !xaui_mode) ? bdata1[63:0] : 
		qwd0_data_dly1;
	
	chk_daddr <=   
		!rst_ ? 48'h0 :			
		(sof_dly & xaui_mode) ? bdata2[47:0] : 
		(qwd0_time & !xaui_mode) ? bdata1[47:0] : 
		chk_daddr;
	port0_hit <=   daddr_hit0;
		//incoming MAC addr matches MAC ADDR (daddr0)
	daddr_hit0<=   (chk_daddr_order == daddr0);
		//Broadcast dest addr all F
	baddr_hit <=   (&chk_daddr) & bcast_en;
	
	bcast_addr	<=	(!rst_) ? 1'b0 : (&chk_daddr)	;
		//01-00-5E-{1'b0, 23 bit multicast group address}
	mcast_addr	<=	(!rst_) ? 1'b0 : ( chk_daddr_order[47:23] == {24'h01005E, 1'b0} );
	
	qchk_daddr <=   
		!rst_ ? 48'h0 :			
		rxd[47:0] ; 
		
	my_mac_hit	<=
		!rst_ |		
		TCORE_MODE & sof & (qchk_daddr_order[47:23] == {24'h01005E, 1'b0}) ? 1'b0 :			   //mcast in TCORE_MODE
		
		sof & (qchk_daddr_order == daddr0) |	   //uni
		sof & (&qchk_daddr_order) |				   //bcast, all 1's
		!TCORE_MODE & sof & (qchk_daddr_order[47:23] == {24'h01005E, 1'b0}) ? 1'b1 :
		sof & (qchk_daddr_order != daddr0) ? 1'b0 :	
		my_mac_hit
		;
	mcast_hit	<=
		!rst_ ? 1'b0 :		
		sof & (qchk_daddr_order[47:23] == {24'h01005E, 1'b0}) ? 1'b1 :	   //mcast
		mcast_hit
		;
	
		//PAUSE stuffs
	paddr_hit <=   (chk_daddr_order == 48'h0180C2000001) && (rx_type == 16'h8808);
	
	opcode_pause <=   (rx_opcode == 16'h0001);
	
	isl_frame	<= 
		(!rst_) ? 1'b0 : 
		(pre_sof) ? 1'b0 : 
		(sof_dly2 ) &		 
				( ( chk_daddr_order[47:8] == 40'h01000C_0000) |
				  ( chk_daddr_order[47:8] == 40'h03000C_0000) ) ? 1'b1 :
		isl_frame ;
			
end

assign eof = (eof0 || eof1);

wire 	[RX_DRAM_ADDR_WIDTH:0]	wptr_plus_upd_cnt;
wire	[RX_DRAM_ADDR_WIDTH:0]	new_wptr;
wire 	[RX_DRAM_ADDR_WIDTH:0]	new_wptr_plus1;


assign			wptr_plus_upd_cnt = wptr + upd_cnt;

assign		    new_wptr = (wptr_plus_upd_cnt > (RX_DRAM_DEPTH-1))? (wptr_plus_upd_cnt - RX_DRAM_DEPTH) : wptr_plus_upd_cnt ;
assign 			new_wptr_plus1 = (wptr_plus_upd_cnt >= (RX_DRAM_DEPTH-1))? (wptr_plus_upd_cnt - (RX_DRAM_DEPTH-1)) : (wptr_plus_upd_cnt + 1);

wire	[RX_DRAM_ADDR_WIDTH:0]	wptr_plus1;
assign			wptr_plus1 = (wptr == (RX_DRAM_DEPTH-1))? 0 : (wptr[RX_DRAM_ADDR_WIDTH-1:0] + 8'd1);

wire	[RX_DRAM_ADDR_WIDTH-1:0]	waddr1_plus1;

assign			waddr1_plus1	=	(waddr1 == (RX_DRAM_DEPTH-1))? 0 : (waddr1 + 8'd1);

always @ (posedge clk156)
begin
	//indicating very first pkt written into the DRAM buffer
	first_time	 <=		
		//reset (indicating 1st pkt)
		(!rst_ | !fmac_rxd_en)? 1'b1 : 
		//if wptr incremented, negate
		((wptr != 0)? 1'b0 : 
		first_time);
end

//---------- PRE-detect some critical events ------------

assign	eof_qwd =  	(brxc1[0] && (bdata1[7:0] == 8'hFD))   || 
					(brxc1[1] && (bdata1[15:8] == 8'hFD))  || 
					(brxc1[2] && (bdata1[23:16] == 8'hFD)) || 
					(brxc1[3] && (bdata1[31:24] == 8'hFD)) ||
					
	         		(brxc1[4] && (bdata1[39:32] == 8'hFD)) || 
					(brxc1[5] && (bdata1[47:40] == 8'hFD)) || 
					(brxc1[6] && (bdata1[55:48] == 8'hFD)) || 
					(brxc1[7] && (bdata1[63:56] == 8'hFD));
	//EOF but contains data
					
assign	eof_dqwd =  eof_qwd & ( (brxc1 == 8'hE0) | (brxc1 == 8'hC0) | (brxc1 == 8'h80) ) ; 


always@(posedge clk156)
if( !rst_ | !fmac_rxd_en )
begin
	eof_dqwd_dly1	<= 1'b0;
	
	raddr_chk <=   0;
	wr_nbyte       <=   1'b0;
	pre_wen       <=   1'b0;
	wen       <=   1'b0;
	wen1      <=   1'b0;
	pre_sof	  <=   1'b0;
	sof       <=   1'b0;
	sof_pending       <=   1'b0;				
	
	eof0      <=   1'b0;
	eof1      <=   1'b0;
	err       <=   1'b0;
	nbytes    <=   16'h0;
	nbytes_out    <=   16'h0;
	rx_err0   <=   1'b0;
	rx_err1   <=   1'b0;

	eof_dly   <=   1'b0;
	eof_dly2  <=   1'b0;
	overwrite <=   1'b0;
	wptr      <=   0;
	upd_cnt   <=   12'h0;
	waddr1    <=   0;
	b2b_pkt	  <=   1'b0;
	reject	  <=   1'b0;
	waddr     <=   0;
	pre_waddr     <=   0;
	
	wrfull		<= 1'b0;
	wrusedw		<= 0;
	space_ok	<= 1'b1;
	
	nowr      <=   1'b0;
	sof_dly   <=   1'b0;
	post_sof_dly   <=   1'b0;
	
	sof_dly2  <=   1'b0;
	mac_hit   <=   1'b0;
	rx_pvalue <=   16'h0;
	rx_pause  <=   1'b0;
	rx_opcode <=   16'h0;
	rx_type   <=   16'h0;
	rport     <=   8'h0;
	pmode_hit <=   1'b0;
	has_pre_sof		<=	1'b0;
	has_sof		<=	1'b0;
	has_sof_dly1		<=	1'b0;
	
	valid_frame	<=	1'b0;
	
	count8 		<= 3'd7;
	count8_en1 	<= 1'b0;
	count8_en2 	<= 1'b0;
	count8_en3  <= 1'b0;
	qwd0_time	<= 1'b0;
	
end
else
begin
	raddr_chk <=  raddr_marker; 
	pmode_hit <=   pmode;
	rx_pause  <=   rx_pause ? !rx_pack : ((pause_en && !rport[0])? (eof_dly2 && paddr_hit && opcode_pause) : 1'b0);
	rx_opcode <=   (sof_dly)  ? {bdata1[55:48],bdata1[63:56]} : rx_opcode;		  //for PAUSE frame

	rx_type   <=   (sof_dly)  ? {bdata1[39:32],bdata1[47:40]} : rx_type;
	
	rx_pvalue <=   (sof_dly2) ? {bdata1[7:0],bdata1[15:8]} : rx_pvalue;
	mac_hit   <=   (port0_hit || baddr_hit || pmode_hit) && !paddr_hit;
	rport     <=   sof ? rxp : rport;		

		
	sof_dly   <=   
		xaui_mode ? sof :
		(count8 == 3'd2) & count8_en2
		;
	post_sof_dly  <=   sof_dly;
	

	sof_dly2  <=   
		xaui_mode ? sof_dly :
		(count8 == 3'd2) & count8_en3
		;

	nowr      <=   (brxc1[7:0] == 8'hf0) || (brxc1[7:0] == 8'hf8) || (brxc1[7:0] == 8'hfc) || (brxc1[7:0] == 8'hfe);
	
	upd_cnt   <=   
		(|nbytes[2:0]) ? (nbytes[14:3] + 12'd2) : 
		(nbytes[14:3] + 12'd1);   
		
	overwrite	<= 1'b0 ;	
	
	wr_nbyte	<=
		( wr_nbyte ) ? 1'b0 :
		(sof_n_eof & my_mac_hit & !type_reject |
		!sof_n_eof_dly1 & eof_dly & has_sof_dly1 & my_mac_hit & !type_reject ) ? 1'b1 : 
		1'b0 ;
		
	
	wen			<= pre_wen ;
	pre_wen     <=   
		//last data write for data mixing in EOF qwd (no CRC write.  Last eof_dqwd may have 1, 2, or 3 bytes)
		eof_dqwd_dly1 & space_ok & has_sof ? 1'b1 :
		(wen1 & sof_pending & space_ok
			& !err & !rx_err0 & !rx_err1 
			& !overwrite 
			& !(sof |(nowr & eof)));
			
	wen1      <=   fmac_rxd_en & has_pre_sof 
						& !(&brxc1) 			//not a control qwd
						& ( !eof_qwd  )
						& !err;
	
	pre_waddr     <=   
					//1st DRAM write addr is the WPTR aligned to Qwd
			(wrfull ) ? pre_waddr :
			  //at end of normal write cycle, write the last one (NBYTE) to the beginning
			(sof_n_eof |			
			!sof_n_eof_dly1 & eof_dly & !reject )  ? wptr[RX_DRAM_ADDR_WIDTH-1:0] : 
			(!space_ok ) ? pre_waddr :
			
			waddr1;
			
	waddr	<= pre_waddr ;
			
	wrfull		<= rxfifo_full;
	
	wrusedw		<=		
		!(raddr_chk > wptr) ? (wptr - raddr_chk) :
		wptr + (RX_DRAM_DEPTH - raddr_chk)
		;
		
	space_ok	<= !rxfifo_full ;
	
	b2b_pkt	  <=   pre_sof & has_sof_dly1 & (eof | eof_dly);
	
	reject	  <=   
			 //reject current data if EOF and got error or not enough space
		eof ? (err | rx_err0 | rx_err1 | overwrite | !space_ok | !mac_hit) : 
		(eof_dly2? 1'b0 : 
		reject);
		
		
	has_pre_sof		<=	pre_sof? 1'b1: 	
						(eof & !sof ? 1'b0 :
						has_pre_sof);		
						
	has_sof		<=	sof? 1'b1: 
						(eof? 1'b0 : 	
						has_sof);		
						
	has_sof_dly1	<= has_sof ;
							
		//only assert from EOF to EOF_DLY2 for advancing the WPTR
	valid_frame	<=	
		eof? has_sof : 
		eof_dly2? 1'b0 : 	
		valid_frame ; 
	
	err       <=   
		pre_sof ? 1'b0 : 
		//capture error conditions
		(rx_err0 || rx_err1 || err); 
	eof_dly   <=   eof;
	eof_dly2  <=   eof_dly;
	
		//for XGMII (aligned data), FB only happens on lane 0
	pre_sof	  <=   (rxc[0] && (rxd[7:0] == 8'hFB)) | br_sof4 ;
		
	sof		  <=	pre_sof & fmac_rxd_en;
	
	sof_pending	<=
		!fmac_rxd_en ? 1'b0 :
		//assert if seen SOF
		pre_sof & fmac_rxd_en ? 1'b1 :
		eof & !sof ? 1'b0 :
		sof_pending ;
	
					
	eof0      <=   	fmac_rxd_en & (brxc1[0] && (bdata1[7:0] == 8'hFD))   || 
					fmac_rxd_en & (brxc1[1] && (bdata1[15:8] == 8'hFD))  || 
					fmac_rxd_en & (brxc1[2] && (bdata1[23:16] == 8'hFD)) || 
					fmac_rxd_en & (brxc1[3] && (bdata1[31:24] == 8'hFD));
					
	eof1      <=   	fmac_rxd_en & (brxc1[4] && (bdata1[39:32] == 8'hFD)) || 
					fmac_rxd_en & (brxc1[5] && (bdata1[47:40] == 8'hFD)) || 
					fmac_rxd_en & (brxc1[6] && (bdata1[55:48] == 8'hFD)) || 
					fmac_rxd_en & (brxc1[7] && (bdata1[63:56] == 8'hFD));
	
		//link err
	rx_err0   <=   (brxc1[0] && (bdata1[7:0] == 8'hFE)) || (brxc1[1] && (bdata1[15:8] == 8'hFE)) || (brxc1[2] && (bdata1[23:16] == 8'hFE)) || (brxc1[3] && (bdata1[31:24] == 8'hFE));
	rx_err1   <=   (brxc1[4] && (bdata1[39:32] == 8'hFE)) || (brxc1[5] && (bdata1[47:40] == 8'hFE)) || (brxc1[6] && (bdata1[55:48] == 8'hFE)) || (brxc1[7] && (bdata1[63:56] == 8'hFE));
	
	nbytes    <=   
		sof ? 16'hfffc : 
		(wen1 |
			eof & (bcnt < 8'd8) ? (nbytes + bcnt) :
		nbytes);
		
	nbytes_out	<= nbytes	;
	
	wptr[RX_DRAM_ADDR_WIDTH-1:0]      <=   advance_wptr ? waddr1 : wptr;
	
		//count every 8 clks (for assembling to 64 bits)
	count8 		<= (count8_en1 | count8_en2 | count8_en3)? (count8 - 3'd1) : 3'd7 ;
	
	count8_en1 	<= 
		//see SOF assert
		sof? 1'b1 : 
		(qwd0_time? 1'b0 : 
		count8_en1);
		
	count8_en2 	<= 
		qwd0_time? 1'b1 : 
		(sof_dly ? 1'b0 : 
		count8_en2);
		
	count8_en3 	<= 
		sof_dly ? 1'b1 : 
		(sof_dly2? 1'b0 : 
		count8_en3);
	
	qwd0_time   <=   (count8 == 3'd2) & count8_en1;  
	
	if (sof_n_eof )
		waddr1	<= waddr1 + 4'd1 ;
	else	

	casez ({eof_dqwd_dly1, wrfull, sof, b2b_pkt, reject, wen1, has_sof})
		7'b0010??? :	waddr1	<=	wptr_plus1 ;				  // restart, 2 or more gap between packets, wptr is already valid
		
		7'b00111?? :	waddr1	<=	wptr_plus1 ;				   // 1 or 0 gap between packets but drop the packet, restart
		
		7'b00110?? : 	waddr1	<=	waddr1_plus1;				  // 1 or 0 gap between packets, wptr is not valid yet,
																  //must take wrap into account
		7'b000??11 : 	waddr1	<=	waddr1_plus1 ;				// advance addr for consecutive write
		7'b100???1 :	waddr1	<=	waddr1_plus1 ;
		
		default	:	waddr1	<=	waddr1 ;				//hold if full
	endcase
	
	eof_dqwd_dly1	<= eof_dqwd;

end


 // Logic : Pre-Detetcion of IPv version , Jumbo Pkt , Vlan

wire	qvlan_type;
wire	vlan_type;
wire	pppoe_session_type;
wire	pppoe_disc_type;

wire	vlan_ip_type;	   //VLAN and next layer is IP
wire	pppoe_ip_type;	   //PPPoE and next layer is IP
wire	normal_ip_type;	   //normal IP packet and next layer is IP
wire	qnormal_ip_type;   //normal IP packet and next layer is IP

wire	qenet_arp_pkt ;


assign	qnormal_ip_type 	= (rxd[39:32]==8'h08)&&(rxd[47:40]==8'h00) ;
assign	qvlan_type 			= (rxd[39:32]==8'h81)&&(rxd[47:40]==8'h00) ;
assign	qenet_arp_pkt		=
			(rxd[63:32] == 32'h0100_0608) ; 

assign	normal_ip_type 		= (bdata1[39:32]==8'h08)&&(bdata1[47:40]==8'h00) ;
assign	vlan_type 			= (bdata1[39:32]==8'h81)&&(bdata1[47:40]==8'h00) ;
assign	pppoe_session_type 	= (bdata1[39:32]==8'h88)&&(bdata1[47:40]==8'h64) ;
assign	pppoe_disc_type 	= (bdata1[39:32]==8'h88)&&(bdata1[47:40]==8'h63) ;


assign	vlan_ip_type		= 
			 xaui_mode & vlan_type & ( (rxd[7:0]   ==8'h08) & (rxd[15:8]   ==8'h00) ) |
			!xaui_mode & vlan_type & ( (bdata1[7:0]==8'h08) & (bdata1[15:8]==8'h00) ) 
			;

assign	pppoe_ip_type		= 
			 xaui_mode & pppoe_session_type & ( (rxd[39:32]   ==8'h00) & (rxd[47:40]   ==8'h21) ) |
			!xaui_mode & pppoe_session_type & ( (bdata1[39:32]==8'h00) & (bdata1[47:40]==8'h21) ) 
			;

			
reg		non_ip ;

	
always@(posedge clk156)
if(!rst_)
begin
	normal_ip			<= 1'b0 ;
	vlan_ip				<= 1'b0 ;
	pppoe_ip		 	<= 1'b0 ;
	
	pkt_ipver 		<= 4'd0 ;
	non_ip			<= 1'b0 ;
	type_reject		<= 1'b0 ;
end
else
begin

	normal_ip	<=	sof_dly ? normal_ip_type : normal_ip ;
	
	vlan_ip		<=	
		 xaui_mode & sof_dly  ? vlan_ip_type : 
		!xaui_mode & sof_dly2 ? vlan_ip_type : 
		vlan_ip ;
	
	non_ip		<= !(vlan_ip | normal_ip) ;
			
	pppoe_ip <= 
			 xaui_mode & sof_dly  ? pppoe_ip_type :  
			!xaui_mode & sof_dly2 ? pppoe_ip_type :  
			pppoe_ip ;

	
   //reject unwanted pkt types
	type_reject	<=	
		sof & !(qnormal_ip_type | qvlan_type | qenet_arp_pkt) ? 1'b1  :
		sof &  (qnormal_ip_type | qvlan_type | qenet_arp_pkt) ? 1'b0  :
		type_reject
		;
		
		
	pkt_ipver      <= 
		xaui_mode & sof_dly ? 
					//if VLAN & IP case, use next qwd bit 23:20
					( (vlan_ip_type) ? rxd[23:20] :  
					//if PPPoE_Session & IP Type
					  (pppoe_ip_type) ? rxd[55:52] :
					  (normal_ip_type) ? bdata1[55:52] :
					   4'he ) : 	
		!xaui_mode & sof_dly & (normal_ip_type) ? bdata1[55:52] : 
					//if VLAN & IP case, use next qwd bit 23:20
		!xaui_mode & sof_dly2 & (vlan_ip_type) ? bdata1[23:20] : 
					//if PPPoE_Session & IP Type
		!xaui_mode & sof_dly2 & (pppoe_ip_type) ? bdata1[55:52] : 
					pkt_ipver ;
	
	
					
end


assign pkt_jumbo_flag = (nbytes>16'd1500) ? 1'b1 : 1'b0 ;


always@(posedge clk156)
if(!rst_)
begin
	saddr_filter_drop_flag <= 0 ;
end
else
begin
	saddr_filter_drop_flag <= 
					eof_dly2 ? 1'b0 : 
					saddr_filter_drop_flag ;
end



// REGISTER and SYNCHRONIZATION
reg [31:0]	no_space_drop_cnt;
reg			no_space_drop;
reg [31:0]	FMAC_DCNT_OVERRUN;	

reg [31:0]	bad_link_drop_cnt;
reg			bad_link_drop;

reg [31:0]	FMAC_DCNT_LINK_ERR;	
reg			FIFO_OV_IPEND;		

reg [31:0]	FMAC_PKT_CNT_OVERSIZE;	
reg			pkt_oversize;

always @ (posedge clk156)
begin
	if (!rst_)
	begin
		no_space_drop_cnt <= 32'h0;
		no_space_drop <= 1'b0;
		
		bad_link_drop_cnt <= 32'h0;
		bad_link_drop <= 1'b0;
		
		MAX_PKT_SIZE	<=	14'd1518	;
		pkt_slice_en	<=	1'b0	;
		
		pkt_oversize <= 1'b0	;
		
		sof_n_eof_dly1	<= 1'b0 ;
		sof_n_eof_dly2	<= 1'b0 ;
	end
	
	else
	begin
		sof_n_eof_dly1	<= sof_n_eof ;
		sof_n_eof_dly2	<= sof_n_eof_dly1 ;
	
		MAX_PKT_SIZE	<=	fmac_ctrl1_dly[13:0]	;
		pkt_slice_en	<=	fmac_ctrl1_dly[15]		;
		
		no_space_drop_cnt <= no_space_drop? (no_space_drop_cnt + 32'd1) : no_space_drop_cnt;
		
		no_space_drop <= 
			sof & !space_ok;
		
		bad_link_drop_cnt <= bad_link_drop? (bad_link_drop_cnt + 32'd1) : bad_link_drop_cnt;
		bad_link_drop <= eof & (err | rx_err0 | rx_err1);
		
		pkt_oversize	<= 
				eof_dly2 ? 1'b0 : 
				( eof & (nbytes > MAX_PKT_SIZE) ) ? 1'b1 : 
				pkt_oversize;
	end
end

//============== SYNC the reg for output to internal logic

reg		no_space_drop0_clk250;
reg		no_space_drop1_clk250;

reg		bad_link_drop0_clk250;
reg		bad_link_drop1_clk250;

//detect the capture en for clk250 (if see 2 zeroes in a row)
wire	no_space_drop_clk250 = no_space_drop0_clk250 & no_space_drop1_clk250;
wire	bad_link_drop_clk250 = bad_link_drop0_clk250 & bad_link_drop1_clk250;

always @ (posedge clk250)
	begin
	no_space_drop0_clk250	<= !no_space_drop;
	no_space_drop1_clk250	<=  no_space_drop0_clk250;
	
	bad_link_drop0_clk250	<= !bad_link_drop;
	bad_link_drop1_clk250	<=  bad_link_drop0_clk250;
	end

	
wire	no_space_drop_ok = no_space_drop_clk250;
wire	bad_link_drop_ok = bad_link_drop_clk250;

always @ (posedge clk250)
begin
	if (!rst_)
	begin
		FMAC_DCNT_OVERRUN <= 32'h0;
		
		FMAC_DCNT_LINK_ERR <= 32'h0;
		
		FIFO_OV_IPEND <= 1'b0;
	end
	
	else
	begin
		FMAC_DCNT_OVERRUN <= fmac_rx_clr_en ? 32'h0 : (no_space_drop_ok? no_space_drop_cnt : FMAC_DCNT_OVERRUN);
		FMAC_DCNT_LINK_ERR <= fmac_rx_clr_en ? 32'h0 : (bad_link_drop_ok? bad_link_drop_cnt : FMAC_DCNT_LINK_ERR);
		
		FIFO_OV_IPEND <= no_space_drop_ok;
	end
end


//====== SUPPORT FOR COUNTING B/MCAST, OverSize PKTS

reg		add_lo_bcast156	;
reg		add_lo_mcast156	;

reg		add_lo_bcast	;
reg		add_lo_mcast	;

reg		clr_carry_cast	;
reg		add_hi_cast		;

reg		eof_sync_wait	;
reg		eof_sync_wait_dly	;
reg		clr_pkt_cnt_oversize_dly	;


always @(posedge clk156)
	if (!rst_)
		begin
		add_lo_bcast156		<= 1'b0;
		add_lo_mcast156		<= 1'b0;	
		end
		
	else
		begin
		add_lo_bcast156		<= 
				(eof_dly2) ? 1'b0 :
				(eof & bcast_addr) ? 1'b1 :
				add_lo_bcast156
				;
		add_lo_mcast156		<= 
				(eof_dly2) ? 1'b0 :
				(eof & mcast_addr) ? 1'b1 :
				add_lo_mcast156
				;
		end


reg		ok_clk250_dly1;
reg		ok_clk250_dly2;
reg		ok_clk250_dly3;
reg		ok_clk250_dly4;


always @(posedge clk250)
	if (!rst_)
		begin

		ok_clk250			<= 1'b0;
		
		ok_clk250_dly1		<= 1'b0 ;
		ok_clk250_dly2		<= 1'b0 ;
		ok_clk250_dly3		<= 1'b0 ;
		ok_clk250_dly4		<= 1'b0 ;
		
		eof_sync_wait		<= 1'b0;
		eof_sync_wait_dly	<= 1'b0;
		
		end
	
	else
		begin
		ok_clk250			<=
				//clear if set
				ok_clk250 ? 1'b0 :
				//asserts when seeing the 1st valid EOF
				(!ok_clk250 & !eof_sync_wait & eof_dly) ? 1'b1 :
				ok_clk250;
				
				
		ok_clk250_dly1		<= ok_clk250 ;
		ok_clk250_dly2		<= ok_clk250_dly1 ;
		ok_clk250_dly3		<= ok_clk250_dly2 ;
		ok_clk250_dly4		<= ok_clk250_dly3 ;
		
		eof_sync_wait				<= 
							//Force clear at stat OK delay 4
							ok_clk250_dly4 ? 1'b0 :
							//set at stat ok
							ok_clk250 ? 1'b1 :
							eof_sync_wait;
							
		eof_sync_wait_dly			<= eof_sync_wait ;

		end

always @(posedge clk250)
	if (!rst_)
		begin
		add_lo_bcast	<= 1'b0 ;
		add_lo_mcast	<= 1'b0 ;
		clr_carry_cast	<= 1'b0 ;
		add_hi_cast		<= 1'b0 ;
		end
		
	else
		begin
		add_lo_bcast	<= add_lo_bcast156 & !eof_sync_wait & ok_clk250 ;
		add_lo_mcast	<= add_lo_mcast156 & !eof_sync_wait & ok_clk250 ;
		
		clr_carry_cast	<= ok_clk250_dly3 ;
		
		add_hi_cast		<= ok_clk250_dly1 & !eof_sync_wait_dly  ;		
		end

// RECODE of registers

always @(posedge clk250)
	if (!rst_)
		begin
		FMAC_PKT_CNT_OVERSIZE		<= 32'h0 ;
		
		clr_pkt_cnt_oversize_dly	<= 1'b0	;
		end
		
	else
		begin
		clr_pkt_cnt_oversize_dly <= clr_pkt_cnt_oversize;
		
		FMAC_PKT_CNT_OVERSIZE	<= 
				(clr_pkt_cnt_oversize_dly | fmac_rx_clr_en) ? 32'h0 :
				(ok_clk250 & !eof_sync_wait & pkt_oversize ) ? FMAC_PKT_CNT_OVERSIZE + 1'b1 :
				FMAC_PKT_CNT_OVERSIZE;
		
		end
		

reg		[63:0]	pre_pkt_data	;
reg				pre_pkt_start	;

always@(posedge clk156)
if( !rst_ | !fmac_rxd_en )
	begin
	pre_pkt_data		<= 64'h0;
	pre_pkt_start		<= 1'b0;
	pkt_data		<= 64'h0;
	pkt_start		<= 1'b0;
	pkt_end			<= 1'b0;
	pkt_we			<= 1'b0;
	
	pre_eof		<= 1'b0 ;
	end
else
	begin
	pre_pkt_data		<= 
		bdata1;
	pre_pkt_start		<= 
		//case of SOF4 took care of in SOF
		sof;
		
	pkt_data	<= pre_pkt_data;
	pkt_start	<= pre_pkt_start & my_mac_hit & !type_reject;	
	pkt_end			<= 
		pkt_end ? 1'b0 :
		eof_dqwd ? 1'b0 :
		eof_dqwd_dly1 & pkt_we ? 1'b1 :
		pre_eof	& pkt_we		
		;
		
	pkt_we		<=
		pkt_end ? 1'b0 :
		pre_pkt_start & my_mac_hit & !type_reject ? 1'b1 :
		pkt_we
		;		
	pre_eof		<=			  //too late so need to delay the data
	   	fmac_rxd_en & (rxc[0] && (rxd[7:0] == 8'hFD))   || 
		fmac_rxd_en & (rxc[1] && (rxd[15:8] == 8'hFD))  || 
		fmac_rxd_en & (rxc[2] && (rxd[23:16] == 8'hFD)) || 
		fmac_rxd_en & (rxc[3] && (rxd[31:24] == 8'hFD)) ||
					
	   	fmac_rxd_en & (rxc[4] && (rxd[39:32] == 8'hFD)) || 
		fmac_rxd_en & (rxc[5] && (rxd[47:40] == 8'hFD)) ||       
		fmac_rxd_en & (rxc[6] && (rxd[55:48] == 8'hFD)) ||       
		fmac_rxd_en & (rxc[7] && (rxd[63:56] == 8'hFD))          
		;
		
		end


// CRC32
reg				pre_pkt_we_wire	;

wire			pre_pkt_eof	;
wire	[2:0]	pre_pkt_beat_bcnt_wire	;

reg		[2:0]	pre_pkt_beat_bcnt	;
reg		[2:0]	pre_pkt_beat_bcnt_dly1	;
wire	[31:0]	crc32_out ;
wire			crc32_vld ;
reg				pre_eof_dly1	;
reg				pre_eof_dly2	;
reg				eof_dqwd_dly2 ;


always @ (*) begin
	pre_pkt_we_wire	=
		!rst_  ? 1'b0 :
		pre_eof_dly1 & !eof_dqwd_dly1 & pre_pkt_we_wire  ? 1'b0 :
		pre_eof_dly2 &  eof_dqwd_dly2 & pre_pkt_we_wire	 ? 1'b0 :
		pre_pkt_start & my_mac_hit & !type_reject 		 ? 1'b1 :
		pre_pkt_we_wire
		;		
end
	

assign	pre_pkt_eof	=
  			pre_eof 	 & !eof_dqwd 		? 1'b1 :
			pre_eof_dly1 & eof_dqwd_dly1 	? 1'b1 :
			1'b0 ;
		
assign	pre_pkt_beat_bcnt_wire	=
  			pre_eof 	 & !eof_dqwd 		? pre_pkt_beat_bcnt :
			pre_eof_dly1 & eof_dqwd_dly1 	? pre_pkt_beat_bcnt_dly1 :
			3'h0 ;
			

always@(posedge clk156)
begin

if( !rst_ | !fmac_rxd_en )
	begin
	pre_eof_dly1		<= 1'b0;
	pre_eof_dly2		<= 1'b0;
	pre_pkt_beat_bcnt	<= 3'b0;
	pre_pkt_beat_bcnt_dly1	<= 3'b0;
	
	eof_dqwd_dly2		<= 1'b0 ;
	end
else
	begin

	pre_eof_dly1		<= pre_eof;
	pre_eof_dly2		<= pre_eof_dly1;
	eof_dqwd_dly2		<= eof_dqwd_dly1 ;
	
		case(rxc)
			8'hff: pre_pkt_beat_bcnt <=   3'd4;
			8'hfe: pre_pkt_beat_bcnt <=   3'd5;
			8'hfc: pre_pkt_beat_bcnt <=   3'd6;
			8'hf8: pre_pkt_beat_bcnt <=   3'd7;
			8'hf0: pre_pkt_beat_bcnt <=   3'd0;
			8'he0: pre_pkt_beat_bcnt <=   3'd1;
			8'hc0: pre_pkt_beat_bcnt <=   3'd2;
			8'h80: pre_pkt_beat_bcnt <=   3'd3;
			8'h00: pre_pkt_beat_bcnt <=   3'd0;				
			
			default: pre_pkt_beat_bcnt <=   3'd0;
		endcase
	
	pre_pkt_beat_bcnt_dly1	<= pre_pkt_beat_bcnt ;
	 
	end
end


eth_crc32_gen eth_crc32_gen(
   .clk			(clk156),         		//clock
   .rst_n		(rst_),        	  		 //active low reset
   .data_vld	(pre_pkt_we_wire),		 //data valid
   .data_eop	(pre_pkt_eof),    		 //end of frame
   .data_sop	(pre_pkt_start),  		 //start of frame
   .data_in		(pre_pkt_data),   		//align first byte on bit [7:0] ... last byte [63:56]
   .data_offset	(3'h0), 		  	   //number of starting bytes invalid on SOF beat, non SOF should set to 0
   								  
   .data_be		(pre_pkt_beat_bcnt_wire),    //0 - all bytes valid  (really is beat_bcnt)
   	             			 				 
   	             			 				 
   	             			 
   .crc_out		(crc32_out), 				  //final generated crc32 value
   .crc_vld     (crc32_vld)					  //crc check valid
 );


 
wire	crc32_ok ;
assign	crc32_ok	=	crc32_vld ? (crc32_out == chk_crc) : 1'b0 ;



// DRX_PKT_DATA
reg		[63:0]	drx_pkt_data	;           
reg				drx_pkt_start ; 
reg				drx_pkt_end ; 
reg				drx_pkt_we ;

reg		[2:0]	drx_pkt_beat_bcnt	;
reg		[7:0]	drx_pkt_be	;

wire	[31:0]	drx_crc32 ;
wire			drx_crc_vld ;
wire			drx_crc_err ;

reg				drx_crc_err_dly1 ;


assign		drx_crc_err = !crc32_ok ;
assign		drx_crc_vld = crc32_vld ;
assign		drx_crc32 	= crc32_out ;


always@(posedge clk156)
if( !rst_ | !fmac_rxd_en )
	begin
		drx_pkt_data		<= 64'h0;
		drx_pkt_start		<= 1'b0;
		drx_pkt_end			<= 1'b0;
		drx_pkt_we			<= 1'b0;
		
		drx_pkt_beat_bcnt	<= 3'h0;
		drx_pkt_be			<= 8'h0;
		
		drx_crc_err_dly1	<= 1'b0;
		
	end
else
	begin
		
		drx_pkt_data	<= pre_pkt_data;
		
		drx_pkt_start	<= pre_pkt_start & (my_mac_hit | mcast_hit) & !type_reject;	
		
		drx_pkt_end			<= 
			drx_pkt_end ? 1'b0 :
			eof_dqwd ? 1'b0 :
			eof_dqwd_dly1 & drx_pkt_we ? 1'b1 :
			pre_eof	& drx_pkt_we	
			;
		drx_pkt_we		<=
			drx_pkt_end ? 1'b0 :
			pre_pkt_start & (my_mac_hit | mcast_hit) & !type_reject ? 1'b1 :
			drx_pkt_we
			;		
		drx_pkt_beat_bcnt	<=	pre_pkt_beat_bcnt_wire ;
		
		case(pre_pkt_beat_bcnt_wire)
			3'h0: drx_pkt_be <=   8'hff;
			3'h1: drx_pkt_be <=   8'h01;
			3'h2: drx_pkt_be <=   8'h03;
			3'h3: drx_pkt_be <=   8'h07;
			3'h4: drx_pkt_be <=   8'h0f;
			3'h5: drx_pkt_be <=   8'h1f;
			3'h6: drx_pkt_be <=   8'h3f;	
			3'h7: drx_pkt_be <=   8'h7f;	
			
			default: drx_pkt_be <=   8'hff;
		endcase
		
		drx_crc_err_dly1	<= drx_crc_err ;
		
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
FMAC_RX_PKT_CNT9199P_HI, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, m1__DOT__core__DOT__txfifo_wr_en, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt, m1__DOT__core__DOT__tx_b2b_dly, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_);
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
 output  m1__DOT__core__DOT__txfifo_wr_en;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
 output [1:0] m1__DOT__core__DOT__tx_b2b_dly;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;

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
(* keep *)input txfifo_wr_en;
output txfifo_full;
output [12:0] txfifo_usedw;

// tx_encap interface
input [31:0] mac_pause_value;
(* keep *)input [1:0]  tx_b2b_dly;

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
	 ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout));
	
	
	
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
	 ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt));	

	
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

	
	
	
 assign m1__DOT__core__DOT__txfifo_wr_en = txfifo_wr_en;
 assign m1__DOT__core__DOT__tx_b2b_dly = tx_b2b_dly;
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
    
    fmac_tx_clr_en, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt);
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;
    
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
	                        			   	           	
	 ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy));
	  
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
	 ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd) ,.m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt(m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt)); 
	
	
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
	xdone, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy);
 output [5:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state;
 output  m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy;
	

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

(* keep *) reg tx_rdy;						  ;// tell if there is no pause frame activating
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
(* keep *) reg [7:0] state;

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

(* keep *) reg [5:0] b2b_counter;
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


 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__tx_rdy = tx_rdy;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__state = state;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_encap__DOT__b2b_counter = b2b_counter;
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
(* keep *)output [31:0] crc32;
output crc32_vld_;
reg    crc32_vld_;
reg    [31:0] new_crc;
wire [63:0] din_int;
//reg we_int_;
reg last_int_;
reg [31:0] init_value;
(* keep *) reg [63:0] bdin;


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
	fmac_tx_clr_en	, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd, m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt);
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg;
 output [4:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__bdin;
 output [31:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__tx_mac10g_crc32x64__DOT__crc32;
 output [7:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc;
 output [63:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd;
 output [15:0] m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt;

	

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
	

(* keep *) reg    [63:0] bdata1;			  ;// buffer input data
reg    [63:0] bdata2;
(* keep *) reg    [15:0] wcnt;
(* keep *) reg		 [15:0] ila_wcnt_ini; ;// register for holding the initial value of wcnt.


wire	[15:0] nbytes;
reg  	[15:0] nbytes_reg;
(* keep *) reg 	[15:0] rbytes_reg;


(* keep *) reg    [63:0] txd;				  ;//output data
(* keep *) reg    [07:0] txc;				  ;// control output
reg    [07:0] txc_int;

reg    IDLE_sel;
reg    insert_crc;					// indicates when to transmit CRC frame

reg    crc_we_;
reg    crc_last_;
reg    crc_clr_;
reg    [15:0] crc_cnt;
wire   [31:0] crc32;			   // CRC output
(* keep *) wire	 [31:0] ILA_crc_in;    ;// signal for an internal state of ILA model. 
assign ILA_crc_in = ~crc32;  // Let's try if the parser can find the wire. If it cannot find it, then we can add the register at the bottom module.

reg		sent;
reg		sent_dly;

(* keep *) reg		[31:0]   pkt_transmitted;
reg		[31:0]   FMAC_TX_PKT_CNT;
(* keep *) reg 	[31:0]   accumulated_bcnt;
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
(* keep *) reg    [4:0] state;

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
	ila_wcnt_ini <= 0;
	
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


 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__wcnt = wcnt;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txd = txd;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__txc = txc;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__state = state;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__rbytes_reg = rbytes_reg;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__pkt_transmitted = pkt_transmitted;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ila_wcnt_ini = ila_wcnt_ini;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__bdata1 = bdata1;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__accumulated_bcnt = accumulated_bcnt;
 assign m1__DOT__core__DOT__tx_10G_wrap__DOT__tx_xgmii__DOT__ILA_crc_in = ILA_crc_in;
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
			rdempty , m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_, m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_);
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr;
 output [4:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_;
 output [63:0] m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_;


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
			.wrusedw(wrusedw),		// wrusedw -number of locations filled in fifo

			.rdclk	(rdclk),		// i-1, Clk to read data
			.rden	(rdreq),		// i-1, read enable of data FIFO
			.dataout(q),			// Dataout of data FIFO
			.rdfull	(),				// indicates fifo is full or not (To avoid overiding) (Not used)
			.rdempty(rdempty),		// indicates fifo is empty or not (to avoid underflow)
			.rdusedw(),				

			.dbg()

		  ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_2_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__wr_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__rd_ptr) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_9_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_8_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_7_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_6_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_5_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_4_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_3_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__dataout) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_1_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_15_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_14_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_13_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_12_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_11_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_10_) ,.m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_(m1__DOT__core__DOT__txfifo__DOT__tx_f__DOT__mem_0_));
endmodule
