library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ControladorFrecuencia is
    port (
        Clock      : in std_logic;
        Reset      : in std_logic;
        SW_Modo    : in std_logic_vector(1 downto 0);
        pulse_up   : in std_logic;
        pulse_down : in std_logic;
        
        -- Salidas
        frec_int   : buffer std_logic; -- Va al LED 0
        reg_frec   : out std_logic_vector(3 downto 0) -- Va a la pantalla
    );
end entity;

architecture rtl of ControladorFrecuencia is
    component DivisorFrecuencia is port ( clk : in std_logic; Sel_Vel : in std_logic_vector(1 downto 0); out1 : buffer std_logic ); end component;
    component Contador4bits is port ( Clock, Reset, EN : in std_logic; CNT : out std_logic_vector(3 downto 0) ); end component;
    component Registro4bits is port ( Clock, Reset, EN : in std_logic; Reg_In : in std_logic_vector(3 downto 0); Reg_Out : out std_logic_vector(3 downto 0) ); end component;

    signal vel_state : integer range 0 to 3 := 0;
    signal frec_int_last, pulse_frec : std_logic := '0';
    signal cnt_frec : std_logic_vector(3 downto 0);
begin

    process(Clock, Reset) begin
        if Reset = '0' then 
            vel_state <= 0; frec_int_last <= '0';
        elsif rising_edge(Clock) then
            if pulse_up = '1' and vel_state < 3 then vel_state <= vel_state + 1; 
            elsif pulse_down = '1' and vel_state > 0 then vel_state <= vel_state - 1; end if;
            frec_int_last <= frec_int;
        end if;
    end process;

    DIV_FREC: DivisorFrecuencia port map (clk => Clock, Sel_Vel => std_logic_vector(to_unsigned(vel_state, 2)), out1 => frec_int);
    
    pulse_frec <= '1' when (frec_int = '1' and frec_int_last = '0' and SW_Modo /= "11" and Reset = '1') else '0';

    C_FR: Contador4bits port map(Clock, Reset, pulse_frec, cnt_frec); 
    R_FR: Registro4bits port map(Clock, Reset, '1', cnt_frec, reg_frec);

end architecture;