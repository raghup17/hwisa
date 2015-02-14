`define WIDTH 32
`define CLK_HALF 5
`define CLK (2*`CLK_HALF)

module clb_adder_tb;
  reg clk, r, en;
  reg [2*`WIDTH-1:0] din;
  reg divld;
  wire [`WIDTH:0] dout;
  wire dovld;
  wire rdy;
  reg send_data;


  clb_add #(`WIDTH) dut
    (
      .clk(clk),
      .rst(r),
      .en(en),

      .rdy(rdy),
      .send_data(send_data),

      .din(din),
      .divld(divld),
      .dout(dout),
      .dovld(dovld)
    );

  // Set up clock
  initial forever begin
    #`CLK_HALF clk = 1;
    #`CLK_HALF clk = 0;
  end

  initial begin
    #`CLK r = 1;
    #`CLK r = 0;

    en = 1'b1;
    send_data = 1'b1;

    din = {32'h000000D0, 32'h0000000E};
    divld = 1'b1;
    #1;

    $display("din=%x, dout = %x", din, dout);

    $finish;
  end
endmodule
