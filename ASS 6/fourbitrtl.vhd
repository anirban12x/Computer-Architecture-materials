----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:11:40 03/21/2025 
-- Design Name: 
-- Module Name:    fourbitrtl - Behavioral 
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

entity fourbitrtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           A_gt_B : out  STD_LOGIC;
           A_lt_B : out  STD_LOGIC;
           A_eq_B : out  STD_LOGIC);
end fourbitrtl;

architecture Behavioral of fourbitrtl is

signal t1, t2, t3, t4: STD_LOGIC;
signal gt1, gt2, gt3, gt4: STD_LOGIC;
signal lt1, lt2, lt3, lt4: STD_LOGIC;

begin
    t1 <= not((not A(0) and B(0)) or (not B(0) and A(0)));
    t2 <= not((not A(1) and B(1)) or (not B(1) and A(1)));
    t3 <= not((not A(2) and B(2)) or (not B(2) and A(2)));
    t4 <= not((not A(3) and B(3)) or (not B(3) and A(3)));
	 A_eq_B <= t1 and t2 and t3 and t4;
	 gt4 <= A(3) and not B(3);
    gt3 <= (t4 and A(2) and not B(2));
    gt2 <= (t4 and t3 and A(1) and not B(1));
    gt1 <= (t4 and t3 and t2 and A(0) and not B(0));
    A_gt_B <= gt4 or gt3 or gt2 or gt1;
	 lt4 <= not A(3) and B(3);
    lt3 <= (t4 and not A(2) and B(2));
    lt2 <= (t4 and t3 and not A(1) and B(1));
    lt1 <= (t4 and t3 and t2 and not A(0) and B(0));
    A_lt_B <= lt4 or lt3 or lt2 or lt1;

end Behavioral;

