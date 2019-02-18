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
    hex : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)       -- 7-segment hex display 
  );
end Bin2Hex;

architecture Behavioral of Bin2Hex is
begin

process (bin)
BEGIN
    case bin is
        when "0000" => hex <= "0000001";  -- '0'
        when "0001" => hex <= "1001111";  -- '1'
        when "0010" => hex <= "0010010";  -- '2'
        when "0011" => hex <= "0000110";  -- '3'
        when "0100" => hex <= "1001100";  -- '4'
        when "0101" => hex <= "0100100";  -- '5'
        when "0110" => hex <= "0100000";  -- '6'
        when "0111" => hex <= "0001111";  -- '7'
        when "1000" => hex <= "0000000";  -- '8'
        when "1001" => hex <= "0000100";  -- '9'
        when "1010" => hex <= "0001000";  -- 'A'
        when "1011" => hex <= "1100000";  -- 'b'
        when "1100" => hex <= "0110001";  -- 'C'
        when "1101" => hex <= "1000010";  -- 'd'
        when "1110" => hex <= "0110000";  -- 'E'
        when "1111" => hex <= "0111000";  -- 'F'
        when others => NULL;
      
    end case;
end process;

end Behavioral;
