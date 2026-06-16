/*
library IEEE;
use IEEE.std_logic_1164.ALL;


ENTITY top IS
        PORT( A: IN std_logic;
                        B: IN std_logic;
                        S: OUT std_logic;
                        C: OUT std_logic);
END;


ARCHITECTURE adder OF top IS
BEGIN
        S <= A XOR B;
        C <= A AND B;
end adder;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Half_Subtractor is
    Port (
        A          : in  STD_LOGIC;
        B          : in  STD_LOGIC;
        D                 : out STD_LOGIC;
        B                 : out STD_LOGIC
    );
end Half_Subtractor;


architecture Behavioral of Half_Subtractor is
begin
    D <= A xor B;
    B     <= (not A) and B;
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Full_Adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        CIN   : in  STD_LOGIC;
        S   : out STD_LOGIC;
        COUT  : out STD_LOGIC
    );
end Full_Adder;


architecture Behavioral of Full_Adder is
begin
    S  <= A xor B xor CIN;
    COUT <= (A and B) or ((A xor B) and CIN);
end Behavioral;


*/


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Full_Subtractor is
    Port (
        A          : in  STD_LOGIC;
        B          : in  STD_LOGIC;
        BIN        : in  STD_LOGIC;
        D : out STD_LOGIC;
        BO     : out STD_LOGIC
    );
end Full_Subtractor;


architecture Behavioral of Full_Subtractor is
begin
    D <= A xor B xor BIN;


    BO <= ((not A) and B) or
              ((not (A xor B)) and BIN);
end Behavioral;