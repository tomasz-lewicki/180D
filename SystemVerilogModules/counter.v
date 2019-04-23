module counter16bit_add3 (	input logic clk, logic rst,
				output logic[15:0]):

always_ff@(posedge clk, posedge rst)
  if(rst) q <= 0;
  else q <= q +3;

endmodule

