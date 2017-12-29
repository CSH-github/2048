----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:20 12/28/2017 
-- Design Name: 
-- Module Name:    sanba - Behavioral 
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

entity sanba is
Port(a: in STD_LOGIC;
	b:in STD_LOGIC;
	c: in STD_LOGIC;
	d:in STD_LOGIC;
	signal en:in std_logic;
	DOUT: out std_logic_vector(3 downto 0));
end sanba;

architecture Behavioral of sanba is
signal DIN: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal y:STD_LOGIC_VECTOR(15 DOWNTO 0);
begin
	DIN<=A&B&C&D;
process(A,B,C,D,en)
begin
	Y<="1111111111111111";
	if(en='1')then
  case DIN is
    when"0000"=>y(0)<='0';
	 when"0001"=>y(1)<='0';
	 when"0010"=>y(2)<='0';
	 when"0011"=>y(3)<='0';
	 when"0100"=>y(4)<='0';
	 when"0101"=>y(5)<='0';
	 when"0110"=>y(6)<='0';
	 when"0111"=>y(7)<='0';
	 when"1000"=>y(8)<='0';
	 when"1001"=>y(9)<='0';
	 when"1010"=>y(10)<='0';
	 when"1011"=>y(11)<='0';
	 when"1100"=>y(12)<='0';
	 when"1101"=>y(13)<='0';
	 when"1110"=>y(14)<='0';
	 when others=>y(15)<='0';
  end case;
  end if;
  end process;
	DOUT(3)<=not(y(15));
	DOUT(2)<=not(y(10) and y(11) and y(14));
	DOUT(1)<=not(y(6) and y(7) and y(9) and y(11) and y(13) and y(14));
	DOUT(0)<=not(y(5) and y(7) and y(13) and y(15));
end Behavioral;

