module lastround(clock,count,roundinput,keylastin,k,finaloutput);
input clock;
input [3:0]count;
input [127:0]roundinput;
input [127:0]keylastin;
output [127:0]k;
output [127:0]finaloutput;

wire [127:0] sc,sr,mcl,keyout;
assign k = keyout;


Keygeneration t0(count,keylastin,keyout);
Sbox t1(roundinput,sc);
shiftrow t2(sc,sr);
assign finaloutput= keyout^sr;

endmodule
