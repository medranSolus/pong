--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:26:43 05/09/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/GameLogic_shouldEndGame.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GameLogic
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
 
ENTITY GameLogic_shouldEndGame IS
END GameLogic_shouldEndGame;
 
ARCHITECTURE behavior OF GameLogic_shouldEndGame IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GameLogic
    PORT(
         Clk : IN  std_logic;
         Pause : IN  std_logic;
         Reset : IN  std_logic;
         Player1Score : IN  UNSIGNED(3 downto 0);
         Player2Score : IN  UNSIGNED(3 downto 0);
         Present : OUT  std_logic;
         SetPowerUp : OUT  std_logic;
         ResetMatch : OUT  std_logic;
         EndGame : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Pause : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Player1Score : UNSIGNED(3 downto 0) := (others => '0');
   signal Player2Score : UNSIGNED(3 downto 0) := (others => '0');

 	--Outputs
   signal Present : std_logic;
   signal SetPowerUp : std_logic;
   signal ResetMatch : std_logic;
   signal EndGame : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GameLogic PORT MAP (
          Clk => Clk,
          Pause => Pause,
          Reset => Reset,
          Player1Score => Player1Score,
          Player2Score => Player2Score,
          Present => Present,
          SetPowerUp => SetPowerUp,
          ResetMatch => ResetMatch,
          EndGame => EndGame
        );

	-- Input: Increase points of player 1 to make him win the game
	-- Expected output: The game ends
	-- Run configuration: run 200 ns
	
	Clk <= not Clk after Clk_period / 2;
	Reset <= '0';
	Player1Score <= X"9" after 50 ns;

END;
