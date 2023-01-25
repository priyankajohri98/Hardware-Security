module aestopmodule(clock,foutput);
input clock;
output [7:0] foutput;
wire [127:0] ctr1,ctr2;
aes x1(.clock(clock),.inputdata(128'h00112233445566778899aabbccddeeff),.key(128'h000102030405060708090a0b0c0d0e0f),.encodedtext(ctr1),.decodedtext(ctr2));
assign foutput = ctr1[127:120];
endmodule
