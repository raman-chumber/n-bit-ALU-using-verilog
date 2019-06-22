module alu # (parameter n=32) (Ctrl, A, B, R, O, N, Z); input [1:0] Ctrl; 
input [n-1:0] A,B;
output [n-1:0] R; 
output O, N, Z; 
reg O, Z, N; 
reg [n-1:0] R; 

always@(*) 
begin 
case(Ctrl)
2'b00:	begin R=A+B; 
		N=R[n-1];
		if ((A[n-1]==1'b0)&&(B[n-1]==1'b0)&&(R[n-1]==1'b1)) 
		O=1'b1;		
		else if ((A[n-1]==1'b1)&&(B[n-1]==1'b1)&&(R[n-1]==1'b0)) O=1'b1;		
		else 
		O=1'b0; 
		end
2'b01:	begin R=A-B; 
		N=R[n-1];		
		if ((A[n-1]==1'b0)&&(B[n-1]==1'b1)&&(R[n-1]==1'b1)) O=1'b1;		
		else if((A[n-1]==1'b1)&&(B[n-1]==1'b0)&&(R[n-1]==1'b0)) O=1'b1;		
		else		
		O=1'b0; 
		end 

2'b10: 	begin R=A&B; N=R[n-1]; 
		O=1'b0; 
		end 

2'b11:	begin R=A|B; N=R[n-1];
	          O=1'b0; 
	          end 
		endcase 

if(R==0) 
Z=1'b1; 
else Z=1'b0; 
end

endmodule 

