    module top (
        input  logic         CLK50,
        input  logic [17:0]  SW,
        input  logic  [3:0]  KEY,
        output logic [17:0]  LEDR,
        output logic [8:0]   LEDG,
        output logic [6:0]   HEX [7:0]
    );
    

    
    /*

    //FIRST QUESTION

    maioria maioria0 (
        .A(SW[0]),
        .B(SW[1]),
        .C(SW[2]),
        .X(SW[3]),
        .Y(LEDG[8])


    );
    */



    /*

    //SECOND QUESTION

        d7s display0 (
            .X(SW[3:0]),
            .EN(SW[17]),
            .Y(HEX[0])
        
        
        );


    */

    /*


    //THIRD QUESTION

    logic [3:0] enc_Y;
    logic [6:0] seg_hex;



    cod16_4 encoder(
            .X(SW[15:0]),
            .Y(enc_Y),
            .GATE(LEDR[8])

    );

    assign LEDR[3:0] = enc_Y;


    d7s display1 (
        .X  (enc_Y),
        .EN (LEDR[0]),      
        .Y  (seg_hex)
    );

    // assign HEX[0] = ~seg_hex; // if HEX doesn't work


*/

/*

    //FOURTH QUESTION

demux4_16 demux0(
    .X(SW[17]),
    .S(SW[3:0]),
    .Y(LEDR[15:0])
);

*/
   


/*
	
//FIFTH QUESTION


cnt_127361 counter(
    .CLK(SW[0]),
    .Y(LEDR[2:0])

);


*/



/*
//SIXTH QUESTION



div50M div(
    .CLK_IN(CLK50),
    .CLK_OUT(LEDR[0])


);
*/


    endmodule