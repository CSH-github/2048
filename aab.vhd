----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:54 12/28/2017 
-- Design Name: 
-- Module Name:    aab - Behavioral 
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

entity aab is
port (
	Signal sel: in std_logic_vector(2 downto 0);
	Signal en: in std_logic;
	Signal y: out std_logic_vector(7 downto 0)
	);
end aab;

architecture Behavioral of aab is

begin
process (sel,en)
begin
y<="11111111";
if(en = '1') then
case sel is
	when"000" => y(0) <= '0';
	when"001" => y(1) <= '0';
	when"010" => y(2) <= '0';
	when"011" => y(3) <= '0';
	when"100" => y(4) <= '0';
	when"101" => y(5) <= '0';
	when"110" => y(6) <= '0';
	when others => y(7) <= '0';
	end case;
	end if;
	end process;
end Behavioral;

