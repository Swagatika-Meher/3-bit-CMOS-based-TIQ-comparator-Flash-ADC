////////////////////////////////////////////////////////////////////////
// Mixed Signal Design Hackathon
//
// (Organised by FOSSEE IIT Bombay, VSD Corp. Pvt. Ltd.)
//
// Design Name:        8:3 Mux based Encoder
// Designer:           Swagatika Meher
// Module Name:        Swagatika_8to3_mux_based_priorityencoder
//
///////////////////////////////////////////////////////////////////////

// Enter the code here

module Swagatika_8to3_mux_based_priorityencoder(in,O);
  
  input [7:0]in;
  output [2:0]O;
  
assign O = (in[7] ==1'b1 ) ? 3'b111:
               (in[6] ==1'b1 ) ? 3'b110:
               (in[5] ==1'b1 ) ? 3'b101:
               (in[4] ==1'b1) ? 3'b100:
               (in[3] ==1'b1) ? 3'b011:
               (in[2] ==1'b1) ? 3'b010:
               (in[1] ==1'b1) ? 3'b001:
               (in[0] ==1'b1) ? 3'b000: 3'bxxx;

endmodule
