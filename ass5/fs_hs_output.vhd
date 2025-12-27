--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:06:37 02/21/2025
-- Design Name:   
-- Module Name:   /home/nilanjan/Desktop/13000123012/fs_hs/fs_hs_output.vhd
-- Project Name:  fs_hs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fs_hs_rtl
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
 
ENTITY fs_hs_output IS
END fs_hs_output;
 
ARCHITECTURE behavior OF fs_hs_output IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fs_hs_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         CIN : IN  std_logic;
         DIFFERENCE : OUT  std_logic;
         BORROW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal CIN : std_logic := '0';

 	--Outputs
   signal DIFFERENCE : std_logic;
   signal BORROW : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fs_hs_rtl PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          DIFFERENCE => DIFFERENCE,
          BORROW => BORROW
        );
   stim_proc: process
   begin		
		A<='0'; B<='0'; CIN<='0';
		wait for 1 ps;
		A<='0'; B<='0'; CIN<='1';
		wait for 1 ps;
		A<='0'; B<='1'; CIN<='0';
		wait for 1 ps;
		A<='0'; B<='1'; CIN<='1';
		wait for 1 ps;
		A<='1'; B<='0'; CIN<='0';
		wait for 1 ps;
		A<='1'; B<='0'; CIN<='1';
		wait for 1 ps;
		A<='1'; B<='1'; CIN<='0';
		wait for 1 ps;
		A<='1'; B<='1'; CIN<='1';
		wait for 1 ps;
   end process;

END;
