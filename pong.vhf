--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : pong.vhf
-- /___/   /\     Timestamp : 04/26/2020 11:58:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/pong.vhf" -w "D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/pong.sch"
--Design Name: pong
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pong is
   port ( Clk      : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic);
end pong;

architecture BEHAVIORAL of pong is
   signal XLXN_5                     : std_logic;
   signal XLXN_6                     : std_logic;
   signal XLXN_7                     : std_logic;
   signal XLXN_8                     : std_logic;
   signal XLXN_9                     : std_logic;
   signal XLXN_61                    : std_logic;
   signal XLXN_62                    : std_logic;
   signal XLXN_63                    : std_logic;
   signal XLXN_64                    : std_logic;
   signal XLXN_65                    : std_logic;
   signal XLXN_66                    : std_logic;
   signal XLXN_67                    : std_logic;
   signal XLXN_68                    : std_logic;
   signal XLXN_69                    : std_logic;
   signal XLXN_70                    : std_logic;
   signal XLXN_71                    : std_logic;
   signal XLXN_72                    : std_logic;
   signal XLXN_74                    : std_logic;
   signal XLXN_75                    : std_logic;
   signal XLXN_76                    : std_logic;
   signal XLXN_77                    : std_logic;
   signal XLXN_78                    : std_logic;
   signal XLXN_79                    : std_logic_vector (1 downto 0);
   signal XLXN_80                    : std_logic_vector (7 downto 0);
   signal XLXN_81                    : std_logic_vector (7 downto 0);
   signal XLXN_82                    : std_logic_vector (7 downto 0);
   signal XLXN_83                    : std_logic_vector (7 downto 0);
   signal XLXN_84                    : std_logic_vector (1 downto 0);
   signal XLXN_88                    : std_logic_vector (2 downto 0);
   signal XLXN_89                    : std_logic_vector (7 downto 0);
   signal XLXN_90                    : std_logic_vector (7 downto 0);
   signal XLXN_91                    : std_logic;
   signal XLXN_94                    : std_logic_vector (3 downto 0);
   signal XLXN_95                    : std_logic_vector (3 downto 0);
   signal XLXN_96                    : std_logic_vector (7 downto 0);
   signal XLXN_97                    : std_logic_vector (7 downto 0);
   signal XLXN_98                    : std_logic_vector (7 downto 0);
   signal XLXN_99                    : std_logic_vector (7 downto 0);
   signal Bally_Reset_openSignal     : std_logic;
   signal Collision_Reset_openSignal : std_logic;
   signal Power_Activate_openSignal  : std_logic;
   signal Render_Present_openSignal  : std_logic;
   component Ball
      port ( Reset         : in    std_logic; 
             SetVector     : in    std_logic; 
             Stop          : in    std_logic; 
             SpeedUp       : in    std_logic; 
             SpeedDown     : in    std_logic; 
             SizeUp        : in    std_logic; 
             SizeDown      : in    std_logic; 
             Clk           : in    std_logic; 
             InputVector   : in    std_logic_vector (1 downto 0); 
             Speed         : out   std_logic_vector (7 downto 0); 
             Size          : out   std_logic_vector (7 downto 0); 
             PositionY     : out   std_logic_vector (7 downto 0); 
             PositionX     : out   std_logic_vector (7 downto 0); 
             CurrentVector : out   std_logic_vector (1 downto 0));
   end component;
   
   component CollisionManager
      port ( Clk                  : in    std_logic; 
             Reset                : in    std_logic; 
             PowerUpActive        : in    std_logic; 
             BallVector           : in    std_logic_vector (1 downto 0); 
             BallSize             : in    std_logic_vector (7 downto 0); 
             BallSpeed            : in    std_logic_vector (7 downto 0); 
             BallPositionY        : in    std_logic_vector (7 downto 0); 
             BallPositionX        : in    std_logic_vector (7 downto 0); 
             PlayerLeftPosition   : in    std_logic_vector (7 downto 0); 
             PlayerLeftSize       : in    std_logic_vector (7 downto 0); 
             PlayerRightPosition  : in    std_logic_vector (7 downto 0); 
             PlayerRightSize      : in    std_logic_vector (7 downto 0); 
             PowerUpType          : in    std_logic_vector (2 downto 0); 
             PowerUpPositionY     : in    std_logic_vector (7 downto 0); 
             PowerUpPositionX     : in    std_logic_vector (7 downto 0); 
             SetBallVector        : out   std_logic; 
             BallSpeedUp          : out   std_logic; 
             BallSpeedDown        : out   std_logic; 
             BallSizeUp           : out   std_logic; 
             BallSizeDown         : out   std_logic; 
             PlayerLeftScore      : out   std_logic; 
             PlayerLeftSpeedUp    : out   std_logic; 
             PlayerLeftSpeedDown  : out   std_logic; 
             PlayerLeftSizeUp     : out   std_logic; 
             PlayerLeftSizeDown   : out   std_logic; 
             PlayerRightScore     : out   std_logic; 
             PlayerRightSpeedUp   : out   std_logic; 
             PlayerRightSpeedDown : out   std_logic; 
             PlayerRightSizeUp    : out   std_logic; 
             PlayerRightSizeDown  : out   std_logic; 
             PowerUpTurnOff       : out   std_logic; 
             NewBallVector        : out   std_logic_vector (1 downto 0));
   end component;
   
   component InputManager
      port ( PS2_Clk  : in    std_logic; 
             PS2_Data : in    std_logic; 
             Clk      : in    std_logic; 
             Reset    : out   std_logic; 
             Pause    : out   std_logic; 
             Up_P1    : out   std_logic; 
             Down_P1  : out   std_logic; 
             Up_P2    : out   std_logic; 
             Down_P2  : out   std_logic);
   end component;
   
   component Player
      port ( Reset     : in    std_logic; 
             Up        : in    std_logic; 
             Down      : in    std_logic; 
             ScoreInc  : in    std_logic; 
             SpeedUp   : in    std_logic; 
             SpeedDown : in    std_logic; 
             SizeUp    : in    std_logic; 
             SizeDown  : in    std_logic; 
             Clk       : in    std_logic; 
             Score     : out   std_logic_vector (3 downto 0); 
             Position  : out   std_logic_vector (7 downto 0); 
             Size      : out   std_logic_vector (7 downto 0));
   end component;
   
   component PowerUp
      port ( Clk       : in    std_logic; 
             Activate  : in    std_logic; 
             TurnOff   : in    std_logic; 
             IsActive  : out   std_logic; 
             PowerType : out   std_logic_vector (2 downto 0); 
             PositionY : out   std_logic_vector (7 downto 0); 
             PositionX : out   std_logic_vector (7 downto 0));
   end component;
   
   component RenderManager
      port ( Clk              : in    std_logic; 
             Present          : in    std_logic; 
             PowerUpActive    : in    std_logic; 
             PowerUpType      : in    std_logic_vector (2 downto 0); 
             PowerUpPositionY : in    std_logic_vector (7 downto 0); 
             PowerUpPositionX : in    std_logic_vector (7 downto 0); 
             BallSize         : in    std_logic_vector (7 downto 0); 
             BallPositionY    : in    std_logic_vector (7 downto 0); 
             BallPositionX    : in    std_logic_vector (7 downto 0); 
             Player1Score     : in    std_logic_vector (3 downto 0); 
             Player1Position  : in    std_logic_vector (7 downto 0); 
             Player1Size      : in    std_logic_vector (7 downto 0); 
             Player2Score     : in    std_logic_vector (3 downto 0); 
             Player2Position  : in    std_logic_vector (7 downto 0); 
             Player2Size      : in    std_logic_vector (7 downto 0); 
             Red              : out   std_logic; 
             Green            : out   std_logic; 
             Blue             : out   std_logic; 
             VerticalSync     : out   std_logic; 
             HorizontalSync   : out   std_logic);
   end component;
   
