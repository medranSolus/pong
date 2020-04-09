----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:39 04/09/2020 
-- Design Name: 
-- Module Name:    CollisionManager - CollisionManagerArch 
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

--library UNISIM;
--use UNISIM.VComponents.all;

entity CollisionManager is
	port(Clk : in STD_LOGIC;
		  Reset : in STD_LOGIC;
		  BallVector : in STD_LOGIC_VECTOR(1 downto 0);
		  BallSize : in UNSIGNED(7 downto 0);
		  BallSpeed : in UNSIGNED(7 downto 0);
		  BallPositionY : in UNSIGNED(7 downto 0);
		  BallPositionX : in UNSIGNED(7 downto 0);
		  PlayerLeftPosition : in UNSIGNED(7 downto 0);
		  PlayerLeftSize : in UNSIGNED(7 downto 0);
		  PlayerRightPosition : in UNSIGNED(7 downto 0);
		  PlayerRightSize : in UNSIGNED(7 downto 0);
		  PowerUpActive : in STD_LOGIC;
		  PowerUpType : in STD_LOGIC_VECTOR(2 downto 0);
		  PowerUpPositionY : in UNSIGNED(7 downto 0);
		  PowerUpPositionX : in UNSIGNED(7 downto 0);
		  SetBallVector : out STD_LOGIC;
		  NewBallVector : out STD_LOGIC_VECTOR(1 downto 0);
		  BallSpeedUp : out STD_LOGIC;
		  BallSpeedDown : out STD_LOGIC;
		  BallSizeUp : out STD_LOGIC;
		  BallSizeDown : out STD_LOGIC;
		  PlayerLeftScore : out STD_LOGIC;
		  PlayerLeftSpeedUp : out STD_LOGIC;
		  PlayerLeftSpeedDown : out STD_LOGIC;
		  PlayerLeftSizeUp : out STD_LOGIC;
		  PlayerLeftSizeDown : out STD_LOGIC;
		  PlayerRightScore : out STD_LOGIC;
		  PlayerRightSpeedUp : out STD_LOGIC;
		  PlayerRightSpeedDown : out STD_LOGIC;
		  PlayerRightSizeUp : out STD_LOGIC;
		  PlayerRightSizeDown : out STD_LOGIC;
		  PowerUpTurnOff : out STD_LOGIC);
end CollisionManager;

architecture CollisionManagerArch of CollisionManager is
	constant max_y : UNSIGNED(7 downto 0) := X"FF";
	constant max_x : UNSIGNED(7 downto 0) := X"FF";
	
begin
	process(Clk, BallVector, BallPositionY, BallPositionX, PlayerLeftPosition, PlayerRightPosition)
	begin
		if rising_edge(Clk) then
			
		end if;
	end process;
end CollisionManagerArch;

