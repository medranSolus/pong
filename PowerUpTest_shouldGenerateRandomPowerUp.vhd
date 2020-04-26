--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:13 04/26/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/PowerUpTest_shouldGenerateRandomPowerUp.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PowerUp
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

ENTITY PowerUpTest_shouldGenerateRandomPowerUp IS
END PowerUpTest_shouldGenerateRandomPowerUp;
 
ARCHITECTURE behavior OF PowerUpTest_shouldGenerateRandomPowerUp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PowerUp
    PORT(
         Clk : IN  std_logic;
         Activate : IN  std_logic;
         TurnOff : IN  std_logic;
         IsActive : OUT  std_logic;
         PowerType : OUT  std_logic_vector(2 downto 0);
         PositionY : OUT  UNSIGNED(7 downto 0);
         PositionX : OUT  UNSIGNED(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Activate : std_logic := '0';
   signal TurnOff : std_logic := '0';

 	--Outputs
   signal IsActive : std_logic;
   signal PowerType : std_logic_vector(2 downto 0);
   signal PositionY : UNSIGNED(7 downto 0);
   signal PositionX : UNSIGNED(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PowerUp PORT MAP (
          Clk => Clk,
          Activate => Activate,
          TurnOff => TurnOff,
          IsActive => IsActive,
          PowerType => PowerType,
          PositionY => PositionY,
          PositionX => PositionX
        );

	-- Input: Activation of generating PowerUp
	-- Expected output: Random PowerUp on random position is generated
	-- Run configuration: run 100 ns
	
	Clk <= not Clk after Clk_period / 2;
	Activate <= '1', '0' after 50 ns;

END;
