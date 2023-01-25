module decryptlastround(clock,count,roundinput,keyinput,finaloutput);
input clock;
input [3:0]count;
input [127:0]roundinput;
input [127:0]keyinput;
output [127:0]finaloutput;

wire [127:0] sc,sr,mcl;

Sboxd f1(sc,finaloutput);
shiftrowdec f2(sr,sc);
assign sr= keyinput^roundinput;

endmodule
