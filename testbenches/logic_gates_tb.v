module logic_gates_tb;

    reg a, b;
    wire y_and, y_or, y_not;

    logic_gates uut (
        .a(a),
        .b(b),
        .y_and(y_and),
        .y_or(y_or),
        .y_not(y_not)
    );

    initial begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, logic_gates_tb);

        $monitor("a=%b b=%b | AND=%b OR=%b NOT=%b",
                  a, b, y_and, y_or, y_not);

        a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;

        #10 $finish;
    end

endmodule