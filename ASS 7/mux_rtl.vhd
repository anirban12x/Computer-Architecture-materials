----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:08 03/21/2025 
-- Design Name: 
-- Module Name:    mux_rtl - Behavioral 
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

entity mux_rtl is
    Port ( data : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC);
end mux_rtl;

architecture Behavioral of mux_rtl is

begin
	process(data,sel)
	begin
		case sel is 
			when "000"=>output<=data(0);
			when "001"=>output<=data(1);
			when "010"=>output<=data(2);
			when "011"=>output<=data(3);
			when "100"=>output<=data(4);
			when "101"=>output<=data(5);
			when "110"=>output<=data(6);
			when "111"=>output<=data(7);
			when others=>output<='0';
		end case;
	end process;
end Behavioral;

