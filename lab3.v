library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 


entity Datapath is
    Port(
        clk   : in STD_LOGIC;
        loadA : in STD_LOGIC;
        loadD : in STD_LOGIC;


        B     : in STD_LOGIC_VECTOR(7 downto 0);
        C     : in STD_LOGIC_VECTOR(7 downto 0);


        A_out : out STD_LOGIC_VECTOR(7 downto 0);
        D_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Datapath;


architecture Behavioral of Datapath is


    signal adder_result : STD_LOGIC_VECTOR(7 downto 0);
    signal regA         : STD_LOGIC_VECTOR(7 downto 0);
    signal shift_result : STD_LOGIC_VECTOR(7 downto 0);
    signal regD         : STD_LOGIC_VECTOR(7 downto 0);


begin


    adder_result <= std_logic_vector(
        unsigned(B) + unsigned(C));


    process(clk)
    begin
        if rising_edge(clk) then


            if loadA = '1' then
                regA <= adder_result;
            end if;


            if loadD = '1' then
                regD <= shift_result;
            end if;


        end if;
    end process;


    shift_result <= regA(6 downto 0) & '0';


    A_out <= regA;
    D_out <= regD;


end Behavioral;