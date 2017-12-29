----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:10 06/04/2017 
-- Design Name: 
-- Module Name:    okok - Behavioral 
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

entity okok is
    Port ( key1 : in  STD_LOGIC;
           key2 : in  STD_LOGIC;
           led1 : out  STD_LOGIC;
           led2 : out  STD_LOGIC);
end okok;

architecture Behavioral of okok is

begin
    led1<=key1;
	 led2<=key2;

end Behavioral;

