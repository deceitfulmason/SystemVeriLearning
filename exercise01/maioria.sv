module maioria (
    logic output Y
    logic input A, B, C, X
);

logic ACX, ABX, BCX;

and and0 (ACX, A, C, X);
and and1 (ABX, A, B, X);
and and2 (BCX, B, C, X);
or or0 (Y, ACX, ABX, BCX);

endmodule