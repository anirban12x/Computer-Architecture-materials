----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:53 03/21/2025 
-- Design Name: 
-- Module Name:    demux_rtl - Behavioral 
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

entity demux_rtl is
    Port ( data : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end demux_rtl;

architecture Behavioral of demux_rtl is

begin
process(data,sel)
	begin
		output<=(others=>'0');
		case sel is 
			when "000"=>output(0)<=data;
			when "001"=>output(1)<=data;
			when "010"=>output(2)<=data;
			when "011"=>output(3)<=data;
			when "100"=>output(4)<=data;
			when "101"=>output(5)<=data;
			when "110"=>output(6)<=data;
			when "111"=>output(7)<=data;
			when others=>output<=(others=>'0');
		end case;
	end process;
end Behavioral;

