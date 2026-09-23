library IEEE;
use IEEE.std_logic_1164.all;

entity SystemAlfa is
    port (
        Clock         : in std_logic;
        Reset         : in std_logic;
        SW_Modo       : in std_logic_vector(1 downto 0); 
        SW_Color      : in std_logic_vector(1 downto 0);
        SW_Tamano     : in std_logic; 
        BTN_Contar    : in std_logic;
        SW_Vista      : in std_logic_vector(1 downto 0); 
        HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(6 downto 0);
        DP0, DP1, DP2, DP3     : out std_logic;
        LEDG          : out std_logic_vector(9 downto 0);
        BTN_FrecUp    : in std_logic;
        BTN_FrecDown  : in std_logic
    );
end entity;

architecture Estructural of SystemAlfa is

    -- =========================================================================
    -- DECLARACIÓN DE COMPONENTES
    -- =========================================================================
    component Contador4bits is port ( Clock, Reset, EN : in std_logic; CNT : out std_logic_vector(3 downto 0) ); end component;
    component Registro4bits is port ( Clock, Reset, EN : in std_logic; Reg_In : in std_logic_vector(3 downto 0); Reg_Out : out std_logic_vector(3 downto 0) ); end component;
    component Decodificador7Seg is port ( BCD : in std_logic_vector(4 downto 0); SEG : out std_logic_vector(6 downto 0) ); end component;
    
    component GestorTiempos is port ( Clock, Reset : in std_logic; SW_Modo : in std_logic_vector(1 downto 0); tick_10ms : out std_logic; count_s_c : out integer range 0 to 1; count_s_t, count_s_u : out integer range 0 to 9 ); end component;
    component BancoColor is port ( Clock, Reset, Pulse_In, Tamano_In : in std_logic; Reg_Pequenas, Reg_Grandes, Reg_Total : out std_logic_vector(3 downto 0) ); end component;
    component FiltroBoton is port ( Clock, Reset, tick_10ms, BTN_In : in std_logic; Pulse_Out : out std_logic ); end component;
    component ControladorFrecuencia is port ( Clock, Reset : in std_logic; SW_Modo : in std_logic_vector(1 downto 0); pulse_up, pulse_down : in std_logic; frec_int : out std_logic; reg_frec : out std_logic_vector(3 downto 0) ); end component;
    component MultiplexorVistas is port ( SW_Modo, SW_Color, SW_Vista : in std_logic_vector(1 downto 0); SW_Tamano : in std_logic; last_color_reg : in std_logic_vector(1 downto 0); last_size_reg : in std_logic; count_s_c : in integer range 0 to 1; count_s_t, count_s_u : in integer range 0 to 9; reg_frec : in std_logic_vector(3 downto 0); reg_r_s, reg_r_g, reg_r_t, reg_v_s, reg_v_g, reg_v_t, reg_a_s, reg_a_g, reg_a_t, reg_tot_u, reg_tot_d : in std_logic_vector(3 downto 0); mux_hex3, mux_hex2, mux_hex1, mux_hex0 : out std_logic_vector(4 downto 0); DP3, DP2, DP1, DP0 : out std_logic ); end component;
    
    -- Los dos componentes nuevos
    component ControladorLEDs is port ( Reset : in std_logic; SW_Modo, SW_Color : in std_logic_vector(1 downto 0); SW_Tamano, frec_int : in std_logic; LEDG : out std_logic_vector(9 downto 0) ); end component;
    component EnrutadorCentral is port ( Clock, Reset, pulse_btn : in std_logic; SW_Color : in std_logic_vector(1 downto 0); SW_Tamano : in std_logic; cnt_tot_u : in std_logic_vector(3 downto 0); pulse_r, pulse_v, pulse_a, pulse_tot, pulse_tot_d : out std_logic; last_color_reg : out std_logic_vector(1 downto 0); last_size_reg : out std_logic ); end component;

    -- =========================================================================
    -- CABLES DE LA PLACA BASE
    -- =========================================================================
    signal tick_10ms : std_logic;
    signal count_s_c : integer range 0 to 1;
    signal count_s_t, count_s_u : integer range 0 to 9;
    signal raw_pulse_btn, raw_pulse_up, raw_pulse_down : std_logic;
    signal pulse_btn, pulse_up, pulse_down : std_logic;
    signal frec_int : std_logic;
    signal reg_frec : std_logic_vector(3 downto 0);
    signal pulse_r, pulse_v, pulse_a, pulse_tot, pulse_tot_d : std_logic;
    signal last_color_reg : std_logic_vector(1 downto 0);
    signal last_size_reg  : std_logic;
    signal reg_r_s, reg_r_g, reg_r_t, reg_v_s, reg_v_g, reg_v_t, reg_a_s, reg_a_g, reg_a_t : std_logic_vector(3 downto 0);
    signal cnt_tot_u, reg_tot_u, cnt_tot_d, reg_tot_d : std_logic_vector(3 downto 0);
    signal mux_hex3, mux_hex2, mux_hex1, mux_hex0 : std_logic_vector(4 downto 0);

