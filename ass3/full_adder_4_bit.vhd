----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:37 02/20/2025 
-- Design Name: 
-- Module Name:    full_adder_4_bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_4_bit is
    Port ( x : in  std_logic_vector(3 downto 0);
           y : in  std_logic_vector(3 downto 0);
			  z : in  std_logic;
			  s : out  std_logic_vector(3 downto 0);
           c : out std_logic
	);
end full_adder_4_bit;

architecture Behavioral of full_adder_4_bit is
component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end component;
signal c1,c2,c3: std_logic:='0';
begin
FA0: full_adder port map(
	a=>x(0),
	b=>y(0),
	c_in=>z,
	sum=>s(0),
	c_out=>c1);
FA1: full_adder port map(
	a=>x(1),
	b=>y(1),
	c_in=>z,
	sum=>s(1),
	c_out=>c2);
FA2: full_adder port map(
	a=>x(2),
	b=>y(2),
	c_in=>z,
	sum=>s(2),
	c_out=>c3);
FA3: full_adder port map(
	a=>x(3),
	b=>y(3),
	c_in=>z,
	sum=>s(3),
	c_out=>c);
end Behavioral;

