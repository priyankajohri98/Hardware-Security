module decrypt(clock,count, data,keyinput,roundoutput);
input clock;
input [3:0]count;
input [127:0]data;
input [127:0]keyinput;
output [127:0]roundoutput;

wire [127:0] sb,sr,mixcolumn;

Sboxd f1(sb,roundoutput);
shiftrowdec f2(sr,sb);
mixcolumnd f3(mixcolumn,sr);
assign mixcolumn= keyinput^data;

endmodule
