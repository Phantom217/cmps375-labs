-------------------------------------------------------------------------------- 
-- Description:   4-bit Full Adder 
-- Program-ID:    Adder4.vhd 
-- Author:         -- Add your team's and members' names as Authors Here 
-- Package:       Xilinx Nexys4 DDR Board  
-- Device:        Artix-7 FPGA (XC7A100TCSG324-1)  
-- Software:      Vivado Design Suite 
-- Notes:       
-- 1. COMPONENT: 1-bit full adder (Adder1.vhd) 
-- 2. It can be any sizes of full adders 
--       GENERIC(CONSTANT N:       INTEGER := 4);  
-------------------------------------------------------------------------------- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Adder4 IS
    GENERIC(CONSTANT N:     INTEGER := 4);
    Port
    (
        A :    IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0); -- Input      A[3..0]
        B :    IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0); -- Input      B[3..0]
        cIn :  IN  STD_LOGIC;                       -- Inout      cIn
        S :    OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0); -- Output     S[3..0]
        cOut : OUT STD_LOGIC                        -- Output     cOut

    );
END Adder4;

ARCHITECTURE behavioral OF Adder4 IS
    COMPONENT Adder1
        Port
        (
            A, B, cIn : IN STD_LOGIC;
            S, cOut : OUT STD_LOGIC
        );
    END COMPONENT;
SIGNAL c: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
BEGIN


adder : for i in 0 to N-1 generate

    ls_bit : if i = 0 generate
        ls_cell : Adder1 port map ( A(i), B(i), cIn, S(i), c(i+1));
    end generate ls_bit;

    mid_bit : if i > 0 and i < N-1 generate
        mid_cell : Adder1 port map ( A(i), B(i), c(i), S(i), c(i+1));
    end generate mid_bit;

    ms_bit : if i = N-1 generate
        ms_cell : Adder1 port map ( A(i), B(i), c(i), S(i), cOut);
   end generate ms_bit;

end generate adder;

END behavioral;
