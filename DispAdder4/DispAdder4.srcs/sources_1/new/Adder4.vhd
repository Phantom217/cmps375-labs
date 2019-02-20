--------------------------------------------------------------------------------
-- Description: 4-bit Full Adder
-- Program-ID: Adder4.vhd
-- Author: -- Pao-er House - Phuc Nguyen, Hannah Guilbeau, Douglas Goss, Phuc Nguyen, Christopher Oalman
-- Package: Xilinx Nexys4 DDR Board
-- Device: Artix-7 FPGA (XC7A100TCSG324-1)
-- Software: Vivado Design Suite
-- Notes:
-- 1. COMPONENT: 1-bit full adder (Adder1.vhd)
-- 2. It can be any sizes of full adders
-- GENERIC(CONSTANT N: INTEGER := 4);
--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Adder4 IS
 GENERIC(CONSTANT N: INTEGER := 4);
 PORT(
 a: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0); -- Input a[3..0]
 b: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0); -- Input b[3..0]
 cOut: OUT STD_LOGIC; -- Output cCout
 sum: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) -- Output sum[3..0]
 );
END Adder4;
ARCHITECTURE behavioral OF Adder4 IS
 COMPONENT Adder1
 PORT(
 a, b, cIn : IN STD_LOGIC;
 cOut, sum : OUT STD_LOGIC);
 END COMPONENT;
--SIGNAL carry_sig: STD_LOGIC_VECTOR(N DOWNTO 0);
SIGNAL c : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
BEGIN

c(0) <= '0';
adder : for i in 0 to N-1 generate

    ls_bit : if i = 0 generate
        ls_cell : Adder1 port map ( A(i), B(i), c(i), c(i+1), sum(i));
    end generate ls_bit;

    mid_bit : if i > 0 and i < N-1 generate
        mid_cell : Adder1 port map ( A(i), B(i), c(i), c(i+1), sum(i));
    end generate mid_bit;

    ms_bit : if i = N-1 generate
        ms_cell : Adder1 port map ( A(i), B(i), c(i), cOut, sum(i));
   end generate ms_bit;

end generate adder;

--carry_sig(0) <= '0';
--	cell1 : Adder1 
--		port map(a(0), b(0), carry_sig(0), carry_sig(1),sum(0));
		
--	cell2 : Adder1 
--				port map(a(1), b(1), carry_sig(1), carry_sig(2), sum(1));
				
--    cell3 : Adder1 
--				port map(a(2), b(2), carry_sig(2), carry_sig(3), sum(2));
						
--	cell4 : Adder1  
--		   		port map(a(3), b(3), carry_sig(3), cOut,sum(3));
END behavioral;