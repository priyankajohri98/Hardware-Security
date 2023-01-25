module mixcolumnd(b,mixcolumn);
input [127:0] b;
output [127:0] mixcolumn;

wire [127:0] lookuptable14,lookuptable13,lookuptable11,lookuptable9;

     m_lookuptable14 k0( .b(b[127:120]),.c(lookuptable14[127:120]) );
     m_lookuptable14 k1( .b(b[119:112]),.c(lookuptable14[119:112]) );
     m_lookuptable14 k2( .b(b[111:104]),.c(lookuptable14[111:104]) );
     m_lookuptable14 k3( .b(b[103:96]),.c(lookuptable14[103:96]) );    
     m_lookuptable14 k4( .b(b[95:88]),.c(lookuptable14[95:88]) );
     m_lookuptable14 k5( .b(b[87:80]),.c(lookuptable14[87:80]) );
     m_lookuptable14 k6( .b(b[79:72]),.c(lookuptable14[79:72]) );
     m_lookuptable14 k7( .b(b[71:64]),.c(lookuptable14[71:64]) );     
     m_lookuptable14 k8( .b(b[63:56]),.c(lookuptable14[63:56]) );
     m_lookuptable14 k9( .b(b[55:48]),.c(lookuptable14[55:48]) );
     m_lookuptable14 k10(.b(b[47:40]),.c(lookuptable14[47:40]) );
     m_lookuptable14 k11(.b(b[39:32]),.c(lookuptable14[39:32]) );     
     m_lookuptable14 k12(.b(b[31:24]),.c(lookuptable14[31:24]) );
     m_lookuptable14 k13(.b(b[23:16]),.c(lookuptable14[23:16]) );
     m_lookuptable14 k14(.b(b[15:8]),.c(lookuptable14[15:8]) );
     m_lookuptable14 k15(.b(b[7:0]),.c(lookuptable14[7:0]) );

     m_lookuptable13 l0( .b(b[127:120]),.c(lookuptable13[127:120]) );
     m_lookuptable13 l1( .b(b[119:112]),.c(lookuptable13[119:112]) );
     m_lookuptable13 l2( .b(b[111:104]),.c(lookuptable13[111:104]) );
     m_lookuptable13 l3( .b(b[103:96]),.c(lookuptable13[103:96]) );   
     m_lookuptable13 l4( .b(b[95:88]),.c(lookuptable13[95:88]) );
     m_lookuptable13 l5( .b(b[87:80]),.c(lookuptable13[87:80]) );
     m_lookuptable13 l6( .b(b[79:72]),.c(lookuptable13[79:72]) );
     m_lookuptable13 l7( .b(b[71:64]),.c(lookuptable13[71:64]) );
     m_lookuptable13 l8( .b(b[63:56]),.c(lookuptable13[63:56]) );
     m_lookuptable13 l9( .b(b[55:48]),.c(lookuptable13[55:48]) );
     m_lookuptable13 l10(.b(b[47:40]),.c(lookuptable13[47:40]) );
     m_lookuptable13 l11(.b(b[39:32]),.c(lookuptable13[39:32]) );
     m_lookuptable13 l12(.b(b[31:24]),.c(lookuptable13[31:24]) );
     m_lookuptable13 l13(.b(b[23:16]),.c(lookuptable13[23:16]) );
     m_lookuptable13 l14(.b(b[15:8]),.c(lookuptable13[15:8]) );
     m_lookuptable13 l15(.b(b[7:0]),.c(lookuptable13[7:0]) );
     
     m_lookuptable11 m0( .b(b[127:120]),.c(lookuptable11[127:120]) );
     m_lookuptable11 m1( .b(b[119:112]),.c(lookuptable11[119:112]) );
     m_lookuptable11 m2( .b(b[111:104]),.c(lookuptable11[111:104]) );
     m_lookuptable11 m3( .b(b[103:96]),.c(lookuptable11[103:96]) );     
     m_lookuptable11 m4( .b(b[95:88]),.c(lookuptable11[95:88]) );
     m_lookuptable11 m5( .b(b[87:80]),.c(lookuptable11[87:80]) );
     m_lookuptable11 m6( .b(b[79:72]),.c(lookuptable11[79:72]) );
     m_lookuptable11 m7( .b(b[71:64]),.c(lookuptable11[71:64]) );     
     m_lookuptable11 m8( .b(b[63:56]),.c(lookuptable11[63:56]) );
     m_lookuptable11 m9( .b(b[55:48]),.c(lookuptable11[55:48]) );
     m_lookuptable11 m10(.b(b[47:40]),.c(lookuptable11[47:40]) );
     m_lookuptable11 m11(.b(b[39:32]),.c(lookuptable11[39:32]) );     
     m_lookuptable11 m12(.b(b[31:24]),.c(lookuptable11[31:24]) );
     m_lookuptable11 m13(.b(b[23:16]),.c(lookuptable11[23:16]) );
     m_lookuptable11 m14(.b(b[15:8]),.c(lookuptable11[15:8]) );
     m_lookuptable11 m15(.b(b[7:0]),.c(lookuptable11[7:0]) );
     
     m_lookuptable9 n0( .b(b[127:120]),.c(lookuptable9[127:120]) );
     m_lookuptable9 n1( .b(b[119:112]),.c(lookuptable9[119:112]) );
     m_lookuptable9 n2( .b(b[111:104]),.c(lookuptable9[111:104]) );
     m_lookuptable9 n3( .b(b[103:96]),.c(lookuptable9[103:96]) );     
     m_lookuptable9 n4( .b(b[95:88]),.c(lookuptable9[95:88]) );
     m_lookuptable9 n5( .b(b[87:80]),.c(lookuptable9[87:80]) );
     m_lookuptable9 n6( .b(b[79:72]),.c(lookuptable9[79:72]) );
     m_lookuptable9 n7( .b(b[71:64]),.c(lookuptable9[71:64]) );     
     m_lookuptable9 n8( .b(b[63:56]),.c(lookuptable9[63:56]) );
     m_lookuptable9 n9( .b(b[55:48]),.c(lookuptable9[55:48]) );
     m_lookuptable9 n10(.b(b[47:40]),.c(lookuptable9[47:40]) );
     m_lookuptable9 n11(.b(b[39:32]),.c(lookuptable9[39:32]) );     
     m_lookuptable9 n12(.b(b[31:24]),.c(lookuptable9[31:24]) );
     m_lookuptable9 n13(.b(b[23:16]),.c(lookuptable9[23:16]) );
     m_lookuptable9 n14(.b(b[15:8]),.c(lookuptable9[15:8]) );
     m_lookuptable9 n15(.b(b[7:0]),.c(lookuptable9[7:0]) );

