{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf400
{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl264\slmult1\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \expnd0\expndtw0\kerning0
module alu # (parameter n=32) (Ctrl, A, B, R, O, N, Z); input [1:0] Ctrl;\uc0\u8232 \
input [n-1:0] A,B;\uc0\u8232 output [n-1:0] R; 
\fs24 \

\fs29\fsmilli14667 output O, N, Z; reg O;\uc0\u8232 \
reg Z;\uc0\u8232 reg N; 
\fs24 \

\fs29\fsmilli14667 reg [n-1:0] R; 
\fs24 \

\fs29\fsmilli14667 \
always@(*) \
begin 
\fs24 \

\fs29\fsmilli14667 case(Ctrl)\
2'b00:	begin R=A+B; 
\fs24 \

\fs29\fsmilli14667 		N=R[n-1];\uc0\u8232 		if ((A[n-1]==1'b0)&&(B[n-1]==1'b0)&&(R[n-1]==1'b1)) 
\fs24 \

\fs29\fsmilli14667 		O=1'b1;\uc0\u8232 		else if ((A[n-1]==1'b1)&&(B[n-1]==1'b1)&&(R[n-1]==1'b0)) O=1'b1;\u8232 		else 
\fs24 \

\fs29\fsmilli14667 		O=1'b0; 
\fs24 \

\fs29\fsmilli14667 		end\
\uc0\u8232 2'b01:	begin R=A-B; 
\fs24 \
		
\fs29\fsmilli14667 N=R[n-1];\uc0\u8232 		if ((A[n-1]==1'b0)&&(B[n-1]==1'b1)&&(R[n-1]==1'b1)) O=1'b1;\u8232 		else if((A[n-1]==1'b1)&&(B[n-1]==1'b0)&&(R[n-1]==1'b0)) O=1'b1;\u8232 		else\u8232 		O=1'b0; 
\fs24 \

\fs29\fsmilli14667 		end \

\fs24 \

\fs29\fsmilli14667 2'b10: 	begin R=A&B; N=R[n-1]; 
\fs24 \

\fs29\fsmilli14667 		O=1'b0; \
		end \

\fs24 \

\fs29\fsmilli14667 2'b11:	begin R=A|B; N=R[n-1];\
	          O=1'b0; 
\fs24 \

\fs29\fsmilli14667 	          end \
		endcase 
\fs24 \

\fs29\fsmilli14667 \
if(R==0) \
Z=1'b1; 
\fs24 \

\fs29\fsmilli14667 else Z=1'b0; 
\fs24 \

\fs29\fsmilli14667 end\
\
endmodule 
\fs24 \
\
}