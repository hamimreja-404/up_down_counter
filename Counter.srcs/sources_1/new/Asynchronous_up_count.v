`timescale 1ns / 1ps
module down_up_count_tb#(
     parameter N=3
 )(   input clk,rst,mode,
    output reg [N-1:0]q
    );

    always @(posedge rst)
    begin
        if(rst)
            q <={N{1'b0}};   
    end
    always @(negedge clk)
        begin
            if(mode == 0)
                q <=q+1;
             else  
                q <=q-1;
         end
endmodule
