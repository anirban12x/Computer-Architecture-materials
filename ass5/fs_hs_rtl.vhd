-- Uncomment the following
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:51 02/21/2025 
-- Design Name: 
-- Module Name:    fs_hs_rtl - Behavioral 
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

entity fs_hs_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC;
           BORROW : out  STD_LOGIC);
end fs_hs_rtl;

architecture Behavioral of fs_hs_rtl is
component half_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal diff1,borrow1,borrow2: STD_LOGIC;
begin
	HS1: half_subtractor_rtl port map(A,B,diff1,borrow1);
	HS2: half_subtractor_rtl port map(diff1,CIN,DIFFERENCE,borrow2);
	BORROW<=borrow1 or borrow2;
end Behavioral;

