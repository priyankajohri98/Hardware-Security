
module Sbox(data,sc);

input [127:0] data;
output [127:0] sc;

     roundsbox z0( .b(data[127:120]),.c(sc[127:120]) );
     roundsbox z1( .b(data[119:112]),.c(sc[119:112]) );
     roundsbox z2( .b(data[111:104]),.c(sc[111:104]) );
     roundsbox z3( .b(data[103:96]),.c(sc[103:96]) );
     
     roundsbox z4( .b(data[95:88]),.c(sc[95:88]) );
     roundsbox z5( .b(data[87:80]),.c(sc[87:80]) );
     roundsbox z6( .b(data[79:72]),.c(sc[79:72]) );
     roundsbox z7( .b(data[71:64]),.c(sc[71:64]) );
     
     roundsbox z8( .b(data[63:56]),.c(sc[63:56]) );
     roundsbox z9( .b(data[55:48]),.c(sc[55:48]) );
     roundsbox z10(.b(data[47:40]),.c(sc[47:40]) );
     roundsbox z11(.b(data[39:32]),.c(sc[39:32]) );
     
     roundsbox z12(.b(data[31:24]),.c(sc[31:24]) );
     roundsbox z13(.b(data[23:16]),.c(sc[23:16]) );
     roundsbox z14(.b(data[15:8]),.c(sc[15:8]) );
     roundsbox z15(.b(data[7:0]),.c(sc[7:0]) );
	  
endmodule
