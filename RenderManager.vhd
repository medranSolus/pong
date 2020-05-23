----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:01 04/16/2020 
-- Design Name: 
-- Module Name:    RenderManager - RenderManagerArch 
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

entity RenderManager is
	port (Clk : in STD_LOGIC;
			Present : in STD_LOGIC;
			Pause : in STD_LOGIC;
		   PowerUpActive : in STD_LOGIC;
		   PowerUpType : in STD_LOGIC_VECTOR(2 downto 0);
		   PowerUpPositionY : in UNSIGNED(11 downto 0);
		   PowerUpPositionX : in UNSIGNED(11 downto 0);
		   BallSize : in UNSIGNED(11 downto 0);
		   BallPositionY : in UNSIGNED(11 downto 0);
		   BallPositionX : in UNSIGNED(11 downto 0);
			Player1Score : in UNSIGNED(3 downto 0);
		   Player1Position : in UNSIGNED(11 downto 0);
		   Player1Size : in UNSIGNED(11 downto 0);
			Player2Score : in UNSIGNED(3 downto 0);
		   Player2Position : in UNSIGNED(11 downto 0);
		   Player2Size : in UNSIGNED(11 downto 0);
			EndGame : in STD_LOGIC;
			Red : out STD_LOGIC;
			Green : out STD_LOGIC;
			Blue : out STD_LOGIC;
			VerticalSync : out STD_LOGIC;
			HorizontalSync : out STD_LOGIC);
end RenderManager;

architecture RenderManagerArch of RenderManager is
	type PIXEL is array (2 downto 0) of STD_LOGIC; -- RGB
	constant VGA_Black : PIXEL := "000";
	constant VGA_Blue : PIXEL := "001";
	constant VGA_Green : PIXEL := "010";
	constant VGA_Cyan : PIXEL := "011";
	constant VGA_Red : PIXEL := "100";
	constant VGA_Magenta : PIXEL := "101";
	constant VGA_Yellow : PIXEL := "110";
	constant VGA_White : PIXEL := "111";
	
	type VGA_ROW is array (639 downto 0) of PIXEL;
	type VGA_BUFFER is array (479 downto 0) of VGA_ROW;
	signal vga_buffer0 : VGA_BUFFER := (others => (others => VGA_Black));
	signal vga_buffer1 : VGA_BUFFER := (others => (others => VGA_Black));
	signal vga_front_buffer : INTEGER range 0 to 1 := 0;
	
	signal x_out : INTEGER range 0 to 639 := 0;
	signal y_out : INTEGER range 0 to 479 := 0;
