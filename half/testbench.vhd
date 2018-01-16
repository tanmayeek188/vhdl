--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:56:25 01/09/2018
-- Design Name:   
-- Module Name:   /home/supratik/Courses/cs254/XilinxISE/examples/cs254_2/cs254_2_ex2.vhd
-- Project Name:  cs254_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cs254_lab2_ex2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT wtree
    PORT(
         a : IN  STD_LOGIC_VECTOR(2 downto 0);
         b : IN  STD_LOGIC_VECTOR(2 downto 0);
         s : OUT  STD_LOGIC_VECTOR(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal myin1 : std_logic_vector(2 downto 0) := "100";
   signal myin2 : std_logic_vector(2 downto 0) := "111";

 	--Outputs
   signal s : STD_LOGIC_VECTOR(5 downto 0) := "000000";
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   my_fav_name: wtree PORT MAP (
          a => myin1,
          b => myin2,
          s => s
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
      	
		myin2 <= "000";
	wait for 20 ns;
		myin2 <= "001";	
	wait for 20 ns;
		myin2 <= "010";
	wait for 20 ns;
		myin2 <= "011";
	wait for 20 ns;
		myin2 <= "100";
	wait for 20 ns;
		myin2 <= "101";
	wait for 20 ns;
		myin2 <= "110";
	wait for 20 ns;
		myin2 <= "111";
	wait;
   end process;

END;