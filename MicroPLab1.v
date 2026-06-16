/* module top(
        input wire[2:0] SW,
        output reg[2:0] LED_RED);
        
        always@* begin
                
                LED_RED[0] = 1'b0;
                
                case (SW[2:0])
                
                        3'b011:begin
                                LED_RED[0] = 1'b1;
                        end
                        
                        3'b101:begin
                                LED_RED[0] = 1'b1;
                        end
                        
                        3'b110:begin
                                LED_RED[0] = 1'b1;
                        end
                        
                        3'b111:begin
                                LED_RED[0] = 1'b1;
                        end
                        
                endcase
        end
 endmodule
*/


/* module top(
        input wire [3:0] SW,
        output reg [3:0] LED_RED);


always @* begin
        LED_RED[0] = 1'b0; // default value is 0
        
        if (SW[0] == 1'b1 && SW[1] == 1'b1) begin
                LED_RED[0] = 1'b1;
        end else if (SW[0] == 1'b1 && SW[2] == 1'b1) begin
                LED_RED[0] = 1'b1;
        
        end else if (SW[1] == 1'b1 && SW[2] == 1'b1) begin
                LED_RED[0] = 1'b1;
        end
end
endmodule
*/


module top(
        input wire [7:0] SW,
        output reg [3:0] LED_RED);


always @* begin
        LED_RED[0] = 1'b0; // default value is 0
        
        if (SW[7:4] > SW[3:0]) begin
                LED_RED[0] = 1'b1;
        end 
end
endmodule