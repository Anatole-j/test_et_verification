----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2021 15:20:11
-- Design Name: 
-- Module Name: tb_etape3 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top_level_PGCD_etape3_1000tests is
--  Port ( );
end tb_top_level_PGCD_etape3_1000tests;

architecture Behavioral of tb_top_level_PGCD_etape3_1000tests is
    signal CLK, RESET, idata_en, odata_en : STD_LOGIC;
    signal idata_a, idata_b, odata : STD_LOGIC_VECTOR (31 downto 0);

    component Top_level_PGCD is
        port ( CLK      : in  STD_LOGIC;
               RESET    : in  STD_LOGIC;
        
               idata_a  : in  STD_LOGIC_VECTOR (31 downto 0);
               idata_b  : in  STD_LOGIC_VECTOR (31 downto 0);
               idata_en : in  STD_LOGIC;
        
               odata    : out STD_LOGIC_VECTOR (31 downto 0);
               odata_en : out STD_LOGIC
               );
    end component Top_level_PGCD ;        
    begin
        UUT : Top_level_PGCD
    port map (  CLK => CLK,
            RESET => RESET,
            idata_a => idata_a,
            idata_b => idata_b, 
            idata_en => idata_en,
            odata => odata,
            odata_en => odata_en
            );


    process 
        begin
        
            RESET <= '1';   
            wait  for 20ns;
            RESET <= '0';
            wait for 20ns;
            
			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(56482, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(31987, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(62287, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(56886, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(45486, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(58043, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(17337, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(37898, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(9561, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(48845, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(19829, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(61368, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(32004, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(28645, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(49817, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(59014, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(42901, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(34901, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(34893, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5862, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(11356, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(34112, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 4, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(44292, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(23251, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(58773, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(36018, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(11616, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(64587, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(32334, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(15386, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(10897, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(3016, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(9563, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(37763, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(27170, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(43090, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 10, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(15745, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(56175, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 5, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(44094, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(52857, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(31386, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(43438, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(56453, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(44248, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(32228, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(22356, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 4, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(27934, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(29195, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(50080, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(42380, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 20, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(58023, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(41791, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(7025, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(139, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(35461, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(7842, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(21175, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(61901, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 7, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(57929, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(22262, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(50970, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(29379, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(10292, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(49342, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(19434, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(31240, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(50553, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(33396, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(29873, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(49263, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(18925, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5134, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(6466, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(31871, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(62769, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5912, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5083, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(19662, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(48099, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(44491, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(43303, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(41413, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(46593, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(10042, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(28684, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(14712, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 4, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(42488, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(55181, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(42595, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(26570, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 5, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(17148, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(61437, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5674, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(32705, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(30547, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(52063, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 11, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(62533, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(64260, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(18626, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(48690, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(27862, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(59679, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(3587, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(52540, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(13291, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(62098, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(49381, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(20661, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(6894, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(18818, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(56294, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(45446, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(1392, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(57869, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(13803, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(41995, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(7465, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(41260, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 5, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(57972, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(20467, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(656, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(59012, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 4, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(42521, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(14368, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5533, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(39651, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(55824, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(52080, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 48, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(3307, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(43790, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(50253, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(33033, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 21, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(37652, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(63333, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(27521, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(38226, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(14481, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(3043, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(45217, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(30840, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(47990, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(40635, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 5, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(48593, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(16134, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(10800, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(22828, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 4, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(53186, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(36166, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(40651, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(48737, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 13, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(47391, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(46493, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(51081, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(26370, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(56053, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(8695, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5452, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(59802, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(6378, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(4397, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(36162, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(28644, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 42, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(9972, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(238, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(44319, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(25787, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(36117, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(27167, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(61055, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(1101, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(1135, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(57152, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(9151, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(27964, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(41213, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(32215, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(48158, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(5905, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(4873, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(8789, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 11, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(11995, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(19431, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(61151, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(24301, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(3147, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(17252, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(40595, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(41795, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 5, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(708, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(39563, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(37012, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(11797, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(43149, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(34269, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 3, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(50133, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(59480, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(19394, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(23632, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 2, 32)
				SEVERITY FAILURE;

			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(11296, 32) );
			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(55903, 32) );
			idata_en <= '1';
			wait for 20 ns;
			while odata_en = '0' loop
				idata_en <= '0';
				wait for 10 ns;
			end loop;
			ASSERT UNSIGNED(odata) = TO_UNSIGNED( 1, 32)
				SEVERITY FAILURE;


            
            
           
        end process;
    
    
    process 
        begin
            CLK <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
    end process;
    
end Behavioral;
