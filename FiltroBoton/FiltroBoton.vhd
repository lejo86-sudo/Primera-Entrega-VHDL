library IEEE;
use IEEE.std_logic_1164.all;

entity FiltroBoton is
    port (
        Clock      : in std_logic;
        Reset      : in std_logic;
        tick_10ms  : in std_logic;
        BTN_In     : in std_logic;
        Pulse_Out  : out std_logic
    );
end entity;

architecture rtl of FiltroBoton is
    signal sync : std_logic_vector(1 downto 0) := "00";
    signal stable, last_stable : std_logic := '0';
begin
    process(Clock, Reset)
    begin
        if Reset = '0' then
            sync <= "00";
            stable <= '0';
            last_stable <= '0';
        elsif rising_edge(Clock) then
            sync(0) <= not BTN_In;
            sync(1) <= sync(0);
            if tick_10ms = '1' then
                stable <= sync(1);
            end if;
            last_stable <= stable;
        end if;
    end process;

    Pulse_Out <= '1' when (stable = '1' and last_stable = '0') else '0';

end architecture;