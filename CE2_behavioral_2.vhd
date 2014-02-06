----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:09 02/05/2014 
-- Design Name: 
-- Module Name:    CE2_behavioral_2 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CE2_behavioral_2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end CE2_behavioral_2;

architecture Behavioral of CE2_behavioral_2 is

signal I0_not, I1_not: STD_LOGIC;

begin

I0_not <= not I0;
I1_not <= not I1;
Y0 <= I0_not and I1_not and EN;
Y1 <= I0 and I1_not and EN;
Y2 <= EN and I1 and I0_not;
Y3 <= EN and I1 and I0;

end Behavioral;

