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
	constant player_minimal_size : UNSIGNED(7 downto 0) := X"03"; -- Means total 7 length (3 on each side)
	constant player_thickness : UNSIGNED(7 downto 0) := X"02";
	constant powerup_thickness : UNSIGNED(7 downto 0) := X"01";
	
	signal ball_vector : STD_LOGIC_VECTOR(1 downto 0);
	
	procedure SetPowerUp(signal ball_direction : in STD_LOGIC) is
	begin
		case PowerUpType is
			when "000" =>
				BallSpeedUp <= '1';
			when "001" =>
				BallSpeedDown <= '1';
			when "010" =>
				BallSizeUp <= '1';
			when "011" =>
				BallSizeDown <= '1';
			when "100" =>
				if ball_direction = '1' then
					PlayerLeftSpeedUp <= '1';
				else
					PlayerRightSpeedUp <= '1';
				end if;
			when "101" =>
				if ball_direction = '1' then
					PlayerLeftSpeedDown <= '1';
				else
					PlayerRightSpeedDown <= '1';
				end if;
			when "110" =>
				if ball_direction = '1' then
					PlayerLeftSizeUp <= '1';
				else
					PlayerRightSizeUp <= '1';
				end if;
			when "111" =>
				if ball_direction = '1' then
					PlayerLeftSizeDown <= '1';
				else
					PlayerRightSizeDown <= '1';
				end if;
			when others =>
		end case;
	end procedure;
begin
	NewBallVector <= ball_vector;
	
	process(Clk, Reset, BallVector, BallPositionY, BallPositionX, PlayerLeftPosition, PlayerRightPosition)
	begin
		if rising_edge(Clk) then
			PlayerLeftScore <= '0';
			PlayerRightScore <= '0';
			if Reset = '1' then
				ball_vector <= not BallVector;
				SetBallVector <= '1';
			else
				SetBallVector <= '0';
				ball_vector <= BallVector;
				if BallVector(0) = '1' then
					-- Bounce from right player (if on vector)
					-- Check if hits right wall (point)
					if BallPositionX >= max_x - BallSpeed - BallSize then
						PlayerLeftScore <= '1';
					end if;
				else
					-- Bounce from left player (if on vector)
					-- Check if hits left wall (point)
					if BallPositionX <= BallSpeed + BallSize then
						PlayerRightScore <= '1';
					end if;
				end if;
				if BallVector(1) = '1' then
					-- Check if bounces from top wall
					if BallPositionY >= max_y - BallSpeed - BallSize then
						SetBallVector <= '1';
						ball_vector(1) <= '0';
					end if;
				else
					-- Check if bounces from down wall
					if BallPositionY <= BallSpeed + BallSize then
						SetBallVector <= '1';
						ball_vector(1) <= '1';
					end if;
				end if;
			end if;
		end if;
	end process;
	
	process(Clk, ball_vector, BallPositionY, BallPositionX, PowerUpActive)
		variable ball_next_y : UNSIGNED(7 downto 0) := X"00";
		variable ball_next_x : UNSIGNED(7 downto 0) := X"00";
	begin
		if rising_edge(Clk) then
			BallSpeedUp <= '0';
			BallSpeedDown <= '0';
			BallSizeUp <= '0';
			BallSizeDown <= '0';
			PlayerLeftSpeedUp <= '0';
			PlayerLeftSpeedDown <= '0';
			PlayerLeftSizeUp <= '0';
			PlayerLeftSizeDown <= '0';
			PlayerRightSpeedUp <= '0';
			PlayerRightSpeedDown <= '0';
			PlayerRightSizeUp <= '0';
			PlayerRightSizeDown <= '0';
			PowerUpTurnOff <= '0';
			-- Check power up
			if PowerUpActive = '1' then
				if ball_vector(0) = '1' then
					ball_next_x := BallPositionX + BallSpeed;
				else
					ball_next_x := BallPositionX - BallSpeed;
				end if;
				if ball_vector(1) = '1' then
					ball_next_y := BallPositionY + BallSpeed;
				else
					ball_next_y := BallPositionY - BallSpeed;
				end if;
				case ball_vector is
					when "00" => -- Down left
						PowerUpTurnOff <= '1';
						SetPowerUp(ball_vector(0));
					when "10" => -- Up left
						PowerUpTurnOff <= '1';
						SetPowerUp(ball_vector(0));
					when "01" => -- Down right
						PowerUpTurnOff <= '1';
						SetPowerUp(ball_vector(0));
					when "11" => -- Up right
						PowerUpTurnOff <= '1';
						SetPowerUp(ball_vector(0));
					when others =>
				end case;
			end if;
		end if;
	end process;
end CollisionManagerArch;

