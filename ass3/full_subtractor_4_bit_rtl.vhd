----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:36 02/21/2025 
-- Design Name: 
-- Module Name:    full_subtractor_4_bit_rtl - Behavioral 
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

entity full_subtractor_4_bit_rtl is
    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0);
           Z : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(3 downto 0);
           B : out  STD_LOGIC);
end full_subtractor_4_bit_rtl;

architecture Behavioral of full_subtractor_4_bit_rtl is
	component full_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
	end component;
signal b1,b2,b3: STD_LOGIC:='0';
begin
HS0: full_subtractor_rtl port map(
	a=>X(0),
	b=>Y(0),
	cin=>Z,
	difference=>D(0),
	borrow=>b1);
HS1: full_subtractor_rtl port map(
	a=>X(1),
	b=>Y(1),
	cin=>b1,
	difference=>D(1),
	borrow=>b2);
HS2: full_subtractor_rtl port map(
	a=>X(2),
	b=>Y(2),
	cin=>b2,
	difference=>D(2),
	borrow=>b3);
HS3: full_subtractor_rtl port map(
	a=>X(3),
	b=>Y(3),
	cin=>b3,
	difference=>D(3),
	borrow=>B);
end Behavioral;
