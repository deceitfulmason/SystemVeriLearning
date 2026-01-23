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