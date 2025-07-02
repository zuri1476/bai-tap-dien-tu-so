library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter_Mod6_JK is
    Port (
        clk   : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR(2 downto 0)
    );
end Counter_Mod6_JK;

architecture Behaviaral of Counter_Mod6_JK is

    component JK_FF
        Port (
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC
        );
    end component;

    signal Q0, Q1, Q2 : STD_LOGIC := '0';
    signal Q0n, Q1n, Q2n : STD_LOGIC;
    
begin
    count <= Q2 & Q1 & Q0;
    FF0: JK_FF port map(
        clk => clk,
        J => '1',
        K => '1',
        Q => Q0,
        Q_inv => Q0n
    );

    FF1: JK_FF port map(
        clk => clk,
        J => Q0 and not Q2,
        K => Q0,
        Q => Q1,
        Q_inv => Q1n
    );

    FF2: JK_FF port map(
        clk => clk,
        J => Q1 and Q0,
        K => Q0,
        Q => Q2,
        Q_inv => Q2n
    );
    
end Behaviaral;