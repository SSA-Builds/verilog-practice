module waveform_test;

    reg a, b;
    wire y;

    assign y = a & b;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, waveform_test);

        a = 0; b = 0;
        #10 a = 1;
        #10 b = 1;
        #10 a = 0;
        #10 b = 0;

        #10 $finish;
    end

endmodule