library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MultiplexorVistas is
    port (
        -- Switches de Control
        SW_Modo        : in std_logic_vector(1 downto 0);
        SW_Color       : in std_logic_vector(1 downto 0);
        SW_Tamano      : in std_logic;
        SW_Vista       : in std_logic_vector(1 downto 0);
        
        -- Memoria del Sistema
        last_color_reg : in std_logic_vector(1 downto 0);
        last_size_reg  : in std_logic;
        
        -- Tiempos y Frecuencia
        count_s_c      : in integer range 0 to 1;
        count_s_t      : in integer range 0 to 9;
        count_s_u      : in integer range 0 to 9;
        reg_frec       : in std_logic_vector(3 downto 0);
        
        -- Inventario de Colores (Los 9 registros modulares)
        reg_r_s, reg_r_g, reg_r_t : in std_logic_vector(3 downto 0);
        reg_v_s, reg_v_g, reg_v_t : in std_logic_vector(3 downto 0);
        reg_a_s, reg_a_g, reg_a_t : in std_logic_vector(3 downto 0);
        
        -- Totales Globales
        reg_tot_u, reg_tot_d      : in std_logic_vector(3 downto 0);
        
        -- Salidas hacia los decodificadores y LEDs decimales
        mux_hex3, mux_hex2, mux_hex1, mux_hex0 : out std_logic_vector(4 downto 0);
        DP3, DP2, DP1, DP0                     : out std_logic
    );
end entity;

architecture rtl of MultiplexorVistas is
begin
    process(SW_Modo, SW_Color, SW_Vista, SW_Tamano, last_color_reg, last_size_reg, count_s_c, count_s_t, count_s_u, reg_frec, reg_r_s, reg_r_g, reg_r_t, reg_v_s, reg_v_g, reg_v_t, reg_a_s, reg_a_g, reg_a_t, reg_tot_u, reg_tot_d)
    begin
        -- Inicialización anti-latches
        DP3 <= '1'; DP2 <= '1'; DP1 <= '1'; DP0 <= '1';
        mux_hex3 <= "11111"; mux_hex2 <= "11111"; mux_hex1 <= "11111"; mux_hex0 <= "11111"; 

        case SW_Modo is
            when "00" => 
                if SW_Vista(0) = '0' then
                    mux_hex3 <= "0" & reg_frec; mux_hex2 <= "0" & reg_a_t; mux_hex1 <= "0" & reg_v_t; mux_hex0 <= "0" & reg_r_t;
                else
                    mux_hex3 <= "0" & reg_tot_d; mux_hex2 <= "0" & reg_tot_u; 
                    if last_color_reg = "01" then mux_hex1 <= "01010"; elsif last_color_reg = "10" then mux_hex1 <= "01011"; elsif last_color_reg = "11" then mux_hex1 <= "01100"; else mux_hex1 <= "10000"; end if;
                    if last_color_reg /= "00" then
                        if last_size_reg = '0' then mux_hex0 <= "01110"; else mux_hex0 <= "01111"; end if;
                    else mux_hex0 <= "10000"; end if;
                end if;

            when "01" => 
                if SW_Vista = "11" then 
                    mux_hex3 <= "0" & std_logic_vector(to_unsigned(count_s_t, 4)); mux_hex2 <= "0" & std_logic_vector(to_unsigned(count_s_u, 4));
                    mux_hex1 <= "0" & reg_tot_d; mux_hex0 <= "0" & reg_tot_u;
                elsif SW_Color = "00" then
                    mux_hex3 <= "10000"; mux_hex2 <= "10000"; mux_hex1 <= "10000"; mux_hex0 <= "10000";
                else
                    if SW_Vista = "00" then      
                        mux_hex3 <= "0" & std_logic_vector(to_unsigned(count_s_c, 4)); mux_hex2 <= "0" & std_logic_vector(to_unsigned(count_s_t, 4)); mux_hex1 <= "0" & std_logic_vector(to_unsigned(count_s_u, 4));
                        if SW_Color = "01" then mux_hex0 <= "0" & reg_r_t; DP3 <= '0'; elsif SW_Color = "10" then mux_hex0 <= "0" & reg_v_t; DP2 <= '0'; elsif SW_Color = "11" then mux_hex0 <= "0" & reg_a_t; DP1 <= '0'; end if;
                    elsif SW_Vista = "01" then   
                        mux_hex2 <= "01110"; mux_hex1 <= "10000"; DP0 <= '0';
                        if SW_Color = "01" then mux_hex3 <= "01010"; mux_hex0 <= "0" & reg_r_s; elsif SW_Color = "10" then mux_hex3 <= "01011"; mux_hex0 <= "0" & reg_v_s; elsif SW_Color = "11" then mux_hex3 <= "01100"; mux_hex0 <= "0" & reg_a_s; end if;
                    elsif SW_Vista = "10" then   
                        mux_hex2 <= "01111"; mux_hex1 <= "10000"; DP0 <= '0';
                        if SW_Color = "01" then mux_hex3 <= "01010"; mux_hex0 <= "0" & reg_r_g; elsif SW_Color = "10" then mux_hex3 <= "01011"; mux_hex0 <= "0" & reg_v_g; elsif SW_Color = "11" then mux_hex3 <= "01100"; mux_hex0 <= "0" & reg_a_g; end if;
                    end if;
                end if;

            when "10" => 
                mux_hex1 <= "10000"; 
                if SW_Color = "01" then
                    mux_hex3 <= "01010"; if SW_Tamano = '0' then mux_hex2 <= "01110"; mux_hex0 <= "0" & reg_r_s; else mux_hex2 <= "01111"; mux_hex0 <= "0" & reg_r_g; end if;
                elsif SW_Color = "10" then
                    mux_hex3 <= "01011"; if SW_Tamano = '0' then mux_hex2 <= "01110"; mux_hex0 <= "0" & reg_v_s; else mux_hex2 <= "01111"; mux_hex0 <= "0" & reg_v_g; end if;
                elsif SW_Color = "11" then
                    mux_hex3 <= "01100"; if SW_Tamano = '0' then mux_hex2 <= "01110"; mux_hex0 <= "0" & reg_a_s; else mux_hex2 <= "01111"; mux_hex0 <= "0" & reg_a_g; end if;
                else
                    mux_hex3 <= "10001"; mux_hex2 <= "10010"; mux_hex1 <= "00101"; mux_hex0 <= "10011";
                end if;

            when "11" => 
                mux_hex3 <= "01110"; mux_hex2 <= "01100"; mux_hex1 <= "01011"; mux_hex0 <= "00101";
                
            when others => null;
        end case;
    end process;
end architecture;