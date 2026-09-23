LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DivisorFrecuencia IS
    PORT ( 
        clk     : IN STD_LOGIC;
        Sel_Vel : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- Nombre corregido
        out1    : BUFFER STD_LOGIC
    );
END DivisorFrecuencia;

ARCHITECTURE hw_real OF DivisorFrecuencia IS
    SIGNAL count1    : INTEGER RANGE 0 TO 50000000 := 0;
    SIGNAL max_count : INTEGER RANGE 0 TO 50000000 := 25000000;
BEGIN
    PROCESS(Sel_Vel)
    BEGIN
        CASE Sel_Vel IS
            WHEN "00" => max_count <= 25000000;
            WHEN "01" => max_count <= 12500000;
            WHEN "10" => max_count <= 6250000;
            WHEN "11" => max_count <= 3125000;
            WHEN OTHERS => max_count <= 25000000;
        END CASE;
    END PROCESS;

    PROCESS (clk)
    BEGIN
        IF RISING_EDGE(clk) THEN
            count1 <= count1 + 1;
            IF (count1 >= max_count) THEN
                out1 <= NOT out1;
                count1 <= 0;
            END IF;
        END IF;
    END PROCESS;
END hw_real;