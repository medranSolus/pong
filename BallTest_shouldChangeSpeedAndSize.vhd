--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:33 04/26/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/BallTest_shouldChangeSpeedAndSize.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ball
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
 
ENTITY BallTest_shouldChangeSpeedAndSize IS
END BallTest_shouldChangeSpeedAndSize;
 
ARCHITECTURE behavior OF BallTest_shouldChangeSpeedAndSize IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ball
    PORT(
         Reset : IN  std_logic;
         SetVector : IN  std_logic;
         InputVector : IN  std_logic_vector(1 downto 0);
         Stop : IN  std_logic;
         SpeedUp : IN  std_logic;
         SpeedDown : IN  std_logic;
         SizeUp : IN  std_logic;
         SizeDown : IN  std_logic;
         Clk : IN  std_logic;
         Speed : OUT  UNSIGNED(7 downto 0);
         Size : OUT  UNSIGNED(7 downto 0);
         PositionY : OUT  UNSIGNED(7 downto 0);
         PositionX : OUT  UNSIGNED(7 downto 0);
         CurrentVector : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal SetVector : std_logic := '0';
   signal InputVector : std_logic_vector(1 downto 0) := (others => '0');
   signal Stop : std_logic := '0';
   signal SpeedUp : std_logic := '0';
   signal SpeedDown : std_logic := '0';
   signal SizeUp : std_logic := '0';
   signal SizeDown : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Speed : UNSIGNED(7 downto 0);
   signal Size : UNSIGNED(7 downto 0);
   signal PositionY : UNSIGNED(7 downto 0);
   signal PositionX : UNSIGNED(7 downto 0);
   signal CurrentVector : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ball PORT MAP (
          Reset => Reset,
          SetVector => SetVector,
          InputVector => InputVector,
          Stop => Stop,
          SpeedUp => SpeedUp,
          SpeedDown => SpeedDown,
          SizeUp => SizeUp,
          SizeDown => SizeDown,
          Clk => Clk,
          Speed => Speed,
          Size => Size,
          PositionY => PositionY,
          PositionX => PositionX,
          CurrentVector => CurrentVector
        );

	-- Input: Increase speed by 5, decrease speed by 3, increase size by 3, decrease size by 5
	-- Expected output: Ball has a size of 2 units (Initial size was 0) and speed of 1 unit (Initial and default speed is 1)
	-- Run configuration: run 450 ns
	
	Clk <= not Clk after Clk_period / 2;
	SizeUp <= '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns,  '0' after 60 ns, '1' after 70 ns,  '0' after 80 ns, '1' after 90 ns, '0' after 100 ns;
	SizeDown <= '1' after 110 ns, '0' after 120 ns, '1' after 130 ns, '0' after 140 ns, '1' after 150 ns,  '0' after 160 ns;
	SpeedUp <= '1' after 210 ns, '0' after 220 ns, '1' after 230 ns, '0' after 240 ns, '1' after 250 ns,  '0' after 260 ns;
	SpeedDown <= '1' after 310 ns, '0' after 320 ns, '1' after 330 ns, '0' after 340 ns, '1' after 350 ns,  '0' after 360 ns, '1' after 370 ns,  '0' after 380 ns, '1' after 390 ns, '0' after 400 ns;

END;
