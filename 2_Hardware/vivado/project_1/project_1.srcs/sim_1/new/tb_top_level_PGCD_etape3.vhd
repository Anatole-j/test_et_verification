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
entity tb_top_level_PGCD_etape3 is
--  Port ( );
end tb_top_level_PGCD_etape3;

architecture Behavioral of tb_top_level_PGCD_etape3 is
    signal CLK, RESET, idata_en, odata_en : STD_LOGIC;
    signal idata_a, idata_b, odata : STD_LOGIC_VECTOR (31 downto 0);
    
    component top_level_PGCD is
        port ( CLK      : in  STD_LOGIC;
               RESET    : in  STD_LOGIC;
        
               idata_a  : in  STD_LOGIC_VECTOR (31 downto 0);
               idata_b  : in  STD_LOGIC_VECTOR (31 downto 0);
               idata_en : in  STD_LOGIC;
        
               odata    : out STD_LOGIC_VECTOR (31 downto 0);
               odata_en : out STD_LOGIC
               );
    end component top_level_PGCD ;        
    begin
        UUT : top_level_PGCD
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
            
            
            
            
            -- partie 3 --
            idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 10, 32) );
            idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 80, 32) );
            idata_en <= '1';
            wait for 20 ns;
            while odata_en = '0' loop
                idata_en <= '0';
                wait for 10 ns;
            end loop;
            
            ASSERT UNSIGNED(odata) = TO_UNSIGNED( 11, 32) 
                REPORT "PGCD incorrect"
                SEVERITY FAILURE;

            idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 18, 32) );
            idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 12, 32) );
            idata_en <= '1';
            wait for 20 ns;
            while odata_en = '0' loop
                idata_en <= '0';
                wait for 10 ns;
            end loop;
            ASSERT (UNSIGNED(odata) = TO_UNSIGNED( 6, 32)) SEVERITY FAILURE;
            
--            -- partie 2 --    
--            idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 15, 32) );
--            idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 80, 32) );
--            idata_en <= '1';
--            wait for 20 ns;
--            while odata_en = '0' loop
--                idata_en <= '0';
--                wait for 10 ns;
--            end loop;
            
--            idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 18, 32) );
--            idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED( 12, 32) );
--            idata_en <= '1';
--            wait for 20 ns;
--            while odata_en = '0' loop
--                idata_en <= '0';
--                wait for 10 ns;
--            end loop;

--            -- partie 1--
--            idata_en <= '0';              
--            wait for 1000 ns;              
            
--            while odata_en = '0' loop
--                idata_en <= '0';
--                wait for 40 ns;
--            end loop;
        end process;
    
    
    process 
        begin
            CLK <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
    end process;
    
end Behavioral;
