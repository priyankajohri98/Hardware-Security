module first9rounds(clock,count,data,keyinput,keyoutput,roundoutput);
input clock;
input [3:0]count;
input [127:0]data;
input [127:0]keyinput;
output [127:0]keyoutput;
output [127:0]roundoutput;

wire [127:0] sc,sr,mixcolumn;

Keygeneration f0(count,keyinput,keyoutput);
Sbox f1(data,sc);
shiftrow f2(sc,sr);
mixcolumn f3(sr,mixcolumn);
assign roundoutput= keyoutput^mixcolumn;

endmodule
