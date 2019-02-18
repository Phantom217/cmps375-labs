LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DispAdder4 IS
    PORT
    (
        a   : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);     -- Input    SW[7..4]  : a[3..0]
        b   : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);     -- Input    SW[3..0]  : b[3..0]
        led : OUT STD_LOGIC;                        -- Output   LED[16]   : cOut
        an  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);     -- Output   AN[7..0]  : '0' enabled
        hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)      -- Output   HEX[6..0] : sum[3..0]
    );
END DispAdder4;

ARCHITECTURE behavioral OF DispAdder4 IS
    COMPONENT Adder4    -- 4-bit full adder (Adder4.vhd)
        PORT
        (
            a    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            b    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            cOut : OUT STD_LOGIC;
            sum  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Bin2Hex   -- 4-bit binary inputs to 7-segment hex display (Bin2Hex.vhd)
        PORT
        (
            bin : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL carry_sig : STD_LOGIC;
    SIGNAL sum_sig   : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL hex_sig   : STD_LOGIC_VECTOR(6 DOWNTO 0);
BEGIN

    -- write code here

END behavioral;
