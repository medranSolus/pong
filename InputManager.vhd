----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:22 03/29/2020 
-- Design Name: 
-- Module Name:    InputManager - InputManagerArch 
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

entity InputManager is
	port (PS2_Clk : in STD_LOGIC;
			PS2_Data : in STD_LOGIC;
			Clk : in STD_LOGIC;
			Reset : out STD_LOGIC;
			Pause : out STD_LOGIC;
			Up_P1 : out STD_LOGIC;
			Down_P1 : out STD_LOGIC;
			Up_P2 : out STD_LOGIC;
			Down_P2 : out STD_LOGIC);
end InputManager;

architecture InputManagerArch of InputManager is
	component PS2_Kbd is
		port (PS2_Clk : in STD_LOGIC;
				PS2_Data : in STD_LOGIC;
				Clk_Sys : in STD_LOGIC;
				Clk_50MHz : in STD_LOGIC;
				E0 : out STD_LOGIC;
				F0 : out STD_LOGIC;
				DO_Rdy : out STD_LOGIC;
				DO : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	signal DO : STD_LOGIC_VECTOR(7 downto 0) := X"00";
	signal DO_Rdy : STD_LOGIC := '0';
	signal E0 : STD_LOGIC := '0';
	signal F0 : STD_LOGIC := '0';
begin
	PS2_Control : PS2_Kbd port map (PS2_Clk => PS2_Clk,
										 PS2_Data => PS2_Data,
										 Clk_Sys => Clk,
										 Clk_50MHz => Clk,
										 DO => DO,
										 DO_Rdy => DO_Rdy,
										 E0 => E0,
										 F0 => F0);
	process (Clk, DO_Rdy)
	begin
		if rising_edge(Clk) then
			Reset <= '0';
			Pause <= '0';
			Up_P1 <= '0';
			Down_P1 <= '0';
			Up_P2 <= '0';
			Down_P2 <= '0';
			if DO_Rdy = '1' then
				case DO is
					when X"2D" => -- Reset "R"
						if F0 = '1' then
							Reset <= '0';
						else
							Reset <= '1';
						end if;
					when X"4D" => -- Pause "P"
						if F0 = '1' then
							Pause <= '0';
						else
							Pause <= '1';
						end if;
					when X"1D" => -- Up_P1 "W"
						if F0 = '1' then
							Up_P1 <= '0';
						else
							Up_P1 <= '1';
						end if;
					when X"1B" => -- Down_P1 "S"
						if F0 = '1' then
							Down_P1 <= '0';
						else
							Down_P1 <= '1';
						end if;
					when X"75" => -- UP_P2 "Up arrow"
						if E0 = '1' then
							if F0 = '1' then
								UP_P2 <= '0';
							else
								UP_P2 <= '1';
							end if;
						end if;
					when X"72" => -- Down_P2 "Down arrow"
						if E0 = '1' then
							if F0 = '1' then
								Down_P2 <= '0';
							else
								Down_P2 <= '1';
							end if;
						end if;
					when others =>
				end case;
			end if;
		end if;
	end process;
end InputManagerArch;

