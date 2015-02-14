module clb_splitter
#(
  parameter IWIDTH=32,
  parameter OWIDTH1=16,
  parameter OWIDTH2=16
)
(
  input wire [IWIDTH-1:0] din,
  output wire [OWIDTH1-1:0] dout1,
  output wire [OWIDTH2-1:0] dout2
);

  assign dout1 = din[OWIDTH1-1:0];
  assign dout2 = din[OWIDTH2+OWIDTH1-1:OWIDTH1];

endmodule
