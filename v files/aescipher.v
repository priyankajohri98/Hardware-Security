`timescale 1ns / 1ps

module aes(clock,inputdata,key,encodedtext,decodedtext);

    input clock;
    input [127:0] inputdata;
    input [127:0] key;
    output[127:0] encodedtext,decodedtext;
    
    wire [127:0]decodedtext1;
    reg [3:0] i=0;
    reg [3:0] j=4'd10;
    wire [127:0] dataout;
        
    reg [127:0] roundoutput[0:9];
    reg [127:0] decryptoutput[0:9];
    
    reg [127:0] keyoutput[0:9];
    
	wire [127:0] rpresentencrypt,rnxtencrypt,rpresentdecrypt;
	wire [127:0] keypresentencrypt,keynextencrypt,keydecrypt,k;
	
	initial begin
	   roundoutput[0] <= inputdata^key;
	   keyoutput[0] <= key;
	end
	
	assign decodedtext = (j==0)?(decodedtext1^keyoutput[0]):decodedtext1;
	
	always @(posedge clock)
	begin
	   decryptoutput[j] <= dataout;
       
       if(j<9)
	       decryptoutput[j] <= decodedtext1;           

       if(j==0)
           $finish;
	   else if(i>=9)
	       j<=j-1;
	       
	end 
		 
	always @(posedge clock)
	begin
	   roundoutput[i+1] <= rnxtencrypt;
	   keyoutput[i+1] <= keynextencrypt;

	   if(i<9)
	       i<=i+1;
	end 
	 
	 assign rpresentencrypt = roundoutput[i];
	 assign keypresentencrypt = keyoutput[i];

	 assign rpresentdecrypt = decryptoutput[j+1];
	 assign keydecrypt = keyoutput[j+1];
	 
	 
    first9rounds round1(.clock(clock),.count(i),.data(rpresentencrypt),.keyinput(keypresentencrypt),.keyoutput(keynextencrypt),.roundoutput(rnxtencrypt));
    lastround round10(.clock(clock),.count(i),.roundinput(rpresentencrypt),.keylastin(keypresentencrypt),.k(k),.finaloutput(encodedtext));

    decrypt rounddecrypt1(.clock(clock),.count(j),.data(rpresentdecrypt),.keyinput(keydecrypt),.roundoutput(decodedtext1));
    decryptlastround rounddecrypt10(.clock(clock),.count(j),.roundinput(encodedtext),.keyinput(k),.finaloutput(dataout));
endmodule






