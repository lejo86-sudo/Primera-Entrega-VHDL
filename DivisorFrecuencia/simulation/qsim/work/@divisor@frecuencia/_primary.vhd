library verilog;
use verilog.vl_types.all;
entity DivisorFrecuencia is
    port(
        clk             : in     vl_logic;
        out1            : out    vl_logic;
        out2            : out    vl_logic
    );
end DivisorFrecuencia;
