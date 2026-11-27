
`default_nettype none

module tt_um_nouranelbana_cpu (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    wire [7:0] pc_debug;
    wire [7:0] result_debug;

    cpu_8bit cpu_inst (
        .clk(clk),
        .reset(~rst_n),
        .pc_debug(pc_debug),
        .result_debug(result_debug)
    );

    assign uo_out  = pc_debug;
    assign uio_out = result_debug;
    assign uio_oe  = 8'b11111111;

    wire _unused = &{ui_in, uio_in, ena, 1'b0};

endmodule

`default_nettype wire
