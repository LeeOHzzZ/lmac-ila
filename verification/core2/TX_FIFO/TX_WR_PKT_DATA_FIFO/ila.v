module TX_FIFO__DOT__TX_WR_PKT_DATA_FIFO(
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
__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__,
__ILA_TX_FIFO_valid__,
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
__COUNTER_start__n5
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
output            __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__;
output            __ILA_TX_FIFO_valid__;
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
output reg      [7:0] __COUNTER_start__n5;
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
wire      [4:0] TXFIFO_BUFF_addr0;
wire     [63:0] TXFIFO_BUFF_data0;
wire            TXFIFO_BUFF_wen0;
(* keep *) wire            TXFIFO_FULL_randinit;
(* keep *) wire     [63:0] TXFIFO_RD_OUTPUT_randinit;
(* keep *) wire     [12:0] TXFIFO_WUSED_QWD_randinit;
wire     [63:0] TX_DATA;
wire            TX_WE;
wire            __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__;
wire            __ILA_TX_FIFO_valid__;
wire            __START__;
wire            clk;
wire            n0____DOLLAR__43;
wire      [4:0] n10____DOLLAR__68;
wire      [4:0] n11____DOLLAR__75;
wire            n1____DOLLAR__51;
wire            n2____DOLLAR__56;
wire            n3____DOLLAR__58;
wire            n4____DOLLAR__59;
wire            n6____DOLLAR__85;
wire            n7____DOLLAR__87;
wire     [12:0] n8____DOLLAR__78;
wire            n9____DOLLAR__73;
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
assign n0____DOLLAR__43 =  ( TX_WE ) == ( 1'b1 )  ;
assign __ILA_TX_FIFO_valid__ = n0____DOLLAR__43 ;
assign n1____DOLLAR__51 =  ( TX_WE ) == ( 1'b1 )  ;
assign n2____DOLLAR__56 =  ( TXFIFO_FULL ) == ( 1'b1 )  ;
assign n3____DOLLAR__58 = ~ ( n2____DOLLAR__56 )  ;
assign n4____DOLLAR__59 =  ( n1____DOLLAR__51 ) & (n3____DOLLAR__58 )  ;
assign __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__ = n4____DOLLAR__59 ;
assign n6____DOLLAR__85 =  ( TXFIFO_WUSED_QWD ) == ( 13'd16 )  ;
assign n7____DOLLAR__87 =  ( n6____DOLLAR__85 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n8____DOLLAR__78 =  ( TXFIFO_WUSED_QWD ) + ( 13'd1 )  ;
assign TXFIFO_BUFF_addr0 = n4____DOLLAR__59 ? (TXFIFO_BUFF_WR_PTR) : (0) ;
assign TXFIFO_BUFF_data0 = n4____DOLLAR__59 ? (TX_DATA) : ('d0) ;
assign TXFIFO_BUFF_wen0 = (n4____DOLLAR__59)&&__START__ ? ( 1'b1 ) : (1'b0) ;
assign n9____DOLLAR__73 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n10____DOLLAR__68 =  ( TXFIFO_BUFF_WR_PTR ) + ( 5'd1 )  ;
assign n11____DOLLAR__75 =  ( n9____DOLLAR__73 ) ? ( 5'd0 ) : ( n10____DOLLAR__68 ) ;
always @(posedge clk) begin
   if(rst) begin
       TXFIFO_FULL <= TXFIFO_FULL_randinit ;
       TXFIFO_WUSED_QWD <= TXFIFO_WUSED_QWD_randinit ;
       TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR_randinit ;
       TXFIFO_BUFF_WR_PTR <= TXFIFO_BUFF_WR_PTR_randinit ;
       TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT_randinit ;
       __COUNTER_start__n5 <= 0;
   end
   else if(__START__ && __ILA_TX_FIFO_valid__) begin
       if ( __ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__ ) begin 
           __COUNTER_start__n5 <= 1; end
       else if( (__COUNTER_start__n5 >= 1 ) && ( __COUNTER_start__n5 < 255 )) begin
           __COUNTER_start__n5 <= __COUNTER_start__n5 + 1; end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_FULL <= n7____DOLLAR__87 ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_WUSED_QWD <= n8____DOLLAR__78 ;
       end
       if (TXFIFO_BUFF_wen0) begin
           TXFIFO_BUFF [ TXFIFO_BUFF_addr0 ] <= TXFIFO_BUFF_data0 ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_BUFF_RD_PTR <= TXFIFO_BUFF_RD_PTR ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_BUFF_WR_PTR <= n11____DOLLAR__75 ;
       end
       if (__ILA_TX_FIFO_decode_of_TX_WR_PKT_DATA_FIFO__) begin
           TXFIFO_RD_OUTPUT <= TXFIFO_RD_OUTPUT ;
       end
   end
end
endmodule
