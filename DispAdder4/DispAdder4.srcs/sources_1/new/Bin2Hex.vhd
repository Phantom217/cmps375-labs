-------------------------------------------------------------------------------- 
-- Description:   Convert 4-bit binary to 7-segment hex display 
-- Program-ID:    Bin2Hex.vhd 
-- Author:         -- Add your team's and members' names as Authors Here 
-- Package:       Xilinx Nexys4 DDR Board  
-- Device:        Artix-7 FPGA (XC7A100TCSG324-1)  
-- Software:      Vivado Design Suite 
-- Note: 
-- 1. Position and index of each segment in a 7-sigment display: hex[6..0]  
--       0   
--      ---   
--    5|   |1 
--     | 6 | 
--      ---   
--    4|   |2 
--     | 3 | 
--      ---   
-- hex index   6  5  4  3  2  1  0                     
-- cathodes    CG CF CE CD CC CB CA ('0' light on, '1' light OFF)  
-- 2. Display hexadecimal value: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, b, C, d, E, F 
-------------------------------------------------------------------------------- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Bin2Hex is
  Port 
  (
    bin : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);      -- 4-digit binary inputs
    hex : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)      -- 7-segment hex display 
  );
end Bin2Hex;

architecture Behavioral of Bin2Hex is
begin

-- write code here

end Behavioral;
