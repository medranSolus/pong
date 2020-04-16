<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_39(7:0)" />
        <signal name="XLXN_41(7:0)" />
        <signal name="XLXN_43(7:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79(1:0)" />
        <signal name="XLXN_80(7:0)" />
        <signal name="XLXN_81(7:0)" />
        <signal name="XLXN_82(7:0)" />
        <signal name="XLXN_83(7:0)" />
        <signal name="XLXN_84(1:0)" />
        <signal name="XLXN_85(7:0)" />
        <signal name="XLXN_86(7:0)" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88(2:0)" />
        <signal name="XLXN_89(7:0)" />
        <signal name="XLXN_90(7:0)" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92(2:0)" />
        <signal name="XLXN_93(7:0)" />
        <signal name="XLXN_94(3:0)" />
        <signal name="XLXN_95(3:0)" />
        <signal name="XLXN_96(7:0)" />
        <signal name="XLXN_97(7:0)" />
        <signal name="XLXN_98(7:0)" />
        <signal name="XLXN_99(7:0)" />
        <signal name="Clk" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Input" name="Clk" />
        <blockdef name="InputManager">
            <timestamp>2020-4-16T17:51:9</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Player">
            <timestamp>2020-4-16T17:53:32</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PowerUp">
            <timestamp>2020-4-16T17:51:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="CollisionManager">
            <timestamp>2020-4-16T17:51:0</timestamp>
            <rect width="496" x="64" y="-1088" height="1088" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="624" y1="-1056" y2="-1056" x1="560" />
            <line x2="624" y1="-992" y2="-992" x1="560" />
            <line x2="624" y1="-928" y2="-928" x1="560" />
            <line x2="624" y1="-864" y2="-864" x1="560" />
            <line x2="624" y1="-800" y2="-800" x1="560" />
            <line x2="624" y1="-736" y2="-736" x1="560" />
            <line x2="624" y1="-672" y2="-672" x1="560" />
            <line x2="624" y1="-608" y2="-608" x1="560" />
            <line x2="624" y1="-544" y2="-544" x1="560" />
            <line x2="624" y1="-480" y2="-480" x1="560" />
            <line x2="624" y1="-416" y2="-416" x1="560" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <line x2="624" y1="-288" y2="-288" x1="560" />
            <line x2="624" y1="-224" y2="-224" x1="560" />
            <line x2="624" y1="-160" y2="-160" x1="560" />
            <line x2="624" y1="-96" y2="-96" x1="560" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="RenderManager">
            <timestamp>2020-4-16T18:2:34</timestamp>
            <rect width="400" x="64" y="-960" height="960" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-928" y2="-928" x1="464" />
            <line x2="528" y1="-704" y2="-704" x1="464" />
            <line x2="528" y1="-480" y2="-480" x1="464" />
            <line x2="528" y1="-256" y2="-256" x1="464" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="Ball">
            <timestamp>2020-4-16T17:50:52</timestamp>
            <rect width="368" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-556" height="24" />
            <line x2="496" y1="-544" y2="-544" x1="432" />
            <rect width="64" x="432" y="-428" height="24" />
            <line x2="496" y1="-416" y2="-416" x1="432" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <block symbolname="InputManager" name="Input">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_9" name="Reset" />
            <blockpin signalname="XLXN_61" name="Pause" />
            <blockpin signalname="XLXN_5" name="Up_P1" />
            <blockpin signalname="XLXN_6" name="Down_P1" />
            <blockpin signalname="XLXN_7" name="Up_P2" />
            <blockpin signalname="XLXN_8" name="Down_P2" />
        </block>
        <block symbolname="Player" name="Player1">
            <blockpin signalname="XLXN_9" name="Reset" />
            <blockpin signalname="XLXN_5" name="Up" />
            <blockpin signalname="XLXN_6" name="Down" />
            <blockpin signalname="XLXN_62" name="ScoreInc" />
            <blockpin signalname="XLXN_63" name="SpeedUp" />
            <blockpin signalname="XLXN_64" name="SpeedDown" />
            <blockpin signalname="XLXN_65" name="SizeUp" />
            <blockpin signalname="XLXN_66" name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_94(3:0)" name="Score(3:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="Position(7:0)" />
            <blockpin signalname="XLXN_97(7:0)" name="Size(7:0)" />
        </block>
        <block symbolname="Player" name="Player2">
            <blockpin signalname="XLXN_9" name="Reset" />
            <blockpin signalname="XLXN_7" name="Up" />
            <blockpin signalname="XLXN_8" name="Down" />
            <blockpin signalname="XLXN_67" name="ScoreInc" />
            <blockpin signalname="XLXN_68" name="SpeedUp" />
            <blockpin signalname="XLXN_69" name="SpeedDown" />
            <blockpin signalname="XLXN_70" name="SizeUp" />
            <blockpin signalname="XLXN_71" name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_95(3:0)" name="Score(3:0)" />
            <blockpin signalname="XLXN_98(7:0)" name="Position(7:0)" />
            <blockpin signalname="XLXN_99(7:0)" name="Size(7:0)" />
        </block>
        <block symbolname="PowerUp" name="Power">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Activate" />
            <blockpin signalname="XLXN_72" name="TurnOff" />
            <blockpin signalname="XLXN_91" name="IsActive" />
            <blockpin signalname="XLXN_88(2:0)" name="PowerType(2:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="PositionY(7:0)" />
            <blockpin signalname="XLXN_90(7:0)" name="PositionX(7:0)" />
        </block>
        <block symbolname="CollisionManager" name="Collision">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_91" name="PowerUpActive" />
            <blockpin signalname="XLXN_84(1:0)" name="BallVector(1:0)" />
            <blockpin signalname="XLXN_81(7:0)" name="BallSize(7:0)" />
            <blockpin signalname="XLXN_80(7:0)" name="BallSpeed(7:0)" />
            <blockpin signalname="XLXN_82(7:0)" name="BallPositionY(7:0)" />
            <blockpin signalname="XLXN_83(7:0)" name="BallPositionX(7:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="PlayerLeftPosition(7:0)" />
            <blockpin signalname="XLXN_97(7:0)" name="PlayerLeftSize(7:0)" />
            <blockpin signalname="XLXN_98(7:0)" name="PlayerRightPosition(7:0)" />
            <blockpin signalname="XLXN_99(7:0)" name="PlayerRightSize(7:0)" />
            <blockpin signalname="XLXN_88(2:0)" name="PowerUpType(2:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="PowerUpPositionY(7:0)" />
            <blockpin signalname="XLXN_90(7:0)" name="PowerUpPositionX(7:0)" />
            <blockpin signalname="XLXN_74" name="SetBallVector" />
            <blockpin signalname="XLXN_75" name="BallSpeedUp" />
            <blockpin signalname="XLXN_76" name="BallSpeedDown" />
            <blockpin signalname="XLXN_77" name="BallSizeUp" />
            <blockpin signalname="XLXN_78" name="BallSizeDown" />
            <blockpin signalname="XLXN_62" name="PlayerLeftScore" />
            <blockpin signalname="XLXN_63" name="PlayerLeftSpeedUp" />
            <blockpin signalname="XLXN_64" name="PlayerLeftSpeedDown" />
            <blockpin signalname="XLXN_65" name="PlayerLeftSizeUp" />
            <blockpin signalname="XLXN_66" name="PlayerLeftSizeDown" />
            <blockpin signalname="XLXN_67" name="PlayerRightScore" />
            <blockpin signalname="XLXN_68" name="PlayerRightSpeedUp" />
            <blockpin signalname="XLXN_69" name="PlayerRightSpeedDown" />
            <blockpin signalname="XLXN_70" name="PlayerRightSizeUp" />
            <blockpin signalname="XLXN_71" name="PlayerRightSizeDown" />
            <blockpin signalname="XLXN_72" name="PowerUpTurnOff" />
            <blockpin signalname="XLXN_79(1:0)" name="NewBallVector(1:0)" />
        </block>
        <block symbolname="RenderManager" name="Render">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Present" />
            <blockpin signalname="XLXN_91" name="PowerUpActive" />
            <blockpin signalname="XLXN_88(2:0)" name="PowerUpType(2:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="PowerUpPositionY(7:0)" />
            <blockpin signalname="XLXN_90(7:0)" name="PowerUpPositionX(7:0)" />
            <blockpin signalname="XLXN_81(7:0)" name="BallSize(7:0)" />
            <blockpin signalname="XLXN_82(7:0)" name="BallPositionY(7:0)" />
            <blockpin signalname="XLXN_83(7:0)" name="BallPositionX(7:0)" />
            <blockpin signalname="XLXN_94(3:0)" name="Player1Score(3:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="Player1Position(7:0)" />
            <blockpin signalname="XLXN_97(7:0)" name="Player1Size(7:0)" />
            <blockpin signalname="XLXN_95(3:0)" name="Player2Score(3:0)" />
            <blockpin signalname="XLXN_98(7:0)" name="Player2Position(7:0)" />
            <blockpin signalname="XLXN_99(7:0)" name="Player2Size(7:0)" />
            <blockpin signalname="VGA_R" name="Red" />
            <blockpin signalname="VGA_G" name="Green" />
            <blockpin signalname="VGA_B" name="Blue" />
            <blockpin signalname="VGA_VS" name="VerticalSync" />
            <blockpin signalname="VGA_HS" name="HorizontalSync" />
        </block>
        <block symbolname="Ball" name="Bally">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_74" name="SetVector" />
            <blockpin signalname="XLXN_61" name="Stop" />
            <blockpin signalname="XLXN_75" name="SpeedUp" />
            <blockpin signalname="XLXN_76" name="SpeedDown" />
            <blockpin signalname="XLXN_77" name="SizeUp" />
            <blockpin signalname="XLXN_78" name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_79(1:0)" name="InputVector(1:0)" />
            <blockpin signalname="XLXN_80(7:0)" name="Speed(7:0)" />
            <blockpin signalname="XLXN_81(7:0)" name="Size(7:0)" />
            <blockpin signalname="XLXN_82(7:0)" name="PositionY(7:0)" />
            <blockpin signalname="XLXN_83(7:0)" name="PositionX(7:0)" />
            <blockpin signalname="XLXN_84(1:0)" name="CurrentVector(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="208" y="480" name="Input" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="208" y1="128" y2="128" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="128" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="208" y1="288" y2="288" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="288" name="PS2_Data" orien="R180" />
        <instance x="784" y="672" name="Player1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-416" type="instance" />
        </instance>
        <instance x="784" y="1392" name="Player2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-416" type="instance" />
        </instance>
        <branch name="XLXN_5">
            <wire x2="688" y1="256" y2="256" x1="592" />
            <wire x2="688" y1="192" y2="256" x1="688" />
            <wire x2="784" y1="192" y2="192" x1="688" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="704" y1="320" y2="320" x1="592" />
            <wire x2="704" y1="256" y2="320" x1="704" />
            <wire x2="784" y1="256" y2="256" x1="704" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="688" y1="384" y2="384" x1="592" />
            <wire x2="688" y1="384" y2="912" x1="688" />
            <wire x2="784" y1="912" y2="912" x1="688" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="672" y1="448" y2="448" x1="592" />
            <wire x2="672" y1="448" y2="976" x1="672" />
            <wire x2="784" y1="976" y2="976" x1="672" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="720" y1="128" y2="128" x1="592" />
            <wire x2="784" y1="128" y2="128" x1="720" />
            <wire x2="720" y1="128" y2="848" x1="720" />
            <wire x2="784" y1="848" y2="848" x1="720" />
        </branch>
        <instance x="784" y="1744" name="Power" orien="R0">
        </instance>
        <instance x="1696" y="1184" name="Collision" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="3392" y1="128" y2="128" x1="3360" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3392" y1="352" y2="352" x1="3360" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3392" y1="576" y2="576" x1="3360" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3376" y1="800" y2="800" x1="3360" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3376" y1="1024" y2="1024" x1="3360" />
        </branch>
        <instance x="1824" y="1872" name="Bally" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3376" y="800" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1024" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3392" y="576" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3392" y="352" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3392" y="128" name="VGA_R" orien="R0" />
        <instance x="2832" y="1056" name="Render" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="656" y1="192" y2="192" x1="592" />
            <wire x2="656" y1="192" y2="1456" x1="656" />
            <wire x2="1824" y1="1456" y2="1456" x1="656" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="736" y1="32" y2="320" x1="736" />
            <wire x2="784" y1="320" y2="320" x1="736" />
            <wire x2="2368" y1="32" y2="32" x1="736" />
            <wire x2="2368" y1="32" y2="448" x1="2368" />
            <wire x2="2368" y1="448" y2="448" x1="2320" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="768" y1="48" y2="384" x1="768" />
            <wire x2="784" y1="384" y2="384" x1="768" />
            <wire x2="2352" y1="48" y2="48" x1="768" />
            <wire x2="2352" y1="48" y2="512" x1="2352" />
            <wire x2="2352" y1="512" y2="512" x1="2320" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="752" y1="16" y2="448" x1="752" />
            <wire x2="784" y1="448" y2="448" x1="752" />
            <wire x2="2336" y1="16" y2="16" x1="752" />
            <wire x2="2336" y1="16" y2="576" x1="2336" />
            <wire x2="2336" y1="576" y2="576" x1="2320" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="784" y1="512" y2="512" x1="768" />
            <wire x2="768" y1="512" y2="1952" x1="768" />
            <wire x2="2400" y1="1952" y2="1952" x1="768" />
            <wire x2="2400" y1="640" y2="640" x1="2320" />
            <wire x2="2400" y1="640" y2="1952" x1="2400" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="784" y1="576" y2="576" x1="752" />
            <wire x2="752" y1="576" y2="1936" x1="752" />
            <wire x2="2368" y1="1936" y2="1936" x1="752" />
            <wire x2="2368" y1="704" y2="704" x1="2320" />
            <wire x2="2368" y1="704" y2="1936" x1="2368" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="784" y1="1040" y2="1040" x1="736" />
            <wire x2="736" y1="1040" y2="1920" x1="736" />
            <wire x2="2352" y1="1920" y2="1920" x1="736" />
            <wire x2="2352" y1="768" y2="768" x1="2320" />
            <wire x2="2352" y1="768" y2="1920" x1="2352" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="784" y1="1104" y2="1104" x1="720" />
            <wire x2="720" y1="1104" y2="1888" x1="720" />
            <wire x2="2336" y1="1888" y2="1888" x1="720" />
            <wire x2="2336" y1="832" y2="832" x1="2320" />
            <wire x2="2336" y1="832" y2="1888" x1="2336" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="784" y1="1168" y2="1168" x1="672" />
            <wire x2="672" y1="1168" y2="2032" x1="672" />
            <wire x2="2480" y1="2032" y2="2032" x1="672" />
            <wire x2="2480" y1="896" y2="896" x1="2320" />
            <wire x2="2480" y1="896" y2="2032" x1="2480" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="784" y1="1232" y2="1232" x1="688" />
            <wire x2="688" y1="1232" y2="1904" x1="688" />
            <wire x2="2464" y1="1904" y2="1904" x1="688" />
            <wire x2="2464" y1="960" y2="960" x1="2320" />
            <wire x2="2464" y1="960" y2="1904" x1="2464" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="784" y1="1296" y2="1296" x1="592" />
            <wire x2="592" y1="1296" y2="2016" x1="592" />
            <wire x2="2448" y1="2016" y2="2016" x1="592" />
            <wire x2="2448" y1="1024" y2="1024" x1="2320" />
            <wire x2="2448" y1="1024" y2="2016" x1="2448" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="784" y1="1712" y2="1712" x1="656" />
            <wire x2="656" y1="1712" y2="2000" x1="656" />
            <wire x2="2432" y1="2000" y2="2000" x1="656" />
            <wire x2="2432" y1="1088" y2="1088" x1="2320" />
            <wire x2="2432" y1="1088" y2="2000" x1="2432" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="1824" y1="1392" y2="1392" x1="1744" />
            <wire x2="1744" y1="1392" y2="1968" x1="1744" />
            <wire x2="2544" y1="1968" y2="1968" x1="1744" />
            <wire x2="2544" y1="128" y2="128" x1="2320" />
            <wire x2="2544" y1="128" y2="1968" x1="2544" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="1760" y1="1232" y2="1520" x1="1760" />
            <wire x2="1824" y1="1520" y2="1520" x1="1760" />
            <wire x2="2528" y1="1232" y2="1232" x1="1760" />
            <wire x2="2528" y1="192" y2="192" x1="2320" />
            <wire x2="2528" y1="192" y2="1232" x1="2528" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="1824" y1="1584" y2="1584" x1="1760" />
            <wire x2="1760" y1="1584" y2="1984" x1="1760" />
            <wire x2="2416" y1="1984" y2="1984" x1="1760" />
            <wire x2="2416" y1="256" y2="256" x1="2320" />
            <wire x2="2416" y1="256" y2="1984" x1="2416" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="1824" y1="1648" y2="1648" x1="1776" />
            <wire x2="1776" y1="1648" y2="2064" x1="1776" />
            <wire x2="2384" y1="2064" y2="2064" x1="1776" />
            <wire x2="2384" y1="320" y2="320" x1="2320" />
            <wire x2="2384" y1="320" y2="2064" x1="2384" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="1824" y1="1712" y2="1712" x1="1792" />
            <wire x2="1792" y1="1712" y2="2096" x1="1792" />
            <wire x2="2512" y1="2096" y2="2096" x1="1792" />
            <wire x2="2512" y1="384" y2="384" x1="2320" />
            <wire x2="2512" y1="384" y2="2096" x1="2512" />
        </branch>
        <branch name="XLXN_79(1:0)">
            <wire x2="1824" y1="1840" y2="1840" x1="1808" />
            <wire x2="1808" y1="1840" y2="2080" x1="1808" />
            <wire x2="2496" y1="2080" y2="2080" x1="1808" />
            <wire x2="2496" y1="1152" y2="1152" x1="2320" />
            <wire x2="2496" y1="1152" y2="2080" x1="2496" />
        </branch>
        <branch name="XLXN_80(7:0)">
            <wire x2="1696" y1="448" y2="448" x1="1632" />
            <wire x2="1632" y1="448" y2="1200" x1="1632" />
            <wire x2="2576" y1="1200" y2="1200" x1="1632" />
            <wire x2="2576" y1="1200" y2="1328" x1="2576" />
            <wire x2="2576" y1="1328" y2="1328" x1="2320" />
        </branch>
        <branch name="XLXN_81(7:0)">
            <wire x2="1696" y1="384" y2="384" x1="1680" />
            <wire x2="1680" y1="384" y2="1264" x1="1680" />
            <wire x2="2656" y1="1264" y2="1264" x1="1680" />
            <wire x2="2656" y1="1264" y2="1456" x1="2656" />
            <wire x2="2656" y1="1456" y2="1456" x1="2320" />
            <wire x2="2832" y1="512" y2="512" x1="2656" />
            <wire x2="2656" y1="512" y2="1264" x1="2656" />
        </branch>
        <branch name="XLXN_82(7:0)">
            <wire x2="1696" y1="512" y2="512" x1="1664" />
            <wire x2="1664" y1="512" y2="1248" x1="1664" />
            <wire x2="2528" y1="1248" y2="1248" x1="1664" />
            <wire x2="2528" y1="1248" y2="1584" x1="2528" />
            <wire x2="2672" y1="1248" y2="1248" x1="2528" />
            <wire x2="2528" y1="1584" y2="1584" x1="2320" />
            <wire x2="2672" y1="576" y2="1248" x1="2672" />
            <wire x2="2832" y1="576" y2="576" x1="2672" />
        </branch>
        <branch name="XLXN_83(7:0)">
            <wire x2="1696" y1="576" y2="576" x1="1648" />
            <wire x2="1648" y1="576" y2="1216" x1="1648" />
            <wire x2="2640" y1="1216" y2="1216" x1="1648" />
            <wire x2="2640" y1="1216" y2="1712" x1="2640" />
            <wire x2="2640" y1="1712" y2="1712" x1="2320" />
            <wire x2="2832" y1="640" y2="640" x1="2640" />
            <wire x2="2640" y1="640" y2="1216" x1="2640" />
        </branch>
        <branch name="XLXN_84(1:0)">
            <wire x2="1616" y1="64" y2="320" x1="1616" />
            <wire x2="1696" y1="320" y2="320" x1="1616" />
            <wire x2="2624" y1="64" y2="64" x1="1616" />
            <wire x2="2624" y1="64" y2="1840" x1="2624" />
            <wire x2="2624" y1="1840" y2="1840" x1="2320" />
        </branch>
        <branch name="XLXN_88(2:0)">
            <wire x2="1232" y1="1584" y2="1584" x1="1168" />
            <wire x2="1696" y1="896" y2="896" x1="1232" />
            <wire x2="1232" y1="896" y2="1280" x1="1232" />
            <wire x2="1232" y1="1280" y2="1584" x1="1232" />
            <wire x2="2592" y1="1280" y2="1280" x1="1232" />
            <wire x2="2592" y1="320" y2="1280" x1="2592" />
            <wire x2="2832" y1="320" y2="320" x1="2592" />
        </branch>
        <branch name="XLXN_89(7:0)">
            <wire x2="1184" y1="1648" y2="1648" x1="1168" />
            <wire x2="1184" y1="1648" y2="2176" x1="1184" />
            <wire x2="2560" y1="2176" y2="2176" x1="1184" />
            <wire x2="1696" y1="960" y2="960" x1="1184" />
            <wire x2="1184" y1="960" y2="1648" x1="1184" />
            <wire x2="2560" y1="384" y2="2176" x1="2560" />
            <wire x2="2832" y1="384" y2="384" x1="2560" />
        </branch>
        <branch name="XLXN_90(7:0)">
            <wire x2="1216" y1="1712" y2="1712" x1="1168" />
            <wire x2="2448" y1="80" y2="80" x1="1216" />
            <wire x2="2448" y1="80" y2="448" x1="2448" />
            <wire x2="2832" y1="448" y2="448" x1="2448" />
            <wire x2="1216" y1="80" y2="1024" x1="1216" />
            <wire x2="1216" y1="1024" y2="1712" x1="1216" />
            <wire x2="1696" y1="1024" y2="1024" x1="1216" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1248" y1="1520" y2="1520" x1="1168" />
            <wire x2="1248" y1="1520" y2="2048" x1="1248" />
            <wire x2="2608" y1="2048" y2="2048" x1="1248" />
            <wire x2="1696" y1="256" y2="256" x1="1248" />
            <wire x2="1248" y1="256" y2="1520" x1="1248" />
            <wire x2="2608" y1="256" y2="2048" x1="2608" />
            <wire x2="2832" y1="256" y2="256" x1="2608" />
        </branch>
        <branch name="XLXN_94(3:0)">
            <wire x2="1200" y1="128" y2="128" x1="1168" />
            <wire x2="1200" y1="128" y2="2160" x1="1200" />
            <wire x2="2736" y1="2160" y2="2160" x1="1200" />
            <wire x2="2736" y1="704" y2="2160" x1="2736" />
            <wire x2="2832" y1="704" y2="704" x1="2736" />
        </branch>
        <branch name="XLXN_95(3:0)">
            <wire x2="1296" y1="848" y2="848" x1="1168" />
            <wire x2="1296" y1="848" y2="2144" x1="1296" />
            <wire x2="2752" y1="2144" y2="2144" x1="1296" />
            <wire x2="2752" y1="896" y2="2144" x1="2752" />
            <wire x2="2832" y1="896" y2="896" x1="2752" />
        </branch>
        <branch name="XLXN_96(7:0)">
            <wire x2="1328" y1="384" y2="384" x1="1168" />
            <wire x2="1328" y1="384" y2="640" x1="1328" />
            <wire x2="1328" y1="640" y2="2128" x1="1328" />
            <wire x2="2720" y1="2128" y2="2128" x1="1328" />
            <wire x2="1696" y1="640" y2="640" x1="1328" />
            <wire x2="2720" y1="768" y2="2128" x1="2720" />
            <wire x2="2832" y1="768" y2="768" x1="2720" />
        </branch>
        <branch name="XLXN_97(7:0)">
            <wire x2="1312" y1="640" y2="640" x1="1168" />
            <wire x2="1312" y1="640" y2="704" x1="1312" />
            <wire x2="1312" y1="704" y2="2240" x1="1312" />
            <wire x2="2704" y1="2240" y2="2240" x1="1312" />
            <wire x2="1696" y1="704" y2="704" x1="1312" />
            <wire x2="2704" y1="832" y2="2240" x1="2704" />
            <wire x2="2832" y1="832" y2="832" x1="2704" />
        </branch>
        <branch name="XLXN_98(7:0)">
            <wire x2="1424" y1="1104" y2="1104" x1="1168" />
            <wire x2="1424" y1="1104" y2="2224" x1="1424" />
            <wire x2="2688" y1="2224" y2="2224" x1="1424" />
            <wire x2="1424" y1="768" y2="1104" x1="1424" />
            <wire x2="1696" y1="768" y2="768" x1="1424" />
            <wire x2="2688" y1="960" y2="2224" x1="2688" />
            <wire x2="2832" y1="960" y2="960" x1="2688" />
        </branch>
        <branch name="XLXN_99(7:0)">
            <wire x2="1408" y1="1360" y2="1360" x1="1168" />
            <wire x2="1408" y1="1360" y2="2112" x1="1408" />
            <wire x2="2768" y1="2112" y2="2112" x1="1408" />
            <wire x2="1408" y1="832" y2="1360" x1="1408" />
            <wire x2="1696" y1="832" y2="832" x1="1408" />
            <wire x2="2768" y1="1024" y2="2112" x1="2768" />
            <wire x2="2832" y1="1024" y2="1024" x1="2768" />
        </branch>
        <branch name="Clk">
            <wire x2="192" y1="448" y2="448" x1="176" />
            <wire x2="208" y1="448" y2="448" x1="192" />
            <wire x2="192" y1="448" y2="640" x1="192" />
            <wire x2="784" y1="640" y2="640" x1="192" />
            <wire x2="192" y1="640" y2="1360" x1="192" />
            <wire x2="784" y1="1360" y2="1360" x1="192" />
            <wire x2="192" y1="1360" y2="1520" x1="192" />
            <wire x2="784" y1="1520" y2="1520" x1="192" />
            <wire x2="192" y1="1520" y2="1776" x1="192" />
            <wire x2="1584" y1="1776" y2="1776" x1="192" />
            <wire x2="1824" y1="1776" y2="1776" x1="1584" />
            <wire x2="1584" y1="1776" y2="2192" x1="1584" />
            <wire x2="2816" y1="2192" y2="2192" x1="1584" />
            <wire x2="1696" y1="128" y2="128" x1="1584" />
            <wire x2="1584" y1="128" y2="1776" x1="1584" />
            <wire x2="2816" y1="128" y2="2192" x1="2816" />
            <wire x2="2832" y1="128" y2="128" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="176" y="448" name="Clk" orien="R180" />
    </sheet>
</drawing>