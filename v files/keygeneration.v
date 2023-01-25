module Keygeneration(count,key,keyoutput);
    
   input [3:0] count;
   input [127:0]key;
   output [127:0] keyoutput;
   
   wire [31:0] p0,p1,p2,p3,res;
         
               
       assign p0 = key[127:96];
       assign p1 = key[95:64];
       assign p2 = key[63:32];
       assign p3 = key[31:0];
       
       
       assign keyoutput[127:96]= p0 ^ res ^ counton(count);
       assign keyoutput[95:64] = p0 ^ res ^ counton(count)^ p1;
       assign keyoutput[63:32] = p0 ^ res ^ counton(count)^ p1 ^ p2;
       assign keyoutput[31:0]  = p0 ^ res ^ counton(count)^ p1 ^ p2 ^ p3;
       
       
       roundsbox b1(.b(p3[23:16]),.c(res[31:24]));
       roundsbox b2(.b(p3[15:8]),.c(res[23:16]));
       roundsbox b3(.b(p3[7:0]),.c(res[15:8]));
       roundsbox b4(.b(p3[31:24]),.c(res[7:0]));
       
       
       
     function [31:0]	counton;
      input	[3:0]	count;
      case(count)	
         4'h0: counton=32'h01_00_00_00;
         4'h1: counton=32'h02_00_00_00;
         4'h2: counton=32'h04_00_00_00;
         4'h3: counton=32'h08_00_00_00;
         4'h4: counton=32'h10_00_00_00;
         4'h5: counton=32'h20_00_00_00;
         4'h6: counton=32'h40_00_00_00;
         4'h7: counton=32'h80_00_00_00;
         4'h8: counton=32'h1b_00_00_00;
         4'h9: counton=32'h36_00_00_00;
         default: counton=32'h00_00_00_00;
       endcase

     endfunction

endmodule