begin
   Bally : Ball
      port map (Clk=>Clk,
                InputVector(1 downto 0)=>XLXN_79(1 downto 0),
                Reset=>Bally_Reset_openSignal,
                SetVector=>XLXN_74,
                SizeDown=>XLXN_78,
                SizeUp=>XLXN_77,
                SpeedDown=>XLXN_76,
                SpeedUp=>XLXN_75,
                Stop=>XLXN_61,
                CurrentVector(1 downto 0)=>XLXN_84(1 downto 0),
                PositionX(7 downto 0)=>XLXN_83(7 downto 0),
                PositionY(7 downto 0)=>XLXN_82(7 downto 0),
                Size(7 downto 0)=>XLXN_81(7 downto 0),
                Speed(7 downto 0)=>XLXN_80(7 downto 0));
   
   Collision : CollisionManager
      port map (BallPositionX(7 downto 0)=>XLXN_83(7 downto 0),
                BallPositionY(7 downto 0)=>XLXN_82(7 downto 0),
                BallSize(7 downto 0)=>XLXN_81(7 downto 0),
                BallSpeed(7 downto 0)=>XLXN_80(7 downto 0),
                BallVector(1 downto 0)=>XLXN_84(1 downto 0),
                Clk=>Clk,
                PlayerLeftPosition(7 downto 0)=>XLXN_96(7 downto 0),
                PlayerLeftSize(7 downto 0)=>XLXN_97(7 downto 0),
                PlayerRightPosition(7 downto 0)=>XLXN_98(7 downto 0),
                PlayerRightSize(7 downto 0)=>XLXN_99(7 downto 0),
                PowerUpActive=>XLXN_91,
                PowerUpPositionX(7 downto 0)=>XLXN_90(7 downto 0),
                PowerUpPositionY(7 downto 0)=>XLXN_89(7 downto 0),
                PowerUpType(2 downto 0)=>XLXN_88(2 downto 0),
                Reset=>Collision_Reset_openSignal,
                BallSizeDown=>XLXN_78,
                BallSizeUp=>XLXN_77,
                BallSpeedDown=>XLXN_76,
                BallSpeedUp=>XLXN_75,
                NewBallVector(1 downto 0)=>XLXN_79(1 downto 0),
                PlayerLeftScore=>XLXN_62,
                PlayerLeftSizeDown=>XLXN_66,
                PlayerLeftSizeUp=>XLXN_65,
                PlayerLeftSpeedDown=>XLXN_64,
                PlayerLeftSpeedUp=>XLXN_63,
                PlayerRightScore=>XLXN_67,
                PlayerRightSizeDown=>XLXN_71,
                PlayerRightSizeUp=>XLXN_70,
                PlayerRightSpeedDown=>XLXN_69,
                PlayerRightSpeedUp=>XLXN_68,
                PowerUpTurnOff=>XLXN_72,
                SetBallVector=>XLXN_74);
   
   Input : InputManager
      port map (Clk=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                Down_P1=>XLXN_6,
                Down_P2=>XLXN_8,
                Pause=>XLXN_61,
                Reset=>XLXN_9,
                Up_P1=>XLXN_5,
                Up_P2=>XLXN_7);
   
   Player1 : Player
      port map (Clk=>Clk,
                Down=>XLXN_6,
                Reset=>XLXN_9,
                ScoreInc=>XLXN_62,
                SizeDown=>XLXN_66,
                SizeUp=>XLXN_65,
                SpeedDown=>XLXN_64,
                SpeedUp=>XLXN_63,
                Up=>XLXN_5,
                Position(7 downto 0)=>XLXN_96(7 downto 0),
                Score(3 downto 0)=>XLXN_94(3 downto 0),
                Size(7 downto 0)=>XLXN_97(7 downto 0));
   
   Player2 : Player
      port map (Clk=>Clk,
                Down=>XLXN_8,
                Reset=>XLXN_9,
                ScoreInc=>XLXN_67,
                SizeDown=>XLXN_71,
                SizeUp=>XLXN_70,
                SpeedDown=>XLXN_69,
                SpeedUp=>XLXN_68,
                Up=>XLXN_7,
                Position(7 downto 0)=>XLXN_98(7 downto 0),
                Score(3 downto 0)=>XLXN_95(3 downto 0),
                Size(7 downto 0)=>XLXN_99(7 downto 0));
   
   Power : PowerUp
      port map (Activate=>Power_Activate_openSignal,
                Clk=>Clk,
                TurnOff=>XLXN_72,
                IsActive=>XLXN_91,
                PositionX(7 downto 0)=>XLXN_90(7 downto 0),
                PositionY(7 downto 0)=>XLXN_89(7 downto 0),
                PowerType(2 downto 0)=>XLXN_88(2 downto 0));
   
   Render : RenderManager
      port map (BallPositionX(7 downto 0)=>XLXN_83(7 downto 0),
                BallPositionY(7 downto 0)=>XLXN_82(7 downto 0),
                BallSize(7 downto 0)=>XLXN_81(7 downto 0),
                Clk=>Clk,
                Player1Position(7 downto 0)=>XLXN_96(7 downto 0),
                Player1Score(3 downto 0)=>XLXN_94(3 downto 0),
                Player1Size(7 downto 0)=>XLXN_97(7 downto 0),
                Player2Position(7 downto 0)=>XLXN_98(7 downto 0),
                Player2Score(3 downto 0)=>XLXN_95(3 downto 0),
                Player2Size(7 downto 0)=>XLXN_99(7 downto 0),
                PowerUpActive=>XLXN_91,
                PowerUpPositionX(7 downto 0)=>XLXN_90(7 downto 0),
                PowerUpPositionY(7 downto 0)=>XLXN_89(7 downto 0),
                PowerUpType(2 downto 0)=>XLXN_88(2 downto 0),
                Present=>Render_Present_openSignal,
                Blue=>VGA_B,
                Green=>VGA_G,
                HorizontalSync=>VGA_HS,
                Red=>VGA_R,
                VerticalSync=>VGA_VS);
   
end BEHAVIORAL;


