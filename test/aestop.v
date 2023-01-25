module AEStest;

	// Inputs
	reg clock;

	wire [7:0] finaloutput;

	aestopmodule uut (.clock(clock), .foutput(finaloutput));

initial begin
   forever begin
   clock = 0;
   #10 clock <= ~clock;
   
end
   
end
      
endmodule