----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:43 02/20/2025 
-- Design Name: 
-- Module Name:    fa_ha - Behavioral 
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

entity fa_ha is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C_IN : in  STD_LOGIC;
           C_OUT : out  STD_LOGIC;
           SUM : out  STD_LOGIC);
end fa_ha;

architecture Behavioral of fa_ha is
component half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
signal temp,c1,c2:STD_LOGIC:='0';
begin
HA0: half_adder port map(a=>A, b=>B, sum=>temp, carry=>c1);
HA1: half_adder port map(a=>temp, b=>C_IN, sum=>SUM, carry=>c2);
C_OUT <= c1 or c2;
end Behavioral;

