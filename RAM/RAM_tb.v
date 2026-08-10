`timescale 1ns/1ps

module ram_tb;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] data_in;
    wire [7:0] data_out;

    // Instantiate RAM
    ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $monitor(
            "Time=%0t | WE=%b | Address=%h | Data_In=%h | Data_Out=%h",
            $time, we, addr, data_in, data_out
        );

        clk = 0;
        we = 0;
        addr = 0;
        data_in = 0;

        // Write 0xAA to address 0
        #10;
        we = 1;
        addr = 4'h0;
        data_in = 8'hAA;

        // Write 0x55 to address 1
        #10;
        addr = 4'h1;
        data_in = 8'h55;

        // Write 0xF0 to address 2
        #10;
        addr = 4'h2;
        data_in = 8'hF0;

        // Stop writing
        #10;
        we = 0;

        // Read address 0
        addr = 4'h0;
        #10;

        // Read address 1
        addr = 4'h1;
        #10;

        // Read address 2
        addr = 4'h2;
        #10;

        $finish;
    end

endmodule