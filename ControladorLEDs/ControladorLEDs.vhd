library IEEE;
use IEEE.std_logic_1164.all;

entity ControladorLEDs is
    port (
        Reset     : in std_logic;
        SW_Modo   : in std_logic_vector(1 downto 0);
        SW_Color  : in std_logic_vector(1 downto 0);
        SW_Tamano : in std_logic;
        frec_int  : in std_logic;
        LEDG      : out std_logic_vector(9 downto 0)
    );
end entity;

architecture rtl of ControladorLEDs is
begin
    process(SW_Modo, frec_int, SW_Color, SW_Tamano, Reset)
    begin
        LEDG <= (others => '0'); 
        if Reset = '1' and SW_Modo /= "11" then 
            LEDG(0) <= frec_int; 
        end if;

        if SW_Modo = "10" then
            if SW_Color = "01" then 
                if SW_Tamano = '0' then LEDG(1) <= '1'; else LEDG(2) <= '1'; end if;
            elsif SW_Color = "10" then 
                if SW_Tamano = '0' then LEDG(3) <= '1'; else LEDG(4) <= '1'; end if;
            elsif SW_Color = "11" then 
                if SW_Tamano = '0' then LEDG(5) <= '1'; else LEDG(6) <= '1'; end if;
            else 
                LEDG(9) <= '1'; 
            end if; 
        end if;
    end process;
end architecture;