library verilog;
use verilog.vl_types.all;
entity Contador4bits_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        EN              : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Contador4bits_vlg_sample_tst;
