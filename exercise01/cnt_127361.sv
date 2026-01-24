module cnt_127361(
    input logic CLK,
    output logic [2:0] Y    
);

always_ff @(posedge CLK) begin
    


    case(Y)

        
        3'b000:
            Y <= 3'b001;
        3'b001:
            Y <= 3'b010;
        3'b010:
            Y <= 3'b111;
        3'b111:
            Y <= 3'b011;
        3'b011:
            Y <= 3'b110;
        3'b110:
            Y <= 3'b001;

        

        default:
            Y <= 3'b001;

    endcase



        end

endmodule

/*
5. Build a self-starting counter that implements the sequence 1-2-7-3-6-1.
a) The module should be called cnt_127361, have a CLK input with one bit, and an output
Y with 3 bits.
b) If it starts out of sequence, the counter should return to position 1.
c) To test, use KEY[0] as the clock, and the decoder from the first exercise to
display the number in hexadecimal.
*/