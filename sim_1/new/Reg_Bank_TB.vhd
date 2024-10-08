----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2023 01:54:42 PM
-- Design Name: 
-- Module Name: RegBank_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_Bank_TB is
--  Port ( );
end Reg_Bank_TB;

architecture Behavioral of Reg_Bank_TB is

component Reg_Bank is
Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
       RegEn : in STD_LOGIC_VECTOR (2 downto 0);
       Reset : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Out0 : out STD_LOGIC_VECTOR (3 downto 0);
       Out1 : out STD_LOGIC_VECTOR (3 downto 0);
       Out2 : out STD_LOGIC_VECTOR (3 downto 0);
       Out3 : out STD_LOGIC_VECTOR (3 downto 0);
       Out4 : out STD_LOGIC_VECTOR (3 downto 0);
       Out5 : out STD_LOGIC_VECTOR (3 downto 0);
       Out6 : out STD_LOGIC_VECTOR (3 downto 0);
       Out7 : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;

signal D, Out0, Out1, Out2, Out3, Out4, Out5, Out6, Out7 : std_logic_vector (3 downto 0);
signal regEn : std_logic_vector (2 downto 0);
signal Clk, Reset : std_logic;

begin

UUT : Reg_Bank Port Map (
    D => D,
    Reset => Reset,
    Out0 => Out0,
    Out1 => Out1,
    Out2 => Out2,
    Out3 => Out3,
    Out4 => Out4,
    Out5 => Out5,
    Out6 => Out6,
    Out7 => Out7,
    Clk => Clk,
    RegEn => regEn);
    
process
    begin
        Clk <= '0';
        wait for 100ns;
        while true loop
            Clk <= not(Clk);
            wait for 100ns;
            Clk <= not(Clk);
            wait for 100ns;
        end loop;
    end process;
    
process
    begin
        regEn <= "110";
        D <= "0110";
        wait for 200ns;
        regEn <= "010";
        D <= "1000";
        wait;
end process;

end Behavioral;