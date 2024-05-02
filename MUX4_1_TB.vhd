--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:54:37 05/01/2024
-- Design Name:   
-- Module Name:   D:/Matlab/FPGA/parity/MUX4_1_TB.vhd
-- Project Name:  parity
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX4_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX4_1_TB IS
END MUX4_1_TB;
 
ARCHITECTURE behavior OF MUX4_1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX4_1
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         C : IN  std_logic_vector(7 downto 0);
         D : IN  std_logic_vector(7 downto 0);
         SEL : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal C : std_logic_vector(7 downto 0) := (others => '0');
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX4_1 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          SEL => SEL,
          Y => Y
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;
--
A<= X"AA";
B<= X"BB";
C<= X"CC";
D<= X"DD";
SEL<="00", "01" AFTER 100 NS, "10" AFTER 200 NS, "11" AFTER 300 NS;
END;
