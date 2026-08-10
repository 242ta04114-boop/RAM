`timescale 1ns/1ps

module ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
)(
    input wire clk,
    input wire we,
    input wire [ADDR_WIDTH-1:0] addr,
    input wire [DATA_WIDTH-1:0] data_in,
    output reg [DATA_WIDTH-1:0] data_out
);

    // RAM memory: 16 locations, 8 bits each
    reg [DATA_WIDTH-1:0] memory [0:(1<<ADDR_WIDTH)-1];

    // Write operation
    always @(posedge clk) begin
        if (we)
            memory[addr] <= data_in;
    end

    // Read operation
    always @(*) begin
        data_out = memory[addr];
    end

endmodule