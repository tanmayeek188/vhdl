----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:24 01/16/2018 
-- Design Name: 
-- Module Name:    final - Behavioral 
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

entity wtree is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           b : in  STD_LOGIC_VECTOR (2 downto 0);
           s : out  STD_LOGIC_VECTOR (5 downto 0));
end wtree;

architecture Behavioral of wtree is
Component half
port (x,y:in std_logic;
sum, carry:out std_logic);
end component;

Component fiveadder
port (a1,b1:in std_logic_vector(4 downto 0);
c1:out std_logic_vector(5 downto 0));
end component;

Component full
port (x,y,z:in std_logic;
sum, carry:out std_logic);
end component;
signal w0,w11,w12,w21,w22,w23,w33,w31,w32,w4: std_logic;
signal p2,p3,p4,q1,q2,q3,r1,r2: std_logic;
signal p,q: std_logic_vector(4 downto 0);
begin
w0 <= a(0) and b(0);
w11 <= a(0) and b(1);
w12 <= a(1) and b(0);
w21 <= a(0) and b(2);
w22 <= a(1) and b(1);
w23 <= a(2) and b(0);
w31 <= a(1) and b(2);
w32 <= a(2) and b(1);
w4 <= a(2) and b(2);

p(0) <= w0;
q(0) <= '0';
q(1) <= '0';
AA1: half port map(w11,w12,p(1),q(2));
AA2: full port map(w21,w22,w23,p(2),q(3));
AA3: half port map(w31,w32,p(3),q(4));
p(4) <= w4;

FF1: fiveadder port map(p,q,s);
end Behavioral;
