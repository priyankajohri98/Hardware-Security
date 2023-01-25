`timescale 1ns / 1ps

module Sboxd(data,sc);

input [127:0] data;
output [127:0] sc;

     sboxinverse q0( .b(data[127:120]),.c(sc[127:120]) );
     sboxinverse q1( .b(data[119:112]),.c(sc[119:112]) );
     sboxinverse q2( .b(data[111:104]),.c(sc[111:104]) );
     sboxinverse q3( .b(data[103:96]),.c(sc[103:96]) );
     
     sboxinverse q4( .b(data[95:88]),.c(sc[95:88]) );
     sboxinverse q5( .b(data[87:80]),.c(sc[87:80]) );
     sboxinverse q6( .b(data[79:72]),.c(sc[79:72]) );
     sboxinverse q7( .b(data[71:64]),.c(sc[71:64]) );
     
     sboxinverse q8( .b(data[63:56]),.c(sc[63:56]) );
     sboxinverse q9( .b(data[55:48]),.c(sc[55:48]) );
     sboxinverse q10(.b(data[47:40]),.c(sc[47:40]) );
     sboxinverse q11(.b(data[39:32]),.c(sc[39:32]) );
     
     sboxinverse q12(.b(data[31:24]),.c(sc[31:24]) );
     sboxinverse q13(.b(data[23:16]),.c(sc[23:16]) );
     sboxinverse q14(.b(data[15:8]),.c(sc[15:8]) );
     sboxinverse q16(.b(data[7:0]),.c(sc[7:0]) );
	  
endmodule
