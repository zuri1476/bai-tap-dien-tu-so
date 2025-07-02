library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_BAI13 is
end TB_BAI13;

architecture Behavioral of TB_BAI13 is
    component BAI13
        Port (
            CLK : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal CLK : STD_LOGIC := '0';
    signal Q : STD_LOGIC_VECTOR(3 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin
    uut: BAI13
        port map (
            CLK => CLK,
            Q => Q
        );

    clk_process: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;
end Behavioral;
