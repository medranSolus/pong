----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:07 04/30/2020 
-- Design Name: 
-- Module Name:    GameLogic - GameLogicArch 
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

entity GameLogic is
	port (Clk : in STD_LOGIC;
			Pause : in STD_LOGIC;
			Reset : in STD_LOGIC;
			PlayerScore : in STD_LOGIC;
			Player1Score : in UNSIGNED(3 downto 0);
			Player2Score : in UNSIGNED(3 downto 0);
			Present : out STD_LOGIC;
			SetPowerUp : out STD_LOGIC;
			ResetMatch : out STD_LOGIC;
			EndGame : out STD_LOGIC);
end GameLogic;

architecture GameLogicArch of GameLogic is
	constant maxScore : UNSIGNED(3 downto 0) := X"9";
	constant presentFrameRate : UNSIGNED(19 downto 0) := X"65B9B"; -- Every 1/60 second
	constant powerUpSpawnTime : UNSIGNED(31 downto 0) := X"2CB41780"; -- Every 30 seconds	
	
	signal framePresentCounter : UNSIGNED(19 downto 0) := presentFrameRate;
	signal powerUpCounter : UNSIGNED(31 downto 0) := powerUpSpawnTime;
	signal endGame_int : STD_LOGIC := '0';
begin
	ResetMatch <= Reset;
	EndGame <= endGame_int;
	
	process (Clk, PlayerScore, Reset, Player1Score, Player2Score)
	begin
		if rising_edge(Clk) and PlayerScore = '1' then
			if Player1Score = maxScore or Player2Score = maxScore then
				endGame_int <= '1' and not Reset;
			else
				endGame_int <= '0';
			end if;
		end if;
	end process;
	
	process (Clk, Pause, Reset)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				powerUpCounter <= powerUpSpawnTime;
				SetPowerUp <= '0';
			elsif Pause = '0' then
				if powerUpCounter = 0 then
					powerUpCounter <= powerUpSpawnTime;
					SetPowerUp <= '1';
				else
					powerUpCounter <= powerUpCounter - 1;
					SetPowerUp <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process (Clk)
	begin
		if rising_edge(Clk) then
			if framePresentCounter = 0 then
				framePresentCounter <= presentFrameRate;
				Present <= '1';
			else
				framePresentCounter <= framePresentCounter - 1;
				Present <= '0';
			end if;
		end if;
	end process;
end GameLogicArch;

