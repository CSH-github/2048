----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:35 10/24/2017 
-- Design Name: 
-- Module Name:    testaa - Behavioral 
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

entity testaa is
    Port ( key1 : in  STD_LOGIC;
           key2 : in  STD_LOGIC;
			  cin  : in STD_LOGIC;
           led1 : out  STD_LOGIC;
           led2 : out  STD_LOGIC);
end testaa;

architecture Behavioral of testaa is
		Signal temp1,temp2,temp3,temp4,temp5:std_logic;

begin
		temp1 <= key1 xor key2;
		led1 <= temp1 xor cin;
		temp2 <= key1 and key2;
		temp3 <= key1 and cin;
		temp4 <= key2 and cin;
		temp5 <= temp2 or temp3;
		led2 <= temp4 or temp5;
end Behavioral;

