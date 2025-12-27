--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:14:54 03/21/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123012/fourbit_comp/fourbitcomp_test.vhd
-- Project Name:  fourbit_comp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbitrtl
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
 
ENTITY fourbitcomp_test IS
END fourbitcomp_test;
 
ARCHITECTURE behavior OF fourbitcomp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbitrtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         A_gt_B : OUT  std_logic;
         A_lt_B : OUT  std_logic;
         A_eq_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal A_gt_B : std_logic;
   signal A_lt_B : std_logic;
   signal A_eq_B : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourbitrtl PORT MAP (
          A => A,
          B => B,
          A_gt_B => A_gt_B,
          A_lt_B => A_lt_B,
          A_eq_B => A_eq_B
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      
	  A<="0000"; B<="0000"; wait for 1 ps;
	  A<="0001"; B<="0000"; wait for 1 ps;
	  A<="0000"; B<="0001"; wait for 1 ps;
	  A<="0110"; B<="0011"; wait for 1 ps;
	  A<="1010"; B<="1100"; wait for 1 ps;
	  A<="1111"; B<="1111"; wait for 1 ps;
	  A<="1001"; B<="0110"; wait for 1 ps;
	  A<="0101"; B<="1010"; wait for 1 ps;
		
   end process;

END;