begin
	
	process(Clk) -- Render thread, frequency?
	begin
		if rising_edge(Clk) then
			if vga_front_buffer = 0 then
				--Red <= vga_buffer0(y_out)(x_out)(2);
				--Green <= vga_buffer0(y_out)(x_out)(1);
				--Blue <= vga_buffer0(y_out)(x_out)(0);
			else
				--Red <= vga_buffer1(y_out)(x_out)(2);
				--Green <= vga_buffer1(y_out)(x_out)(1);
				--Blue <= vga_buffer1(y_out)(x_out)(0);
			end if;
			x_out <= x_out + 1;
			if x_out = 0 then
				y_out <= y_out + 1;
			end if;
		end if;
	end process;
	
	process(Clk, Present, y_out) -- Present thread
	begin
		if rising_edge(Clk) and Present = '1' then
			if y_out = 0 then
				if vga_front_buffer = 0 then
					--vga_buffer0 <= (others => (others => VGA_Black));
				else
					--vga_buffer1 <= (others => (others => VGA_Black));
				end if;
				vga_front_buffer <= vga_front_buffer + 1;
			end if;
		end if;
	end process;
	
	-- Write thread
	process(Clk, Player1Score, Player2Score, Player1Position, Player1Size, Player2Position, Player2Size, PowerUpActive, PowerUpType, BallPositionY, BallPositionX, BallSize, Pause, EndGame)
	begin
		if rising_edge(Clk) then
			-- Clear buffer
			if vga_front_buffer = 0 then
				--vga_buffer1 <= (others => (others => VGA_Black));
			else
				--vga_buffer0 <= (others => (others => VGA_Black));
			end if;
			-- Write scores (max 9)
			case Player1Score is
				when "0000" =>
						if vga_front_buffer = 0 then
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						end if;
				when "0001" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						end if;
				when "0010" =>
						if vga_front_buffer = 0 then
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 50 loop
                        --vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0011" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
														for i in 1 to 100 loop
								--vga_buffer0(to_integer(350)(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0100" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
							end loop;
						end if;
				when "0101" =>
				if vga_front_buffer = 0 then
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0110" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(300))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0111" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
							end loop;
						end if;
				when "1000" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "1001" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(300))(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when others =>
			end case;
			case Player2Score is
				when "0000" =>
						if vga_front_buffer = 0 then
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						end if;
				when "0001" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
						end if;
				when "0010" =>
						if vga_front_buffer = 0 then
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 50 loop
                        --vga_buffer0(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0011" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
														for i in 1 to 100 loop
								--vga_buffer0(to_integer(350))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0100" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
							end loop;
						end if;
				when "0101" =>
				if vga_front_buffer = 0 then
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0110" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(390))(to_integer(100 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when "0111" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
							end loop;
						end if;
				when "1000" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(390))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(to_integer( 340))(to_integer( 50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer( 390))(to_integer( 50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer( 340 + i))(to_integer( 50)) <= VGA_Green;
								--vga_buffer0(to_integer( 340 + i))(to_integer( 100)) <= VGA_Green;
								--vga_buffer0(to_integer( 340 + i))(to_integer( 150)) <= VGA_Green;
							end loop;
						end if;
				when "1001" =>
						if vga_front_buffer = 0 then
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(300))(to_integer(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer1(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						else
							for i in 1 to 100 loop
								--vga_buffer0(390))(50 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(340))(to_integer(50 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(50)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(100)) <= VGA_Green;
								--vga_buffer0(to_integer(340 + i))(to_integer(150)) <= VGA_Green;
							end loop;
						end if;
				when others =>
			end case;
			
			-- Player1 paddle
			if vga_front_buffer = 0 then
				for i in 5 to 9 loop
					for j in 1 to (5 + to_integer(Player1Size)) loop
						--vga_buffer1(to_integer(i))(to_integer(Player1Position + j - 2 - (Player1Size / 2))) <= VGA_Black;
					end loop;
				end loop;
			else
				for i in 5 to 9 loop
					for j in 1 to (5 + to_integer(Player1Size)) loop
						--vga_buffer0(to_integer(i))(to_integer(Player1Position + j - 2 - (Player1Size / 2))) <= VGA_Black;
					end loop;
				end loop;
			end if;

			-- Player2 paddle
			if vga_front_buffer = 0 then
				for i in 5 to 9 loop
					for j in 1 to (5 + to_integer(Player2Size)) loop
						--vga_buffer1(to_integer(i))(to_integer(Player2Position + j - 2 - (Player2Size / 2))) <= VGA_Black;
					end loop;
				end loop;
			else
				for i in 5 to 9 loop
					for j in 1 to (5 + to_integer(Player2Size)) loop
						--vga_buffer0(to_integer(i))(to_integer(Player2Position + j - 2 - (Player2Size / 2))) <= VGA_Black;
					end loop;
				end loop;
			end if;
			
			if PowerUpActive = '1' then
				case PowerUpType is
					when "000" => -- Ball speed +
						if vga_front_buffer = 0 then
							-- B
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						else
							-- B
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						end if;
					when "001" => -- Ball speed -
						if vga_front_buffer = 0 then
							-- B
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						else
							-- B
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						end if;
					when "010" => -- Ball size +
						if vga_front_buffer = 0 then
							-- B
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- I
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						else
							-- B
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						end if;
					when "011" => -- Ball size -
						if vga_front_buffer = 0 then
							-- B
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- I
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						else
							-- B
							for i in 1 to 100 loop
								--vga_buffer0(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(150 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						end if;
					when "100" => -- Player speed +
						if vga_front_buffer = 0 then
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						else
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						end if;
					when "101" => -- Player speed -
						if vga_front_buffer = 0 then
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						else
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- P
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(320 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(320 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(320))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						end if;
					when "110" => -- Player size +
						if vga_front_buffer = 0 then
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- I
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						else
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- I
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- +
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(425))(to_integer(375 + i)) <= VGA_Green;
							end loop;
						end if;
					when "111" => -- Player size -
						if vga_front_buffer = 0 then
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer1(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- I
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						else
							-- P
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(150))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							for i in 1 to 50 loop
								--vga_buffer1(to_integer(200))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer1(to_integer(150 + i))(to_integer(400)) <= VGA_Green;
							end loop;
							-- S
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(250))(to_integer(350 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(300))(to_integer(400 + i)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(350)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(400)) <= VGA_Green;
								--vga_buffer0(to_integer(250 + i))(to_integer(450)) <= VGA_Green;
							end loop;
							-- I
							for i in 1 to 100 loop
								--vga_buffer1(to_integer(370))(to_integer(350 + i)) <= VGA_Green;
							end loop;
							-- -
							for i in 1 to 50 loop
								--vga_buffer0(to_integer(400 + i))(to_integer(400)) <= VGA_Green;
							end loop;
						end if;
					when others =>
				end case;
			end if;
			
			-- Ball
			if vga_front_buffer = 0 then
				--vga_buffer1(to_integer(BallPositionY))(to_integer(BallPositionX)) <= VGA_Cyan;
			else
				--vga_buffer0(to_integer(BallPositionY))(to_integer(BallPositionX)) <= VGA_Cyan;
			end if;
			for i in 1 to 639 loop
				exit when i > to_integer(BallSize);
				for j in 1 to 639 loop
					exit when j > to_integer(BallSize);
					if vga_front_buffer = 0 then
						--vga_buffer1(to_integer(BallPositionY - i))(to_integer(BallPositionX - j)) <= VGA_Cyan;
						--vga_buffer1(to_integer(BallPositionY - i))(to_integer(BallPositionX + j)) <= VGA_Cyan;
						--vga_buffer1(to_integer(BallPositionY + i))(to_integer(BallPositionX - j)) <= VGA_Cyan;
						--vga_buffer1(to_integer(BallPositionY + i))(to_integer(BallPositionX + j)) <= VGA_Cyan;
					else
						--vga_buffer0(to_integer(BallPositionY - i))(to_integer(BallPositionX - j)) <= VGA_Cyan;
						--vga_buffer0(to_integer(BallPositionY - i))(to_integer(BallPositionX + j)) <= VGA_Cyan;
						--vga_buffer0(to_integer(BallPositionY + i))(to_integer(BallPositionX - j)) <= VGA_Cyan;
						--vga_buffer0(to_integer(BallPositionY + i))(to_integer(BallPositionX + j)) <= VGA_Cyan;
					end if;
				end loop;
				if vga_front_buffer = 0 then
					--vga_buffer1(to_integer(BallPositionY - i))(to_integer(BallPositionX)) <= VGA_Cyan;
					--vga_buffer1(to_integer(BallPositionY + i))(to_integer(BallPositionX)) <= VGA_Cyan;
				else
					--vga_buffer0(to_integer(BallPositionY - i))(to_integer(BallPositionX)) <= VGA_Cyan;
					--vga_buffer0(to_integer(BallPositionY + i))(to_integer(BallPositionX)) <= VGA_Cyan;
				end if;
			end loop;
			
			
			-- Write 'P'
			if Pause = '1' then
				if vga_front_buffer = 0 then
					for i in 1 to 100 loop
						--vga_buffer1(to_integer(295))(to_integer(190 + i)) <= VGA_Green;
					end loop;
					for i in 1 to 50 loop
						--vga_buffer1(to_integer(345))(to_integer(190 + i)) <= VGA_Green;
						--vga_buffer1(to_integer(295 + i))(to_integer(190)) <= VGA_Green;
						--vga_buffer1(to_integer(295 + i))(to_integer(240)) <= VGA_Green;
					end loop;
				else
					for i in 1 to 100 loop
						--vga_buffer0(to_integer(295))(to_integer(190 + i)) <= VGA_Green;
					end loop;
					for i in 1 to 50 loop
						--vga_buffer0(to_integer(345))(to_integer(190 + i)) <= VGA_Green;
						--vga_buffer0(to_integer(295 + i))(to_integer(190)) <= VGA_Green;
						--vga_buffer0(to_integer(295 + i))(to_integer(240)) <= VGA_Green;
					end loop;					
				end if;
			end if;
			
			-- Write 'E'
			if EndGame = '1' then
				if vga_front_buffer = 0 then
					for i in 1 to 100 loop
						--vga_buffer1(to_integer(295))(to_integer(190 + i)) <= VGA_Green;
					end loop;
					for i in 1 to 50 loop
						--vga_buffer1(to_integer(295 + i))(to_integer(190)) <= VGA_Green;
						--vga_buffer1(to_integer(295 + i))(to_integer(240)) <= VGA_Green;
						--vga_buffer1(to_integer(295 + i))(to_integer(290)) <= VGA_Green;
					end loop;
				else
					for i in 1 to 100 loop
						--vga_buffer0(to_integer(295))(to_integer(190 + i)) <= VGA_Green;
					end loop;
					for i in 1 to 50 loop
						--vga_buffer0(to_integer(295 + i))(to_integer(190)) <= VGA_Green;
						--vga_buffer0(to_integer(295 + i))(to_integer(240)) <= VGA_Green;
						--vga_buffer0(to_integer(295 + i))(to_integer(290)) <= VGA_Green;
					end loop;					
				end if;
			end if;
		end if;
	end process;

end RenderManagerArch;

