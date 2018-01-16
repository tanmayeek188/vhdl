----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:10 01/16/2018 
-- Design Name: 
-- Module Name:    five-adder - Behavioral 
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

entity fiveadder is
    Port ( a1 : in  STD_LOGIC_VECTOR (4 downto 0);
           b1 : in  STD_LOGIC_VECTOR (4 downto 0);
           c1 : out  STD_LOGIC_VECTOR (5 downto 0));
end fiveadder;

architecture Behavioral of fiveadder is
Component half
port (x,y:in std_logic;
sum, carry:out std_logic);
end component;

Component full
port (x,y,z:in std_logic;
sum, carry:out std_logic);
end component;
signal r1,r2,r3,r4: std_logic;
begin
	H1: half port map(a1(0),b1(0),c1(0),r1);
	H2: full port map(a1(1),b1(1),r1,c1(1),r2);
	H3: full port map(a1(2),b1(2),r2,c1(2),r3);
	H4: full port map(a1(3),b1(3),r3,c1(3),r4);
	H5: full port map(a1(4),b1(4),r4,c1(4),c1(5));
	

end Behavioral;

