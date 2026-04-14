// Put your code below
module endianness_converter(
    input clk,
    input signed [31:0] word,
    input endianness_in,
    input endianness_out,
    output reg [31:0] converted_word
);

always @(posedge clk) begin
    // case1 - alr in right format - pass thru unchanged
    if (endianness_in == endianness_out) begin
        converted_word <= word; 
        
    end else begin
        // case2 - end_in != end_out --> reverse the 4 bytes 
        converted_word <= {word[7:0], word[15:8], word[23:16], word[31:24]};
        
    end

end

endmodule