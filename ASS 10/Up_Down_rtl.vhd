----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:26:11 04/11/2025 
-- Design Name: 
-- Module Name:    Up_Down_rtl - Behavioral 
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

entity Up_Down_rtl is
    Port ( up_down : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end Up_Down_rtl;

architecture Behavioral of Up_Down_rtl is
component JK_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBAR : out  STD_LOGIC);
end component;

signal t1,t2, t3, s1, s2, s3, c1, c2, c3, m1,m2,m3,m4,m5,m6 : STD_LOGIC := '0';

begin

	JK0: JK_rtl port map(J=>'1', K=>'1', RESET=>reset, Q=>s1, CLK=>clk, QBAR=>t1);
	m1 <= (Up_Down and s1);
	m2 <=  ((not Up_Down) and t1);
	c1<= m1 or m2;
	Count(0)<= s1;
 
	JK1: JK_rtl port map(J=>c1, K=>c1, RESET=>reset, Q=>s2, CLK=>clk, QBAR=> t2);
	m3 <= (m1 and s2);
	m4 <= (m2 and t2);
	c2 <= (m3 or m4);
	Count(1)<= s2;
 
	JK2: JK_rtl port map(J=>c2, K=>c2, RESET=>reset, Q=>s3, CLK=>clk, QBAR=> t3);
	m5 <= (m3 and s3);
	m6<= (m4 and t3);
	c3 <= (m5 or m6);
	Count(2)<= s3;
 
	JK3: JK_rtl port map(J=>c3, K=>c3, RESET=>reset, Q=>Count(3), CLK=>clk);

end Behavioral;

