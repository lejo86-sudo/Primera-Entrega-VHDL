library IEEE;
use IEEE.std_logic_1164.all;

entity BancoColor is
    port (
        Clock        : in std_logic;
        Reset        : in std_logic;
        
        -- Entradas de control
        Pulse_In     : in std_logic; -- Pulso limpio que viene del botón
        Tamano_In    : in std_logic; -- 0: Pequeño, 1: Grande
        
        -- Salidas de memoria hacia las pantallas
        Reg_Pequenas : out std_logic_vector(3 downto 0);
        Reg_Grandes  : out std_logic_vector(3 downto 0);
        Reg_Total    : out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of BancoColor is
    component Contador4bits is port (Clock, Reset, EN : in std_logic; CNT : out std_logic_vector(3 downto 0)); end component;
    component Registro4bits is port (Clock, Reset, EN : in std_logic; Reg_In : in std_logic_vector(3 downto 0); Reg_Out : out std_logic_vector(3 downto 0)); end component;

    signal p_peq, p_gra, p_tot : std_logic;
    signal cnt_p, cnt_g, cnt_t : std_logic_vector(3 downto 0);
begin
    -- 1. Enrutador interno (Decide si suma a pequeñas o grandes)
    p_peq <= Pulse_In when Tamano_In = '0' else '0';
    p_gra <= Pulse_In when Tamano_In = '1' else '0';
    p_tot <= p_peq or p_gra;

    -- 2. Hardware de Conteo y Memoria encapsulado
    C_P: Contador4bits port map(Clock, Reset, p_peq, cnt_p);
    R_P: Registro4bits port map(Clock, Reset, '1', cnt_p, Reg_Pequenas);
    
    C_G: Contador4bits port map(Clock, Reset, p_gra, cnt_g);
    R_G: Registro4bits port map(Clock, Reset, '1', cnt_g, Reg_Grandes);
    
    C_T: Contador4bits port map(Clock, Reset, p_tot, cnt_t);
    R_T: Registro4bits port map(Clock, Reset, '1', cnt_t, Reg_Total);
end architecture;