library IEEE;
use IEEE.std_logic_1164.all;

entity Decodificador7Seg is
    port (
        BCD : in std_logic_vector(4 downto 0);
        SEG : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of Decodificador7Seg is
begin
    process(BCD)
    begin
        case BCD is
            when "00000" => SEG <= "1000000"; -- 0
            when "00001" => SEG <= "1111001"; -- 1
            when "00010" => SEG <= "0100100"; -- 2
            when "00011" => SEG <= "0110000"; -- 3
            when "00100" => SEG <= "0011001"; -- 4
            when "00101" => SEG <= "0010010"; -- 5 / S
            when "00110" => SEG <= "0000010"; -- 6
            when "00111" => SEG <= "1111000"; -- 7
            when "01000" => SEG <= "0000000"; -- 8
            when "01001" => SEG <= "0010000"; -- 9
            
            -- CARACTERES DE INTERFAZ
            when "01010" => SEG <= "0101111"; -- 10: 'r' (Rojo)
            when "01011" => SEG <= "1000001"; -- 11: 'V' / 'U' (Verde)
            when "01100" => SEG <= "0001000"; -- 12: 'A' (Azul)
            when "01101" => SEG <= "0000111"; -- 13: 't' (Total)
            when "01110" => SEG <= "0001100"; -- 14: 'P' (Pequeño)
            when "01111" => SEG <= "1000111"; -- 15: 'L' (Large)
            when "10000" => SEG <= "0111111"; -- 16: '-' (Guion)
            when "10001" => SEG <= "0100001"; -- 17: 'd' (Descarte)
            when "10010" => SEG <= "0000110"; -- 18: 'E'
            when "10011" => SEG <= "1000110"; -- 19: 'C'
            
            when others  => SEG <= "1111111"; -- Apagado
        end case;
    end process;
end architecture;