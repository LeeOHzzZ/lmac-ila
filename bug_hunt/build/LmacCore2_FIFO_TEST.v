module FIFO_TEST(
MODE_10G,
MODE_1G,
MODE_2P5G,
MODE_5G,
RESETN,
TX_DATA,
TX_WE,
__ILA_FIFO_TEST_grant__,
clk,
rst,
__ILA_FIFO_TEST_acc_decode__,
__ILA_FIFO_TEST_decode_of_Read_only__,
__ILA_FIFO_TEST_decode_of_Write__DASH__Read__,
__ILA_FIFO_TEST_decode_of_Write_only__,
__ILA_FIFO_TEST_valid__,
TXFIFO_BUFF_data_n72,
TXFIFO_BUFF_data_n78,
TXFIFO_BUFF_addr0,
TXFIFO_BUFF_data0,
TXFIFO_BUFF_wen0,
TXFIFO_BUFF_addr_n71,
TXFIFO_BUFF_addr_n77,
TXFIFO_FULL,
TXFIFO_WUSED_QWD,
TXFIFO_BUFF_RD_PTR,
TXFIFO_BUFF_WR_PTR,
TXFIFO_RD_OUTPUT,
TXFIFO_RD_EN,
TXFIFO_RD_EMPTY,
counter,
RE,
fifo_empty
);
input            MODE_10G;
input            MODE_1G;
input            MODE_2P5G;
input            MODE_5G;
input            RESETN;
input     [63:0] TX_DATA;
input            TX_WE;
input      [2:0] __ILA_FIFO_TEST_grant__;
input            clk;
input            rst;
input     [63:0] TXFIFO_BUFF_data_n72;
input     [63:0] TXFIFO_BUFF_data_n78;
output      [2:0] __ILA_FIFO_TEST_acc_decode__;
output            __ILA_FIFO_TEST_decode_of_Read_only__;
output            __ILA_FIFO_TEST_decode_of_Write__DASH__Read__;
output            __ILA_FIFO_TEST_decode_of_Write_only__;
output            __ILA_FIFO_TEST_valid__;
output      [4:0] TXFIFO_BUFF_addr0;
output     [63:0] TXFIFO_BUFF_data0;
output            TXFIFO_BUFF_wen0;
output      [4:0] TXFIFO_BUFF_addr_n71;
output      [4:0] TXFIFO_BUFF_addr_n77;
output reg            TXFIFO_FULL;
output reg     [12:0] TXFIFO_WUSED_QWD;
output reg      [4:0] TXFIFO_BUFF_RD_PTR;
output reg      [4:0] TXFIFO_BUFF_WR_PTR;
output reg     [63:0] TXFIFO_RD_OUTPUT;
output reg            TXFIFO_RD_EN;
output reg            TXFIFO_RD_EMPTY;
output reg      [1:0] counter;
output reg            RE;
output reg            fifo_empty;
wire            MODE_10G;
wire            MODE_1G;
wire            MODE_2P5G;
wire            MODE_5G;
wire            RESETN;
wire      [4:0] TXFIFO_BUFF_addr0;
wire      [4:0] TXFIFO_BUFF_addr_n71;
wire      [4:0] TXFIFO_BUFF_addr_n77;
wire     [63:0] TXFIFO_BUFF_data0;
wire     [63:0] TXFIFO_BUFF_data_n72;
wire     [63:0] TXFIFO_BUFF_data_n78;
wire            TXFIFO_BUFF_wen0;
wire     [63:0] TX_DATA;
wire            TX_WE;
wire      [2:0] __ILA_FIFO_TEST_acc_decode__;
wire            __ILA_FIFO_TEST_decode_of_Read_only__;
wire            __ILA_FIFO_TEST_decode_of_Write__DASH__Read__;
wire            __ILA_FIFO_TEST_decode_of_Write_only__;
wire      [2:0] __ILA_FIFO_TEST_grant__;
wire            __ILA_FIFO_TEST_valid__;
wire            clk;
wire            n0;
wire            n1;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire            n16;
wire            n17;
wire            n18;
wire            n19;
wire            n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire     [12:0] n36;
wire     [12:0] n37;
wire     [12:0] n38;
wire     [12:0] n39;
wire            n4;
wire     [12:0] n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire            n45;
wire            n46;
wire      [4:0] n47;
wire            n48;
wire            n49;
wire            n5;
wire      [4:0] n50;
wire            n51;
wire      [4:0] n52;
wire      [4:0] n53;
wire      [4:0] n54;
wire            n55;
wire      [4:0] n56;
wire      [4:0] n57;
wire      [4:0] n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire      [4:0] n62;
wire      [4:0] n63;
wire            n64;
wire            n65;
wire            n66;
wire      [4:0] n67;
wire      [4:0] n68;
wire            n69;
wire            n7;
wire      [4:0] n70;
wire     [63:0] n73;
wire     [63:0] n74;
wire            n75;
wire      [4:0] n76;
wire     [63:0] n79;
wire            n8;
wire     [63:0] n80;
wire            n81;
wire            n82;
wire            n83;
wire            n84;
wire            n85;
wire            n86;
wire            n87;
wire            n88;
wire            n9;
wire            rst;
assign n0 =  ( TX_WE ) == ( 1'b1 )  ;
assign __ILA_FIFO_TEST_valid__ = n0 ;
assign n1 =  ( TX_WE ) == ( 1'b1 )  ;
assign n2 =  ( TXFIFO_FULL ) == ( 1'b1 )  ;
assign n3 = ~ ( n2 )  ;
assign n4 =  ( n1 ) & (n3 )  ;
assign n5 =  ( RE ) == ( 1'b0 )  ;
assign n6 =  ( n4 ) & (n5 )  ;
assign __ILA_FIFO_TEST_decode_of_Write_only__ = n6 ;
assign __ILA_FIFO_TEST_acc_decode__[0] = __ILA_FIFO_TEST_decode_of_Write_only__ ;
assign n7 =  ( TX_WE ) == ( 1'b0 )  ;
assign n8 =  ( fifo_empty ) == ( 1'b0 )  ;
assign n9 =  ( n7 ) & (n8 )  ;
assign n10 =  ( RE ) == ( 1'b1 )  ;
assign n11 =  ( n9 ) & (n10 )  ;
assign __ILA_FIFO_TEST_decode_of_Read_only__ = n11 ;
assign __ILA_FIFO_TEST_acc_decode__[1] = __ILA_FIFO_TEST_decode_of_Read_only__ ;
assign n12 =  ( TX_WE ) == ( 1'b1 )  ;
assign n13 =  ( RE ) == ( 1'b1 )  ;
assign n14 =  ( n12 ) & (n13 )  ;
assign n15 =  ( fifo_empty ) == ( 1'b0 )  ;
assign n16 =  ( n14 ) & (n15 )  ;
assign n17 =  ( TXFIFO_FULL ) == ( 1'b1 )  ;
assign n18 = ~ ( n17 )  ;
assign n19 =  ( n16 ) & (n18 )  ;
assign __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ = n19 ;
assign __ILA_FIFO_TEST_acc_decode__[2] = __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ ;
assign n20 =  ( TXFIFO_WUSED_QWD ) == ( 13'd15 )  ;
assign n21 =  ( TXFIFO_WUSED_QWD ) > ( 13'd15 )  ;
assign n22 =  ( n20 ) | ( n21 )  ;
assign n23 =  ( n22 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n24 =  ( counter ) == ( 2'd2 )  ;
assign n25 =  ( TXFIFO_WUSED_QWD ) == ( 13'd16 )  ;
assign n26 =  ( n25 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n27 =  ( n24 ) ? ( 1'd0 ) : ( n26 ) ;
assign n28 =  ( counter ) == ( 2'd2 )  ;
assign n29 =  ( TXFIFO_WUSED_QWD ) == ( 13'd16 )  ;
assign n30 =  ( n29 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n31 =  ( TXFIFO_WUSED_QWD ) == ( 13'd15 )  ;
assign n32 =  ( TXFIFO_WUSED_QWD ) > ( 13'd15 )  ;
assign n33 =  ( n31 ) | ( n32 )  ;
assign n34 =  ( n33 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n35 =  ( n28 ) ? ( n30 ) : ( n34 ) ;
assign n36 =  ( TXFIFO_WUSED_QWD ) + ( 13'd1 )  ;
assign n37 =  ( TXFIFO_WUSED_QWD ) - ( 13'd1 )  ;
assign n38 =  ( n24 ) ? ( n37 ) : ( TXFIFO_WUSED_QWD ) ;
assign n39 =  ( TXFIFO_WUSED_QWD ) + ( 13'd1 )  ;
assign n40 =  ( n28 ) ? ( TXFIFO_WUSED_QWD ) : ( n39 ) ;
assign n41 = ~ ( n19 )  ;
assign n42 =  ( 1'b1 ) & (n41 )  ;
assign n43 = ~ ( n6 )  ;
assign n44 =  ( n42 ) & (n43 )  ;
assign n45 =  ( n42 ) & (n6 )  ;
assign n46 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n47 =  ( n46 ) ? ( 5'd0 ) : ( TXFIFO_BUFF_WR_PTR ) ;
assign n48 =  ( 1'b1 ) & (n19 )  ;
assign n49 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n50 =  ( n49 ) ? ( 5'd0 ) : ( TXFIFO_BUFF_WR_PTR ) ;
assign TXFIFO_BUFF_addr0 = n48 ? (n50) : (n45 ? (n47) : (0)) ;
assign TXFIFO_BUFF_data0 = n48 ? (TX_DATA) : (n45 ? (TX_DATA) : ('d0)) ;
assign TXFIFO_BUFF_wen0 = (n48) ? ( 1'b1 ) : ((n45) ? ( 1'b1 ) : (1'b0)) ;
assign n51 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n52 =  ( TXFIFO_BUFF_RD_PTR ) + ( 5'd1 )  ;
assign n53 =  ( n51 ) ? ( 5'd1 ) : ( n52 ) ;
assign n54 =  ( n24 ) ? ( n53 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign n55 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n56 =  ( TXFIFO_BUFF_RD_PTR ) + ( 5'd1 )  ;
assign n57 =  ( n55 ) ? ( 5'd1 ) : ( n56 ) ;
assign n58 =  ( n28 ) ? ( n57 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign n59 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n60 =  ( TXFIFO_BUFF_WR_PTR ) > ( 5'd16 )  ;
assign n61 =  ( n59 ) | ( n60 )  ;
assign n62 =  ( TXFIFO_BUFF_WR_PTR ) + ( 5'd1 )  ;
assign n63 =  ( n61 ) ? ( 5'd1 ) : ( n62 ) ;
assign n64 =  ( TXFIFO_BUFF_WR_PTR ) == ( 5'd16 )  ;
assign n65 =  ( TXFIFO_BUFF_WR_PTR ) > ( 5'd16 )  ;
assign n66 =  ( n64 ) | ( n65 )  ;
assign n67 =  ( TXFIFO_BUFF_WR_PTR ) + ( 5'd1 )  ;
assign n68 =  ( n66 ) ? ( 5'd1 ) : ( n67 ) ;
assign n69 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n70 =  ( n69 ) ? ( 5'd0 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign TXFIFO_BUFF_addr_n71 = n70 ;
assign n73 = TXFIFO_BUFF_data_n72 ;
assign n74 =  ( n24 ) ? ( n73 ) : ( TXFIFO_RD_OUTPUT ) ;
assign n75 =  ( TXFIFO_BUFF_RD_PTR ) == ( 5'd16 )  ;
assign n76 =  ( n75 ) ? ( 5'd0 ) : ( TXFIFO_BUFF_RD_PTR ) ;
assign TXFIFO_BUFF_addr_n77 = n76 ;
assign n79 = TXFIFO_BUFF_data_n78 ;
assign n80 =  ( n28 ) ? ( n79 ) : ( TXFIFO_RD_OUTPUT ) ;
assign n81 =  ( TXFIFO_WUSED_QWD ) == ( 13'd1 )  ;
assign n82 =  ( n81 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n83 =  ( TXFIFO_WUSED_QWD ) == ( 13'd0 )  ;
assign n84 =  ( n83 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n85 =  ( n24 ) ? ( n82 ) : ( n84 ) ;
assign n86 =  ( TXFIFO_WUSED_QWD ) == ( 13'd0 )  ;
assign n87 =  ( n86 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n88 =  ( n28 ) ? ( n87 ) : ( 1'd0 ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_FIFO_TEST_valid__) begin
       if ( __ILA_FIFO_TEST_decode_of_Write_only__ && __ILA_FIFO_TEST_grant__[0] ) begin
           TXFIFO_FULL <= n23;
       end else if ( __ILA_FIFO_TEST_decode_of_Read_only__ && __ILA_FIFO_TEST_grant__[1] ) begin
           TXFIFO_FULL <= n27;
       end else if ( __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ && __ILA_FIFO_TEST_grant__[2] ) begin
           TXFIFO_FULL <= n35;
       end
       if ( __ILA_FIFO_TEST_decode_of_Write_only__ && __ILA_FIFO_TEST_grant__[0] ) begin
           TXFIFO_WUSED_QWD <= n36;
       end else if ( __ILA_FIFO_TEST_decode_of_Read_only__ && __ILA_FIFO_TEST_grant__[1] ) begin
           TXFIFO_WUSED_QWD <= n38;
       end else if ( __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ && __ILA_FIFO_TEST_grant__[2] ) begin
           TXFIFO_WUSED_QWD <= n40;
       end
       if ( __ILA_FIFO_TEST_decode_of_Read_only__ && __ILA_FIFO_TEST_grant__[1] ) begin
           TXFIFO_BUFF_RD_PTR <= n54;
       end else if ( __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ && __ILA_FIFO_TEST_grant__[2] ) begin
           TXFIFO_BUFF_RD_PTR <= n58;
       end
       if ( __ILA_FIFO_TEST_decode_of_Write_only__ && __ILA_FIFO_TEST_grant__[0] ) begin
           TXFIFO_BUFF_WR_PTR <= n63;
       end else if ( __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ && __ILA_FIFO_TEST_grant__[2] ) begin
           TXFIFO_BUFF_WR_PTR <= n68;
       end
       if ( __ILA_FIFO_TEST_decode_of_Read_only__ && __ILA_FIFO_TEST_grant__[1] ) begin
           TXFIFO_RD_OUTPUT <= n74;
       end else if ( __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ && __ILA_FIFO_TEST_grant__[2] ) begin
           TXFIFO_RD_OUTPUT <= n80;
       end
       if ( __ILA_FIFO_TEST_decode_of_Write_only__ && __ILA_FIFO_TEST_grant__[0] ) begin
           fifo_empty <= 0'd0;
       end else if ( __ILA_FIFO_TEST_decode_of_Read_only__ && __ILA_FIFO_TEST_grant__[1] ) begin
           fifo_empty <= n85;
       end else if ( __ILA_FIFO_TEST_decode_of_Write__DASH__Read__ && __ILA_FIFO_TEST_grant__[2] ) begin
           fifo_empty <= n88;
       end
   end
end
endmodule
