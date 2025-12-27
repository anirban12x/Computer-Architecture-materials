----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:06 03/21/2025 
-- Design Name: 
-- Module Name:    twobit - Behavioral 
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

entity twobit is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           equal : out  STD_LOGIC;
           greater : out  STD_LOGIC;
           lesser : out  STD_LOGIC);
end twobit;

architecture Behavioral of twobit is
signal t0, t1: STD_LOGIC:='0';

begin
	t0<= not((a(0) and not b(0)) or (b(0) and not a(0)));
	t1<= not((a(1) and not b(1)) or (b(1) and not a(1)));
	greater<=(a(1) and not b(1)) or (t1 and (a(0) and not b(0)));
	lesser<=(b(1) and not a(1)) or (t1 and (b(0) and not a(0)));
	equal<= t0 and t1;
	


end Behavioral;

