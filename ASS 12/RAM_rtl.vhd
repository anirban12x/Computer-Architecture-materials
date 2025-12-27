----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:27 04/11/2025 
-- Design Name: 
-- Module Name:    RAM_rtl - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_rtl is
    Port ( Address : in  STD_LOGIC_VECTOR (6 downto 0);
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           write_en : in  STD_LOGIC);
end RAM_rtl;

architecture Behavioral of ram_rtl is

type RAM_ARRAY is array (0 to 127) of std_logic_vector (7 downto 0);
signal RAM: RAM_ARRAY :=(
x"55",x"66",x"77",x"67",-- 0x00:
x"99",x"00",x"00",x"11",-- 0x04:
x"00",x"00",x"00",x"00",-- 0x08:
x"00",x"00",x"00",x"00",-- 0x0C:
x"00",x"00",x"00",x"00",-- 0x10:
x"00",x"00",x"00",x"00",-- 0x14:
x"00",x"00",x"00",x"00",-- 0x18:
x"00",x"00",x"00",x"00",-- 0x1C:
x"00",x"00",x"00",x"00",-- 0x20:
x"00",x"00",x"00",x"00",-- 0x24:
x"00",x"00",x"00",x"00",-- 0x28:
x"00",x"00",x"00",x"00",-- 0x2C:
x"00",x"00",x"00",x"00",-- 0x30:
x"00",x"00",x"00",x"00",-- 0x34:
x"00",x"00",x"00",x"00",-- 0x38:
x"00",x"00",x"00",x"00",-- 0x3C:
x"00",x"00",x"00",x"00",-- 0x40:
x"00",x"00",x"00",x"00",-- 0x44:
x"00",x"00",x"00",x"00",-- 0x48:
x"00",x"00",x"00",x"00",-- 0x4C:
x"00",x"00",x"00",x"00",-- 0x50:
x"00",x"00",x"00",x"00",-- 0x54:
x"00",x"00",x"00",x"00",-- 0x58:
x"00",x"00",x"00",x"00",-- 0x5C:
x"00",x"00",x"00",x"00",-- 0x60:
x"00",x"00",x"00",x"00",-- 0x64:
x"00",x"00",x"00",x"00",-- 0x68:
x"00",x"00",x"00",x"00",-- 0x6C:
x"00",x"00",x"00",x"00",-- 0x70:
x"00",x"00",x"00",x"00",-- 0x74:
x"00",x"00",x"00",x"00",-- 0x78:
x"00",x"00",x"00",x"00"-- 0x7C:
);
begin
process(clk )
begin
	if(rising_edge(clk )) then
		if(write_en='1') then 
			RAM(to_integer(unsigned(Address)))<= data_in;
		end if;
	end if;
end process;
data_out<=RAM(to_integer(unsigned(Address)));
end Behavioral;