begin

    -- 1. RELOJES Y ANTIRREBOTE
    MODULO_TIEMPOS: GestorTiempos port map (Clock, Reset, SW_Modo, tick_10ms, count_s_c, count_s_t, count_s_u);
    BOTON_PIEZAS:   FiltroBoton   port map (Clock, Reset, tick_10ms, BTN_Contar, raw_pulse_btn);
    BOTON_MAS:      FiltroBoton   port map (Clock, Reset, tick_10ms, BTN_FrecUp, raw_pulse_up);
    BOTON_MENOS:    FiltroBoton   port map (Clock, Reset, tick_10ms, BTN_FrecDown, raw_pulse_down);

    pulse_btn  <= raw_pulse_btn  when SW_Modo = "00" else '0';
    pulse_up   <= raw_pulse_up   when SW_Modo /= "11" else '0';
    pulse_down <= raw_pulse_down when SW_Modo /= "11" else '0';

    -- 2. CONTROLADORES (Motor, LEDs y Logística)
    MODULO_FRECUENCIA: ControladorFrecuencia port map (Clock, Reset, SW_Modo, pulse_up, pulse_down, frec_int, reg_frec);
    MODULO_LEDS:       ControladorLEDs       port map (Reset, SW_Modo, SW_Color, SW_Tamano, frec_int, LEDG);
    MODULO_ENRUTADOR:  EnrutadorCentral      port map (Clock, Reset, pulse_btn, SW_Color, SW_Tamano, cnt_tot_u, pulse_r, pulse_v, pulse_a, pulse_tot, pulse_tot_d, last_color_reg, last_size_reg);

    -- 3. BANCOS DE INVENTARIO
    BANCO_ROJO:  BancoColor port map (Clock, Reset, pulse_r, SW_Tamano, reg_r_s, reg_r_g, reg_r_t);
    BANCO_VERDE: BancoColor port map (Clock, Reset, pulse_v, SW_Tamano, reg_v_s, reg_v_g, reg_v_t);
    BANCO_AZUL:  BancoColor port map (Clock, Reset, pulse_a, SW_Tamano, reg_a_s, reg_a_g, reg_a_t);
    C_TT_U: Contador4bits port map (Clock, Reset, pulse_tot, cnt_tot_u);   R_TT_U: Registro4bits port map (Clock, Reset, '1', cnt_tot_u, reg_tot_u);
    C_TT_D: Contador4bits port map (Clock, Reset, pulse_tot_d, cnt_tot_d); R_TT_D: Registro4bits port map (Clock, Reset, '1', cnt_tot_d, reg_tot_d);

    -- 4. PANTALLAS
    MODULO_VISTAS: MultiplexorVistas port map (SW_Modo, SW_Color, SW_Vista, SW_Tamano, last_color_reg, last_size_reg, count_s_c, count_s_t, count_s_u, reg_frec, reg_r_s, reg_r_g, reg_r_t, reg_v_s, reg_v_g, reg_v_t, reg_a_s, reg_a_g, reg_a_t, reg_tot_u, reg_tot_d, mux_hex3, mux_hex2, mux_hex1, mux_hex0, DP3, DP2, DP1, DP0);
    DECO_3: Decodificador7Seg port map (mux_hex3, HEX3);
    DECO_2: Decodificador7Seg port map (mux_hex2, HEX2);
    DECO_1: Decodificador7Seg port map (mux_hex1, HEX1);
    DECO_0: Decodificador7Seg port map (mux_hex0, HEX0);

end architecture;