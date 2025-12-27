--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:54:53 02/21/2025
-- Design Name:   
-- Module Name:   /home/nilanjan/Desktop/13000123012/full_subtractor_4_bit/full_subtractor_4_bit_output.vhd
-- Project Name:  full_subtractor_4_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_subtractor_4_bit_rtl
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
 
ENTITY full_subtractor_4_bit_output IS
END full_subtractor_4_bit_output;
 
ARCHITECTURE behavior OF full_subtractor_4_bit_output IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_subtractor_4_bit_rtl
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Z : IN  std_logic;
         D : OUT  std_logic_vector(3 downto 0);
         B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal Z : std_logic := '0';

 	--Outputs
   signal D : std_logic_vector(3 downto 0);
   signal B : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_subtractor_4_bit_rtl PORT MAP (
          X => X,
          Y => Y,
          Z => Z,
          D => D,
          B => B
        );
   -- Stimulus process
   stim_proc: process
   begin		
     X<="0110"; Y<="0011"; Z<='0';
	  wait for 1 ps;
	  X<="0001"; Y<="0010"; Z<='0';
	  wait for 1 ps;
	  X<="1111"; Y<="1111"; Z<='0';
	  wait for 1 ps;
	  X<="1000"; Y<="1000"; Z<='1';
	  wait for 1 ps;
   end process;
END;
