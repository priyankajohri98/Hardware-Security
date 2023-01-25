module shiftrowdec(sc,sr);

input [127:0] sc;
output [127:0] sr;

assign         sr[127:120] = sc[127:120];  
assign         sr[87:80] = sc[119:112];
assign         sr[47:40] = sc[111:104];
assign         sr[7:0] = sc[103:96];
   
assign          sr[95:88] = sc[95:88];
assign          sr[55:48] = sc[87:80];
assign          sr[15:8] = sc[79:72];
assign          sr[103:96] = sc[71:64];
   
assign          sr[63:56] = sc[63:56];
assign          sr[23:16] = sc[55:48];
assign          sr[111:104] = sc[47:40];
assign          sr[71:64] = sc[39:32];
   
assign          sr[31:24] = sc[31:24];
assign          sr[119:112] = sc[23:16];
assign          sr[79:72] = sc[15:8];
assign          sr[39:32] = sc[7:0]; 


endmodule