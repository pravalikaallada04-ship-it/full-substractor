```verilog
// Testbench for Full Subtractor

module full_subtractor_tb;

    reg A;
    reg B;
    reg Bin;

    wire Difference;
    wire Bout;

    // Instantiate the Full Subtractor
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Difference(Difference),
        .Bout(Bout)
    );

    initial begin

        $display("A B Bin | Difference Borrow");
        $display("---------------------------");

        // Test case 1
        A = 0; B = 0; Bin = 0;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 2
        A = 0; B = 0; Bin = 1;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 3
        A = 0; B = 1; Bin = 0;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 4
        A = 0; B = 1; Bin = 1;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 5
        A = 1; B = 0; Bin = 0;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 6
        A = 1; B = 0; Bin = 1;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 7
        A = 1; B = 1; Bin = 0;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        // Test case 8
        A = 1; B = 1; Bin = 1;
        #10;
        $display("%b %b  %b  |     %b        %b",
                 A, B, Bin, Difference, Bout);

        $finish;

    end

endmodule
```
