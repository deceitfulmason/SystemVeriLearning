module cnt_127361(
    input logic CLK,
    output logic [2:0] Y    
);

always_ff @(posedge CLK) begin
    


    case(Y)

        default:
            Y <= 001;
        3'b000:
            Y <= 001;
        3'b001:
            Y <= 010;
        3'b010:
            Y <= 111;
        3'b111:
            Y <= 011;
        3'b011:
            Y <= 110;
        3'b110:
            Y <= 001;

        3'b101:
            Y <= 001
        3'b100:
            Y <= 001
        3'b110:
            Y <= 001
        





        end

endmodule