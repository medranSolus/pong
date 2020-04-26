--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:58:08 04/26/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/PlayerTest_shouldResetScore.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Player
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
USE ieee.numeric_std.ALL; 
 
ENTITY PlayerTest_shouldResetScore IS
END PlayerTest_shouldResetScore;
 
ARCHITECTURE behavior OF PlayerTest_shouldResetScore IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Player
    PORT(
         Reset : IN  std_logic;
         Up : IN  std_logic;
         Down : IN  std_logic;
         ScoreInc : IN  std_logic;
         SpeedUp : IN  std_logic;
         SpeedDown : IN  std_logic;
         SizeUp : IN  std_logic;
         SizeDown : IN  std_logic;
         Clk : IN  std_logic;
         Score : OUT  UNSIGNED(3 downto 0);
         Position : OUT  UNSIGNED(7 downto 0);
         Size : OUT  UNSIGNED(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Up : std_logic := '0';
   signal Down : std_logic := '0';
   signal ScoreInc : std_logic := '0';
   signal SpeedUp : std_logic := '0';
   signal SpeedDown : std_logic := '0';
   signal SizeUp : std_logic := '0';
   signal SizeDown : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Score : UNSIGNED(3 downto 0);
   signal Position : UNSIGNED(7 downto 0);
   signal Size : UNSIGNED(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Player PORT MAP (
          Reset => Reset,
          Up => Up,
          Down => Down,
          ScoreInc => ScoreInc,
          SpeedUp => SpeedUp,
          SpeedDown => SpeedDown,
          SizeUp => SizeUp,
          SizeDown => SizeDown,
          Clk => Clk,
          Score => Score,
          Position => Position,
          Size => Size
        );
		  
	-- Input: score is 0. Score is incremented 5 times. Reset.
	-- Expected output: Score is 0 after restart.
	-- Run configuration: run 200 ns
	
	Clk <= not Clk after Clk_period / 2;
	ScoreInc <= '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns,  '0' after 60 ns, '1' after 70 ns,  '0' after 80 ns, '1' after 90 ns, '0' after 100 ns;
	Reset <= '1' after 110 ns, '0' after 130 ns;

END;
