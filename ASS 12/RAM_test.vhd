--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:02:05 04/11/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123025/RAM/RAM_test.vhd
-- Project Name:  RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_rtl
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
 
ENTITY RAM_test IS
END RAM_test;
 
ARCHITECTURE behavior OF RAM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_rtl
    PORT(
         Address : IN  std_logic_vector(6 downto 0);
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         write_en : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(6 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal write_en : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_rtl PORT MAP (
          Address => Address,
          data_in => data_in,
          data_out => data_out,
          clk => clk,
          write_en => write_en
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
      wait for 4 ps;
		
		write_en<='1';
		Address<="0000001";
		data_in<="10101010";
		wait for clk_period;
		
		Address<="0000010";
		data_in<="10101010";
		wait for clk_period;
		
		write_en<='0';
		Address<="0000001";
		wait for clk_period;
		
		write_en<='0';
		Address<="0000010";
		wait for clk_period;
   end process;

END;
