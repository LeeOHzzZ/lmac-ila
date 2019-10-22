module TX_FUNC__DOT__READ_BYTE_CNT_10G(
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
__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__,
__ILA_TX_FUNC_valid__,
TXFIFO_BUFF_data_n16,
TXFIFO_BUFF_addr_n15,
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
__COUNTER_start__n10
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
input     [63:0] TXFIFO_BUFF_data_n16;
output            __ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__;
output            __ILA_TX_FUNC_valid__;
output     [15:0] TXFIFO_BUFF_addr_n15;
output reg            TXFIFO_FULL;
output reg     [12:0] TXFIFO_WUSED_QWD;
output reg     [15:0] TXFIFO_BUFF_RD_PTR;
output reg     [15:0] TXFIFO_BUFF_WR_PTR;
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
output reg      [7:0] __COUNTER_start__n10;
(* keep *) wire     [63:0] CRC_DAT_IN_randinit;
(* keep *) wire     [31:0] CRC_IN_randinit;
(* keep *) wire     [31:0] CRC_randinit;
wire            MODE_10G;
wire            MODE_1G;
wire            MODE_2P5G;
wire            MODE_5G;
wire            RESETN;
(* keep *) wire     [15:0] TXFIFO_BUFF_RD_PTR_randinit;
(* keep *) wire     [15:0] TXFIFO_BUFF_WR_PTR_randinit;
wire     [15:0] TXFIFO_BUFF_addr_n15;
wire     [63:0] TXFIFO_BUFF_data_n16;
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
wire            __ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__;
wire            __ILA_TX_FUNC_valid__;
wire            __START__;
wire            clk;
wire            n0____DOLLAR__124;
wire     [12:0] n11____DOLLAR__223;
wire            n12____DOLLAR__218;
wire     [15:0] n13____DOLLAR__213;
wire     [15:0] n14____DOLLAR__220;
wire     [63:0] n17____DOLLAR__209;
wire     [15:0] n18____DOLLAR__224;
wire      [2:0] n19____DOLLAR__228;
wire            n1____DOLLAR__189;
wire            n20____DOLLAR__251;
wire     [12:0] n21____DOLLAR__226;
wire     [12:0] n22____DOLLAR__242;
wire     [15:0] n23____DOLLAR__247;
wire     [15:0] n24____DOLLAR__236;
wire     [15:0] n25____DOLLAR__253;
wire     [15:0] n26____DOLLAR__256;
wire     [47:0] n27____DOLLAR__273;
wire     [63:0] n28____DOLLAR__281;
wire      [2:0] n29____DOLLAR__287;
wire            n2____DOLLAR__203;
wire            n30____DOLLAR__353;
wire            n31____DOLLAR__346;
wire            n32____DOLLAR__339;
wire     [31:0] n33____DOLLAR__335;
wire            n34____DOLLAR__324;
wire            n35____DOLLAR__317;
wire     [31:0] n36____DOLLAR__313;
wire            n37____DOLLAR__302;
wire            n38____DOLLAR__295;
wire     [31:0] n39____DOLLAR__297;
wire            n3____DOLLAR__205;
wire     [31:0] n40____DOLLAR__304;
wire     [31:0] n41____DOLLAR__319;
wire     [31:0] n42____DOLLAR__326;
wire     [31:0] n43____DOLLAR__341;
wire     [31:0] n44____DOLLAR__348;
wire     [31:0] n45____DOLLAR__355;
wire            n46____DOLLAR__460;
wire     [31:0] n47____DOLLAR__456;
wire            n48____DOLLAR__445;
wire            n49____DOLLAR__438;
wire            n4____DOLLAR__194;
wire     [31:0] n50____DOLLAR__434;
wire            n51____DOLLAR__423;
wire     [31:0] n52____DOLLAR__419;
wire            n53____DOLLAR__408;
wire     [31:0] n54____DOLLAR__404;
wire            n55____DOLLAR__393;
wire     [31:0] n56____DOLLAR__389;
wire            n57____DOLLAR__378;
wire     [31:0] n58____DOLLAR__374;
wire     [31:0] n59____DOLLAR__364;
wire            n5____DOLLAR__206;
wire     [31:0] n60____DOLLAR__380;
wire     [31:0] n61____DOLLAR__395;
wire     [31:0] n62____DOLLAR__410;
wire     [31:0] n63____DOLLAR__425;
wire     [31:0] n64____DOLLAR__440;
wire     [31:0] n65____DOLLAR__447;
wire     [31:0] n66____DOLLAR__462;
wire     [15:0] n67____DOLLAR__259;
wire            n6____DOLLAR__199;
wire            n7____DOLLAR__207;
wire            n8____DOLLAR__131;
wire            n9____DOLLAR__208;
wire            rst;
assign n0____DOLLAR__124 =  ( RESETN ) == ( 1'b1 )  ;
assign __ILA_TX_FUNC_valid__ = n0____DOLLAR__124 ;
assign n1____DOLLAR__189 =  ( MODE_10G ) == ( 1'b1 )  ;
assign n2____DOLLAR__203 =  ( TX_B2B_CNTR ) == ( 6'd0 )  ;
assign n3____DOLLAR__205 =  ( n1____DOLLAR__189 ) & (n2____DOLLAR__203 )  ;
assign n4____DOLLAR__194 =  ( TX_STATE ) == ( 5'd1 )  ;
assign n5____DOLLAR__206 =  ( n3____DOLLAR__205 ) & (n4____DOLLAR__194 )  ;
assign n6____DOLLAR__199 =  ( TX_STATE_ENCAP ) == ( 8'd1 )  ;
assign n7____DOLLAR__207 =  ( n5____DOLLAR__206 ) & (n6____DOLLAR__199 )  ;
assign n8____DOLLAR__131 =  $signed( TXFIFO_WUSED_QWD ) > $signed( 13'd0 )  ;
assign n9____DOLLAR__208 =  ( n7____DOLLAR__207 ) & (n8____DOLLAR__131 )  ;
assign __ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__ = n9____DOLLAR__208 ;
assign n11____DOLLAR__223 =  ( TXFIFO_WUSED_QWD ) - ( 13'd1 )  ;
assign n12____DOLLAR__218 =  ( TXFIFO_BUFF_RD_PTR ) == ( 16'd1024 )  ;
assign n13____DOLLAR__213 =  ( TXFIFO_BUFF_RD_PTR ) + ( 16'd1 )  ;
assign n14____DOLLAR__220 =  ( n12____DOLLAR__218 ) ? ( 16'd0 ) : ( n13____DOLLAR__213 ) ;
assign TXFIFO_BUFF_addr_n15 = TXFIFO_BUFF_RD_PTR ;
assign n17____DOLLAR__209 = TXFIFO_BUFF_data_n16 ;
assign n18____DOLLAR__224 = TXFIFO_RD_OUTPUT[15:0] ;
assign n19____DOLLAR__228 = TX_PACKET_BYTE_CNT[2:0] ;
assign n20____DOLLAR__251 =  $signed( n19____DOLLAR__228 ) > $signed( 3'd0 )  ;
assign n21____DOLLAR__226 = TX_PACKET_BYTE_CNT[15:3] ;
assign n22____DOLLAR__242 =  ( n21____DOLLAR__226 ) + ( 13'd1 )  ;
assign n23____DOLLAR__247 =  { ( n22____DOLLAR__242 ) , ( 3'd0 ) }  ;
assign n24____DOLLAR__236 =  { ( n21____DOLLAR__226 ) , ( 3'd0 ) }  ;
assign n25____DOLLAR__253 =  ( n20____DOLLAR__251 ) ? ( n23____DOLLAR__247 ) : ( n24____DOLLAR__236 ) ;
assign n26____DOLLAR__256 =  ( n25____DOLLAR__253 ) - ( 16'd1 )  ;
assign n27____DOLLAR__273 =  { ( 16'd21845 ) , ( 32'd1431655931 ) }  ;
assign n28____DOLLAR__281 =  { ( 16'd54613 ) , ( n27____DOLLAR__273 ) }  ;
assign n29____DOLLAR__287 = TX_PACKET_BYTE_CNT[2:0] ;
assign n30____DOLLAR__353 =  ( n29____DOLLAR__287 ) == ( 3'd0 )  ;
assign n31____DOLLAR__346 =  ( n29____DOLLAR__287 ) == ( 3'd1 )  ;
assign n32____DOLLAR__339 =  ( n29____DOLLAR__287 ) == ( 3'd2 )  ;
assign n33____DOLLAR__335 =  { ( 16'd59746 ) , ( 16'd45904 ) }  ;
assign n34____DOLLAR__324 =  ( n29____DOLLAR__287 ) == ( 3'd3 )  ;
assign n35____DOLLAR__317 =  ( n29____DOLLAR__287 ) == ( 3'd4 )  ;
assign n36____DOLLAR__313 =  { ( 16'd40202 ) , ( 16'd55661 ) }  ;
assign n37____DOLLAR__302 =  ( n29____DOLLAR__287 ) == ( 3'd5 )  ;
assign n38____DOLLAR__295 =  ( n29____DOLLAR__287 ) == ( 3'd6 )  ;
assign n39____DOLLAR__297 =  ( n38____DOLLAR__295 ) ? ( 32'd1868751717 ) : ( 32'd644901391 ) ;
assign n40____DOLLAR__304 =  ( n37____DOLLAR__302 ) ? ( 32'd2128204124 ) : ( n39____DOLLAR__297 ) ;
assign n41____DOLLAR__319 =  ( n35____DOLLAR__317 ) ? ( n36____DOLLAR__313 ) : ( n40____DOLLAR__304 ) ;
assign n42____DOLLAR__326 =  ( n34____DOLLAR__324 ) ? ( 32'd856065035 ) : ( n41____DOLLAR__319 ) ;
assign n43____DOLLAR__341 =  ( n32____DOLLAR__339 ) ? ( n33____DOLLAR__335 ) : ( n42____DOLLAR__326 ) ;
assign n44____DOLLAR__348 =  ( n31____DOLLAR__346 ) ? ( 32'd1453685177 ) : ( n43____DOLLAR__341 ) ;
assign n45____DOLLAR__355 =  ( n30____DOLLAR__353 ) ? ( 32'd0 ) : ( n44____DOLLAR__348 ) ;
assign n46____DOLLAR__460 =  ( n29____DOLLAR__287 ) == ( 3'd0 )  ;
assign n47____DOLLAR__456 =  { ( 16'd65535 ) , ( 16'd65535 ) }  ;
assign n48____DOLLAR__445 =  ( n29____DOLLAR__287 ) == ( 3'd1 )  ;
assign n49____DOLLAR__438 =  ( n29____DOLLAR__287 ) == ( 3'd2 )  ;
assign n50____DOLLAR__434 =  { ( 16'd44876 ) , ( 16'd40214 ) }  ;
assign n51____DOLLAR__423 =  ( n29____DOLLAR__287 ) == ( 3'd3 )  ;
assign n52____DOLLAR__419 =  { ( 16'd62587 ) , ( 16'd63948 ) }  ;
assign n53____DOLLAR__408 =  ( n29____DOLLAR__287 ) == ( 3'd4 )  ;
assign n54____DOLLAR__404 =  { ( 16'd37414 ) , ( 16'd62818 ) }  ;
assign n55____DOLLAR__393 =  ( n29____DOLLAR__287 ) == ( 3'd5 )  ;
assign n56____DOLLAR__389 =  { ( 16'd41774 ) , ( 16'd9857 ) }  ;
assign n57____DOLLAR__378 =  ( n29____DOLLAR__287 ) == ( 3'd6 )  ;
assign n58____DOLLAR__374 =  { ( 16'd39452 ) , ( 16'd40336 ) }  ;
assign n59____DOLLAR__364 =  { ( 16'd61589 ) , ( 16'd36825 ) }  ;
assign n60____DOLLAR__380 =  ( n57____DOLLAR__378 ) ? ( n58____DOLLAR__374 ) : ( n59____DOLLAR__364 ) ;
assign n61____DOLLAR__395 =  ( n55____DOLLAR__393 ) ? ( n56____DOLLAR__389 ) : ( n60____DOLLAR__380 ) ;
assign n62____DOLLAR__410 =  ( n53____DOLLAR__408 ) ? ( n54____DOLLAR__404 ) : ( n61____DOLLAR__395 ) ;
assign n63____DOLLAR__425 =  ( n51____DOLLAR__423 ) ? ( n52____DOLLAR__419 ) : ( n62____DOLLAR__410 ) ;
assign n64____DOLLAR__440 =  ( n49____DOLLAR__438 ) ? ( n50____DOLLAR__434 ) : ( n63____DOLLAR__425 ) ;
assign n65____DOLLAR__447 =  ( n48____DOLLAR__445 ) ? ( 32'd1183210153 ) : ( n64____DOLLAR__440 ) ;
assign n66____DOLLAR__462 =  ( n46____DOLLAR__460 ) ? ( n47____DOLLAR__456 ) : ( n65____DOLLAR__447 ) ;
assign n67____DOLLAR__259 =  ( n25____DOLLAR__253 ) - ( 16'd1 )  ;
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
       __COUNTER_start__n10 <= 0;
   end
   else if(__START__ && __ILA_TX_FUNC_valid__) begin
       if ( __ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__ ) begin 
           __COUNTER_start__n10 <= 1; end
       else if( (__COUNTER_start__n10 >= 1 ) && ( __COUNTER_start__n10 < 255 )) begin
           __COUNTER_start__n10 <= __COUNTER_start__n10 + 1; end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TXFIFO_FULL <= TXFIFO_FULL ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TXFIFO_WUSED_QWD <= n11____DOLLAR__223 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TXFIFO_BUFF_RD_PTR <= n14____DOLLAR__220 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TXFIFO_RD_OUTPUT <= n17____DOLLAR__209 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_STATE <= 5'd8 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_STATE_ENCAP <= 8'd16 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_B2B_CNTR <= 6'd5 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_PACKET_BYTE_CNT <= n18____DOLLAR__224 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_WCNT <= n26____DOLLAR__256 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           XGMII_DOUT_REG <= n28____DOLLAR__281 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           XGMII_COUT_REG <= 8'd1 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_PKT_SENT <= TX_PKT_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_BYTE_SENT <= TX_BYTE_SENT ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           CRC <= n45____DOLLAR__355 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           CRC_DAT_IN <= CRC_DAT_IN ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           CRC_IN <= n66____DOLLAR__462 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_WCNT_INI <= n67____DOLLAR__259 ;
       end
       if (__ILA_TX_FUNC_decode_of_READ_BYTE_CNT_10G__) begin
           TX_BUF <= TX_BUF ;
       end
   end
end
endmodule
