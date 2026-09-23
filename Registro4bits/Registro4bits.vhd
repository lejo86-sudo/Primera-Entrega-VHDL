library IEEE;
use IEEE.std_logic_1164.all;

entity Registro4bits is
    port (
        Clock   : in std_logic;
        Reset   : in std_logic;
        EN      : in std_logic;
        Reg_In  : in std_logic_vector(3 downto 0);
        Reg_Out : out std_logic_vector(3 downto 0)
    );
end entity;

architecture arq_Registro of Registro4bits is
begin
    Reg_Proc: process (Clock, Reset)
    begin
        if (Reset = '0') then
            Reg_Out <= "0000";
        elsif (Clock'event and Clock = '1') then
            if (EN = '1') then
                Reg_Out <= Reg_In;
            end if;
        end if;
    end process;
end architecture;