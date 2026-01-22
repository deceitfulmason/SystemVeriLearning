module top (
    input  logic         CLK50,
    input  logic [17:0]  SW,
    input  logic  [3:0]  KEY,
    output logic [17:0]  LEDR,
    output logic [8:0]   LEDG,
    output logic [6:0]   HEX [7:0]
);
 

 maioria maioria0 (
    .A, .B, .C, .X(SW[3:0]),
    .Y(LEDG[0])
 );

endmodule