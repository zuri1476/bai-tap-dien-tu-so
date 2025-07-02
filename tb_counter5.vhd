library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FF_CNT_TB is
end JK_FF_CNT_TB;

architecture Behavioral of JK_FF_CNT_TB is
    
    component JK_FF_CNT
        Port (
            CLK : in STD_LOGIC;
            Q : out std_logic_vector(2 downto 0)
        );
    end component;

   
    signal CLK : STD_LOGIC := '0';
    signal Q : std_logic_vector(2 downto 0);

    
    constant CLK_PERIOD : time := 10 ns;

begin
   
    uut: JK_FF_CNT
        Port map (
            CLK => CLK,
            Q => Q
        );

   
    clock_process: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

   
    stim_proc: process
    begin
       
        wait for 100 ns;

       
        

   
        wait;
    end process;

end Behavioral;
