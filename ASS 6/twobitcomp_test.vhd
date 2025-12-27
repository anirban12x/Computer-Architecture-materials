--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:43:16 03/21/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123012/comp/twobitcomp_test.vhd
-- Project Name:  comp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: twobit
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
 
ENTITY twobitcomp_test IS
END twobitcomp_test;
 
ARCHITECTURE behavior OF twobitcomp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT twobit
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         equal : OUT  std_logic;
         greater : OUT  std_logic;
         lesser : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal equal : std_logic;
   signal greater : std_logic;
   signal lesser : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: twobit PORT MAP (
          A => A,
          B => B,
          equal => equal,
          greater => greater,
          lesser => lesser
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
      A<="11";
		B<="10";
		Wait for 1 ps;
		A<="10";
		B<="10";
		Wait for 1 ps;
		A<="01";
		B<="10";
		Wait for 1 ps;
		
		
   end process;

END;
