```verilog
// Full Subtractor
// Performs A - B - Bin

module full_subtractor (
    input  A,
    input  B,
    input Bin,
    output Difference,
    output Bout
);

    // Difference equation
    assign Difference = A ^ B ^ Bin;

    // Borrow output equation
    assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule
```
