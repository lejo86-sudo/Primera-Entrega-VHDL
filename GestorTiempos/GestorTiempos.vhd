library IEEE;
use IEEE.std_logic_1164.all;

entity GestorTiempos is
    port (
        Clock       : in std_logic;
        Reset       : in std_logic;
        SW_Modo     : in std_logic_vector(1 downto 0);
        
        -- Salidas hacia el sistema maestro
        tick_10ms   : out std_logic;
        count_s_c   : out integer range 0 to 1;
        count_s_t   : out integer range 0 to 9;
        count_s_u   : out integer range 0 to 9
    );
end entity;

architecture rtl of GestorTiempos is
    -- Señales exclusivas de este bloque
    signal div_10ms : integer range 0 to 500000 := 0;
    signal div_1hz  : integer range 0 to 50000000 := 0;
    signal tick_1hz : std_logic := '0';
    
    signal c_c : integer range 0 to 1 := 0;
    signal c_t, c_u : integer range 0 to 9 := 0;
    signal t_10ms : std_logic := '0';
begin
    -- 1. Generador de Relojes
    process(Clock) begin
        if rising_edge(Clock) then
            if div_10ms = 500000 then div_10ms <= 0; t_10ms <= '1'; else div_10ms <= div_10ms + 1; t_10ms <= '0'; end if;
            if div_1hz = 50000000 then div_1hz <= 0; tick_1hz <= '1'; else div_1hz <= div_1hz + 1; tick_1hz <= '0'; end if;
        end if;
    end process;

    -- 2. Cronómetro Global
    process(Clock, Reset) begin
        if Reset = '0' then c_u <= 0; c_t <= 0; c_c <= 0;
        elsif rising_edge(Clock) then
            if tick_1hz = '1' and SW_Modo /= "11" then
                if c_c = 1 and c_t = 8 and c_u = 0 then null;
                else
                    if c_u = 9 then c_u <= 0; if c_t = 9 then c_t <= 0; c_c <= 1; else c_t <= c_t + 1; end if;
                    else c_u <= c_u + 1; end if;
                end if;
            end if;
        end if;
    end process;

    -- Asignación a los puertos de salida
    tick_10ms <= t_10ms;
    count_s_c <= c_c;
    count_s_t <= c_t;
    count_s_u <= c_u;
end architecture;