----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:59:03 02/21/2025 
-- Design Name: 
-- Module Name:    full_subtractor_rtl - Behavioral 
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

entity full_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end full_subtractor_rtl;

architecture Behavioral of full_subtractor_rtl is
	signal temp1:STD_LOGIC;
begin
	temp1<=((not a)and b)or((not b)and a);
	difference<=((not cin)and temp1)or((not temp1)and cin);
	borrow<=((not a)and b)or((not temp1)and cin);
end Behavioral;

