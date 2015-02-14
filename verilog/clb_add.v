module clb_add
#(
  parameter WIDTH=32
)
(
  // Clock, reset and enables
  input wire clk,
  input wire rst,
  input wire en,

  // Control path
  output wire rdy,
  input wire send_data,

  // Datapath
  input wire [2*WIDTH-1:0] din,
  input wire divld,
  output wire [WIDTH:0] dout,
  output wire dovld
);

  wire [WIDTH-1:0] w1, w2;
  clb_splitter #(2*WIDTH, WIDTH, WIDTH) split (
    .din(din),
    .dout1(w1),
    .dout2(w2)
  );

  assign dout = w1 + w2;
  assign dovld = divld & send_data;

  // Control signal assignment
  assign rdy  = 1'b1;

endmodule
