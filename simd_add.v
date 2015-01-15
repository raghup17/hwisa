module simd_add 
#(
  parameter SIMD_WIDTH=1,
  parameter MIWIDTH=32,
  parameter MOWIDTH=32
)
(
  input wire clk,
  input wire rst,
  input wire en,
  input wire [MIWIDTH-1:0] din,
  input wire dvld,
  output wire [MOWIDTH-1:0] din,
  output wire ovld,
  output wire rdy
);

// Generate all the modules
generate
  genvar count;
  for (count = 0; count < IPIF_NUM_REG; count = count + 1) begin
      given_mod_name (IPIF_DWIDTH) simd_mod (
          .clk(clk),
          .aresetn(aresetn),
          .en(ipif_write_ce[reg_num]),
          .be(ipif_be),
          .d(ipif_data_in),
          .q(slv_regs[reg_num])
      );
  end
endgenerate

endmodule
