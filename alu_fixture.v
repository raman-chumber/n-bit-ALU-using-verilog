{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf400
{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \expnd0\expndtw0\kerning0
`include "alu.v"\uc0\u8232 module alu_fixture #(parameter n=32); \u8232 \
reg [n-1:0]A,B;\uc0\u8232 wire [n-1:0] R;\u8232 wire O, N, Z;\u8232 reg[1:0] Ctrl;\u8232 \
initial 
\fs24 \

\fs29\fsmilli14667 $vcdpluson; \
\
initial 
\fs24 \

\fs29\fsmilli14667 $monitor($time, "Ctrl=%b, A=%h, B=%h, Result R=%h, N=%b, Z=%b, O=%b", Ctrl[1:0], A[n-1:0], B[n- 1:0],R[n-1:0], O, N, Z);\uc0\u8232 alu al(Ctrl, A, B, R, O, N, Z);\u8232 \
initial 
\fs24 \

\fs29\fsmilli14667 begin \
// Addition 
\fs24 \

\fs29\fsmilli14667 Ctrl=2'b00; \
A=32'hFFFF_F000;\
B=32'hFFFF_FFFF; 
\fs24 \

\fs29\fsmilli14667 \
#15  A=32'hFFFF_FFFF; \
        B=32'h000F_00F0; 
\fs24 \

\fs29\fsmilli14667 \
#15  A=32'h6767_6767; \
        B=32'h1243_1243; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hAAAA_AAAA;\
         B=32'hEFAB_CD19; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_FFFF; \
         B=32'h0000_0001; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_FFFF; \
         B=32'hFFFF_FFFF; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_FFFC; \
        B=32'hFFFF_FFFC; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_0000; \
        B=32'h0000_1342; \
\
#15  A=32'h0123_4567; \
        B=32'h0008_0808; 
\fs24 \

\fs29\fsmilli14667 \
//Subtraction 
\fs24 \

\fs29\fsmilli14667 \
#15 Ctrl=2'b01; \
A=32'hFFFF_F000; \
B=32'hFFFF_FFFF; 
\fs24 \

\fs29\fsmilli14667 \
#15  A=32'hFFFF_FFFF; \
        B=32'h000F_00F0; 
\fs24 \

\fs29\fsmilli14667 \
#15  A=32'h6767_6767; \
        B=32'h1243_1243; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hAAAA_AAAA; \
         B=32'hEFAB_CD19; \

\fs24 \

\fs29\fsmilli14667 #15   A=32'hFFFF_FFFF; \
         B=32'h0000_0001; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_FFFF; \
        B=32'hFFFF_FFFF; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_FFFC; \
        B=32'hFFFF_FFFC; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hFFFF_0000; \
         B=32'h0000_1342; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'h0123_4567;\
         B=32'h0008_0808; \

\fs24 \

\fs29\fsmilli14667 // Bitwise AND \
\
#15 Ctrl=2'b10; 
\fs24 \

\fs29\fsmilli14667 A=32'hFFFF_FFFF; \
B=32'h0A0A_B0B0; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hABCD_4545; \
        B=32'h1238_3588; \
\
#15  A=32'hF0F0_F0F0; \
        B=32'hCFCF_CFCF; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'h0000_0000; \
        B=32'h1100_0001; \

\fs24 \

\fs29\fsmilli14667 //Bitwise OR \
\
#15 Ctrl=2'b11; 
\fs24 \

\fs29\fsmilli14667 A=32'hFFFF_FFFF;\
B=32'h0A0A_B0B0; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hABCD_4545; \
        B=32'h1238_3588; \

\fs24 \

\fs29\fsmilli14667 #15  A=32'hF0F0_F0F0; \
        B=32'hCFCF_CFCF; \
\
#15  A=32'h0000_0000; \
        B=32'h1100_0001; 
\fs24 \

\fs29\fsmilli14667 \
end \
\
initial 
\fs24 \

\fs29\fsmilli14667 begin\uc0\u8232 #1000 $finish; 
\fs24 \

\fs29\fsmilli14667 end\
\
endmodule 
\fs24 \
}