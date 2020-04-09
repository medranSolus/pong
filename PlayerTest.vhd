--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:38:44 04/09/2020
-- Design Name:   
-- Module Name:   /home/medran/Desktop/pong/PlayerTest.vhd
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
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY PlayerTest IS
END PlayerTest;
 
ARCHITECTURE behavior OF PlayerTest IS
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
   constant Clk_period : time := 100 ns;
 
BEGIN
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
	Clk <= not Clk after Clk_period / 2;
	ScoreInc <= not ScoreInc after Clk_period;
	Up <= not Up after Clk_period;
	SpeedUp <= not SpeedUp after Clk_period;
	SizeUp <= not SizeUp after Clk_period;

END;
