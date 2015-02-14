`define IWIDTH  64
`define OWIDTH1 32
`define OWIDTH2 32
`define CLK_HALF 5
`define CLK (2*`CLK_HALF)

module clb_splitter_tb;
  reg clk, r, en;
  reg [`IWIDTH-1:0] din;
  wire [`OWIDTH1-1:0] dout1;
  wire [`OWIDTH2-1:0] dout2;


  reg [`IWIDTH-1:0] in;
  reg [`OWIDTH1-1:0] v1;
  reg [`OWIDTH2-1:0] v2;

  clb_splitter #(`IWIDTH, `OWIDTH1, `OWIDTH2) dut
    (
      .din(din),
      .dout1(dout1),
      .dout2(dout2)
    );

  // Set up clock
  initial forever begin
    #`CLK_HALF clk = 1;
    #`CLK_HALF clk = 0;
  end

  initial begin
    #`CLK r = 1;
    #`CLK r = 0;

    v1 = 32'hF0F0F0F0;
    v2 = 32'hD0D0D0D0;
    in = {v2,v1};
    din = in;

    #1;

//    $display("v1 = %x, v2=%x, in=%x", v1, v2, in);
    $display("dout1 = %x, dout2=%x", dout1, dout2);

    $finish;
  end
endmodule
