--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:06:03 03/21/2025
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000123012/mux/mux_test.vhd
-- Project Name:  mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_rtl
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_rtl
    PORT(
         data : IN  std_logic_vector(7 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_rtl PORT MAP (
          data => data,
          sel => sel,
          output => output
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
    data<="10000011"; sel<="000";
	 wait for 1 ps;
	 data<="10000011"; sel<="001";
	 wait for 1 ps;
	 data<="10000011"; sel<="010";
	 wait for 1 ps;
	 data<="10000011"; sel<="011";
	 wait for 1 ps;
	 data<="10000011"; sel<="100";
	 wait for 1 ps;
	 data<="10000011"; sel<="101";
	 wait for 1 ps;
	 data<="10000011"; sel<="110";
	 wait for 1 ps;
	 data<="10000011"; sel<="111";
	 wait for 1 ps;
   end process;
END;
