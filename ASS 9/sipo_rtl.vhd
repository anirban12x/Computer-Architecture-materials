----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:07 04/04/2025 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( Data : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Qi : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is

component d_ff is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end component;

signal Q1, Q2, Q3:STD_LOGIC:='0';

begin
	D1:d_ff port map(D=>Data,
		Reset=>Rst,
		Clk=>CLK,
		Q=>Q1);
		Qi(0)<=Q1;
		
	D2:d_ff port map(D=>Q1,
		Reset=>Rst,
		Clk=>CLK,
		Q=>Q2);
		Qi(1)<=Q2;
		
	D3:d_ff port map(D=>Q2,
		Reset=>Rst,
		Clk=>CLK,
		Q=>Q3);
		Qi(2)<=Q3;
		
	D4:d_ff port map(D=>Q3,
		Reset=>Rst,
		Clk=>CLK,
		Q=>Qi(3));
	


end Behavioral;

