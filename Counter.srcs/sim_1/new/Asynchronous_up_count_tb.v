`timescale 1ns / 1ps

module down_up_count_tb;
    reg clk,rst,mode;
    wire [2:0]q;
    down_up_count DUT(.clk(clk),.rst(rst),.q(q),.mode(mode));
    //CLOCK GENERATION
    initial
    begin
        clk =0;
        #3 rst = 1;
        forever #5 clk = ~clk;
    end
     // Mode Generation
    initial
    begin
        mode = 0;
        #100 mode = 1;
        #200 mode = 0;
        
    end
    // Reset Generation
    initial
    begin
        rst = 0;
        #3 rst = 1;
        #200 $finish;
     end

    
endmodule
