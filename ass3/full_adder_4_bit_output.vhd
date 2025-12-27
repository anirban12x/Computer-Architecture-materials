--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:28:24 02/20/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123012/full_adder_4_bit/full_adder_4_bit_output.vhd
-- Project Name:  full_adder_4_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_4_bit
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
 
ENTITY full_adder_4_bit_output IS
END full_adder_4_bit_output;
 
ARCHITECTURE behavior OF full_adder_4_bit_output IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_4_bit
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         z : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal c : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_4_bit PORT MAP (
          x => x,
          y => y,
          z => z,
          s => s,
          c => c
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      x<="0101";
		y<="1010";
		z<='1';
		wait for 1 ps;
		x<="0110";
		y<="1001";
		z<='0';
		wait for 1 ps;
		x<="0110";
		y<="1001";
		z<='1';
		wait for 1 ps;
		x<="0101";
		y<="1010";
		z<='0';
		wait for 1 ps;
   end process;

END;
