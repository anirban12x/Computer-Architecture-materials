----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:26 03/28/2025 
-- Design Name: 
-- Module Name:    jk_rtl - Behavioral 
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

entity jk_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end jk_rtl;

architecture Behavioral of jk_rtl is

signal qtemp,qbartemp: std_logic :='0';

begin

	Q<=qtemp;
	Qbar<=qbartemp;
	
	process(clk,reset)
	
	begin
		if(reset = '1') then
			qtemp<='0';
			qbartemp<='1';
		elsif(rising_edge(clk)) then
			if(j='0' and k='0') then
					NULL;
				elsif(j='0' and k='1') then
					qtemp<='0';
					qbartemp<='1';
				elsif(j='1' and k='0') then 
					qtemp<='1';
					qbartemp<='0';
				else 
					qtemp <= not qtemp;
					qbartemp <= not qbartemp;
			end if;
		end if;
	end process;

end Behavioral;

