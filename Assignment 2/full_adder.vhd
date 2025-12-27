----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:33 02/20/2025 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
signal temp1,temp2,temp3:STD_LOGIC:='0';
begin
	temp3<=((not a) and b) or ((not b) and a);
	temp2<=a and b;
	sum<=((not c_in) and temp3)or ((not temp3) and c_in);
	temp1<=temp3 and c_in;
	c_out<=temp1 or temp2;
end Behavioral;