assign mixcolumn[127:120]= lookuptable14[127:120] ^ lookuptable11[119:112] ^ lookuptable13[111:104] ^ lookuptable9[103:96];
assign mixcolumn[119:112]= lookuptable14[119:112] ^ lookuptable11[111:104] ^ lookuptable13[103:96] ^ lookuptable9[127:120];
assign mixcolumn[111:104]= lookuptable14[111:104] ^ lookuptable11[103:96] ^ lookuptable13[127:120] ^ lookuptable9[119:112];
assign mixcolumn[103:96]= lookuptable14[103:96] ^ lookuptable11[127:120] ^ lookuptable13[119:112] ^ lookuptable9[111:104];

assign mixcolumn[95:88]= lookuptable14[95:88] ^ lookuptable11[87:80] ^ lookuptable13[79:72] ^ lookuptable9[71:64];
assign mixcolumn[87:80]= lookuptable14[87:80] ^ lookuptable11[79:72] ^ lookuptable13[71:64] ^ lookuptable9[95:88];
assign mixcolumn[79:72]= lookuptable14[79:72] ^ lookuptable11[71:64] ^ lookuptable13[95:88] ^ lookuptable9[87:80];
assign mixcolumn[71:64]= lookuptable14[71:64] ^ lookuptable11[95:88] ^ lookuptable13[87:80] ^ lookuptable9[79:72];

assign mixcolumn[63:56]= lookuptable14[63:56] ^ lookuptable11[55:48] ^ lookuptable13[47:40] ^ lookuptable9[39:32];
assign mixcolumn[55:48]= lookuptable14[55:48] ^ lookuptable11[47:40] ^ lookuptable13[39:32] ^ lookuptable9[63:56];
assign mixcolumn[47:40]= lookuptable14[47:40] ^ lookuptable11[39:32] ^ lookuptable13[63:56] ^ lookuptable9[55:48];
assign mixcolumn[39:32]= lookuptable14[39:32] ^ lookuptable11[63:56] ^ lookuptable13[55:48] ^ lookuptable9[47:40];

assign mixcolumn[31:24]= lookuptable14[31:24] ^ lookuptable11[23:16] ^ lookuptable13[15:8] ^ lookuptable9[7:0];
assign mixcolumn[23:16]= lookuptable14[23:16] ^ lookuptable11[15:8] ^ lookuptable13[7:0] ^ lookuptable9[31:24];
assign mixcolumn[15:8]= lookuptable14[15:8] ^ lookuptable11[7:0] ^ lookuptable13[31:24] ^ lookuptable9[23:16];
assign mixcolumn[7:0]= lookuptable14[7:0] ^ lookuptable11[31:24] ^ lookuptable13[23:16] ^ lookuptable9[15:8];


endmodule
