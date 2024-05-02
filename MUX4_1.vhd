----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:08 05/01/2024 
-- Design Name: 
-- Module Name:    MUX4_1 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX4_1 is
	GENERIC( N : INTEGER RANGE 0 TO 32 := 8);
	PORT( A,B,C,D : IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			SEL 	  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
			Y		  : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
			);
end MUX4_1;

architecture Behavioral of MUX4_1 is

begin

Y<=A WHEN SEL="00" ELSE
	B WHEN SEL="01" ELSE
	C WHEN SEL="10" ELSE
	D;

end Behavioral;

