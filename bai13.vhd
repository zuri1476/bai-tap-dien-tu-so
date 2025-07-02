library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BAI13 is
    Port (
        CLK : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(3 downto 0)
    );
end BAI13;

architecture Behavioral of BAI13 is
    signal Q_tmp : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal T0, T1, T2, T3 : STD_LOGIC;
begin
    T0 <= '0';
    T1 <= '1';
    T2 <= Q_tmp(1);
    T3 <= Q_tmp(2) and Q_tmp(1);

    FF0: entity work.T_FF
        port map (
            T => T0,
            CLK => CLK,
            Q => Q_tmp(0)
        );

    FF1: entity work.T_FF
        port map (
            T => T1,
            CLK => CLK,
            Q => Q_tmp(1)
        );

    FF2: entity work.T_FF
        port map (
            T => T2,
            CLK => CLK,
            Q => Q_tmp(2)
        );

    FF3: entity work.T_FF
        port map (
            T => T3,
            CLK => CLK,
            Q => Q_tmp(3)
        );

    Q <= Q_tmp;

end Behavioral;
