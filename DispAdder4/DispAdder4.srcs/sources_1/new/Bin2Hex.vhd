--------------------------------------------------------------------------------
-- Description: Convert 4-bit binary to 7-segment hex display
-- Program-ID: Bin2Hex.vhd
-- Author: -- Pao-er House - Phuc Nguyen, Hannah Guilbeau, Douglas Goss, Phuc Nguyen, Christopher Oalman
-- Package: Xilinx Nexys4 DDR Board
-- Device: Artix-7 FPGA (XC7A100TCSG324-1)
-- Software: Vivado Design Suite
-- Note:
-- 1. Position and index of each segment in a 7-sigment display: hex[6..0]
-- 0
-- ---
-- 5| |1
-- | 6 |
-- ---
-- 4| |2
-- | 3 |
-- ---
-- hex index 6 5 4 3 2 1 0
-- cathodes CG CF CE CD CC CB CA ('0' light on, '1' light OFF)
-- 2. Display hexadecimal value: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, b, C, d, E, F
--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Bin2Hex IS
 PORT(
    bin: IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- 4-bit binary inputs
    hex: OUT STD_LOGIC_VECTOR(6 DOWNTO 0) -- 7-segment hex display
 );
END Bin2Hex;
ARCHITECTURE behavioral OF Bin2Hex IS
BEGIN
    WITH bin SELECT hex  <= 
 				"1000000" when "0000", -- 0
     			"1111001" when "0001", -- 1
     			"0100100" when "0010", -- 2
     			"0110000" when "0011", -- 3
     			"0011001" when "0100", -- 4
     			"0010010" when "0101", -- 5
     			"0000010" when "0110", -- 6
     			"1111000" when "0111", -- 7
     			"0000000" when "1000", -- 8
     			"0010000" when "1001", -- 9
     			"0001000" when "1010", -- A
     			"0000011" when "1011", -- B
     			"1000110" when "1100", -- C
     			"0100001" when "1101", -- D
     			"0000110" when "1110", -- E
     			"0001110" when "1111", -- F
     			"1111110" when others; 
END behavioral;
