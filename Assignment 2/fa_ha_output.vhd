--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:46:20 02/20/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123012/fa_ha/fa_ha_output.vhd
-- Project Name:  fa_ha
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fa_ha
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
 
ENTITY fa_ha_output IS
END fa_ha_output;
 
ARCHITECTURE behavior OF fa_ha_output IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa_ha
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C_IN : IN  std_logic;
         C_OUT : OUT  std_logic;
         SUM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C_IN : std_logic := '0';

 	--Outputs
   signal C_OUT : std_logic;
   signal SUM : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_ha PORT MAP (
          A => A,
          B => B,
          C_IN => C_IN,
          C_OUT => C_OUT,
          SUM => SUM
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<='0'; B<='0'; C_IN<='0';
		wait for 1 ps;
		A<='0'; B<='0'; C_IN<='1';
		wait for 1 ps;
		A<='0'; B<='1'; C_IN<='0';
		wait for 1 ps;
		A<='0'; B<='1'; C_IN<='1';
		wait for 1 ps;
		A<='1'; B<='0'; C_IN<='0';
		wait for 1 ps;
		A<='1'; B<='0'; C_IN<='1';
		wait for 1 ps;
		A<='1'; B<='1'; C_IN<='0';
		wait for 1 ps;
		A<='1'; B<='1'; C_IN<='1';
		wait for 1 ps;
   end process;

END;
