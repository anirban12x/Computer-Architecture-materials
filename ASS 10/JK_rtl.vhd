----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:08 04/03/2025 
-- Design Name: 
-- Module Name:    JK_rtl - Behavioral 
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

entity JK_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBAR : out  STD_LOGIC);
end JK_rtl;

architecture Behavioral of JK_rtl is
signal temp: STD_LOGIC:= '0';

begin
	Q <= temp;
	QBAR <= (not temp);
	process(J,K,RESET,CLK)
	begin
		if (RESET = '1') then temp <= '0';
		elsif (RISING_EDGE(CLK)) then
			if (J = '0' and K = '0') then temp <= temp;
			elsif (J = '1' and K = '1') then temp <= not temp;
			elsif (J /= K) then temp <= J;
			end if;
		end if;
	end process;
end Behavioral;

