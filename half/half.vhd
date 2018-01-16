----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:21 01/16/2018 
-- Design Name: 
-- Module Name:    half - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           sum  : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end half;

architecture Behavioral of half is

begin
	sum <= x xor y;
	carry <= x and y;

end Behavioral;
