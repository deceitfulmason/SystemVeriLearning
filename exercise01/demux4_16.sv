module demux4_16(

    input logic     X,
    input logic [3:0]   S,
    output logic [15:0] Y

);

always_comb begin 
    Y = 16'b0;  
     Y[S] = X; 
end

endmodule
