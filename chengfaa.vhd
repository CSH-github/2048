----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:07 06/11/2017 
-- Design Name: 
-- Module Name:    chengfaa - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity chengfaa is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
	        en : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (3 downto 0);
           c : inout  STD_LOGIC_VECTOR (15 downto 0));
end chengfaa;

architecture Behavioral of chengfaa is

begin
    Process(a,en)
	 begin 
	 C<="1111111111111111";
	 if(en='1')then
	 when"0000"=>c(0)<='0';
	 when"0001"=>c(1)<='0';
	 when"0010"=>c(2)<='0';
	 when"0011"=>c(3)<='0';
	 when"0100"=>c(4)<='0';
	 when"0101"=>c(5)<='0';
	 when"0110"=>c(6)<='0';
	 when"0111"=>c(7)<='0';
	 when"1000"=>c(8)<='0';
	 when"1001"=>c(9)<='0';
	 when"1010"=>c(10)<='0';
	 when"1011"=>c(11)<='0';
	 when"1100"=>c(12)<='0';
	 when"1101"=>c(13)<='0';
	 when"1110"=>c(14)<='0';
	 when others =>c(15)<='0';
	 end case;
	 end if;
	 end process;
	 y(0)=not(c(5)and c(7) and c(13) and c(15));
    y(1)=not(c(6)and c(7)and c(9)and c(11)and c(13)and c(14));
    y(2)=not(c(10)and c(11)and c(14));
    y(1)=not(c(15));	 
end Behavioral;

