module d7s(
    input logic [3:0] X ,
    input logic [0] EN ,
    output logic [6:0] Y 

Y = 7'b0000000; //Sets starting value of Y as ALL SEGMENTS OFF

always_comb begin : 
                if (EN)
        begin 
                //When ENable is active, 7 segment display should mirror the input.
                case (X)
                4'h0 :
                        Y = 7'b0111111;  //Executes only when  X == 0
                4'h1 :
                        Y = 7'b0000110;  // Executes only when X == 1
                4'h2 :
                        Y = 7'b1011011;  // 2
                4'h3 :
                        Y = 7'b1001111;  // 3
                4'h4 :
                        Y = 7'b1100110;  // 4
                4'h5 :
                        Y = 7'b1101101;  // 5
                4'h6 :
                        Y = 7'b1111101;  // 6 
                4'h7:
                        Y = 7'b0000111;  // 7
                4'h8:
                        Y = 7'b1111111;  // 8
                4'h9:
                        Y = 7'b1101111;  // 9
                4'hA:
                        Y = 7'b1110111;  // A hexa = 10 decimal
                4'hB:
                        Y = 7'b1111100;  // B
                4'hC:
                        Y = 7'b0111001;  // C
                4'hD:
                        Y = 7'b1011110;  // D
                4'hE:
                        Y = 7'b1111001;  // E
                4'hF:
                        Y = 7'b1110001;  // F

        ends

        else begin



        end

end



/*
                4'h0: seg = 7'b0111111; // 0
                4'h1: seg = 7'b0000110; // 1
                4'h2: seg = 7'b1011011; // 2
                4'h3: seg = 7'b1001111; // 3
                4'h4: seg = 7'b1100110; // 4
                4'h5: seg = 7'b1101101; // 5
                4'h6: seg = 7'b1111101; // 6
                4'h7: seg = 7'b0000111; // 7
                4'h8: seg = 7'b1111111; // 8
                4'h9: seg = 7'b1101111; // 9
                4'hA: seg = 7'b1110111; // A
                4'hB: seg = 7'b1111100; // b
                4'hC: seg = 7'b0111001; // C
                4'hD: seg = 7'b1011110; // d
                4'hE: seg = 7'b1111001; // E
                4'hF: seg = 7'b1110001; // F
                default: seg = 7'b0000000;
*/