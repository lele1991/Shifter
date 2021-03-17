--biblioteca
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--entidade
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter is
    
    port(
        input : in std_logic_vector(7 downto 0);
        shift_cntrl : in std_logic_vector(1 downto 0);
        shift_out : out std_logic_vector(15 downto 0)
    );
end entity shifter;

--arquitetura
--architecture RTL of entityName is
architecture RTL of shifter is 
begin
    process (input, shift_cntrl)
    begin
        --Se shift_cntrl � zero, shift_out[7:0] igual a input[7:0]
        --se o control for zero, deixa 7:0 igual � entrada e os bits 15:8 n�o fazem nada, logo s�o zerados

        -- n�mero depois do parenteses(0) e preenche at� data_out'length(retorna a quantidade de bits do data_out)
        --data_out <= to_unsigned(0, data_out'length);
        
        shift_out <= (others => '0');
        if shift_cntrl = "00" then
            shift_out(7 downto 0) <= input(7 downto 0);
        elsif shift_cntrl = "01" then
            shift_out(11 downto 4) <= input(7 downto 0);
        elsif shift_cntrl = "10" then
            shift_out(15 downto 8) <= input(7 downto 0);
        else
            shift_out(7 downto 0) <= input(7 downto 0);
        end if;
    end process;    
    
end architecture RTL;
