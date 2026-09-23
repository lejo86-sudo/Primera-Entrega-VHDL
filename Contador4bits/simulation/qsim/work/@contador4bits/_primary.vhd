library verilog;
use verilog.vl_types.all;
entity Contador4bits is
    port(
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        EN              : in     vl_logic;
        CNT             : out    vl_logic_vector(3 downto 0)
    );
end Contador4bits;
