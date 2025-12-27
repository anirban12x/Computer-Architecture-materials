--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:29:37 04/11/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123012/Up_down_counter/Up_Down_Counter_test.vhd
-- Project Name:  Up_down_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Up_Down_rtl
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
 
ENTITY Up_Down_Counter_test IS
END Up_Down_Counter_test;
 
ARCHITECTURE behavior OF Up_Down_Counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Up_Down_rtl
    PORT(
         up_down : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal up_down : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Up_Down_rtl PORT MAP (
          up_down => up_down,
          reset => reset,
          clk => clk,
          count => count
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset<='1';
		wait for 2 ps;
      Up_Down<='1';
		reset<='0';
		wait for 30 ps;
		Up_Down<='0';
		reset<='0';
		wait for 30 ps;
   end process;

END;
