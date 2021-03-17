library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is

end entity testbench;

architecture RTL of testbench is
    signal inputT : std_logic_vector (7 downto 0);
    signal shift_cntrlT : std_logic_vector (1 downto 0);
    signal shift_outT :  std_logic_vector (15 downto 0);
    
begin
    dut_shifter: entity work.shifter
        port map(
        --esqerda _vhd >> direita testbench
        input => inputT,
        shift_cntrl => shift_cntrlT,
        shift_out => shift_outT
        );
        
    process
    begin
        inputT <= "00001111";
        shift_cntrlT <= "00";    
        wait for 20 ns;
        
        shift_cntrlT <= "01";    
        wait for 20 ns;
        
        shift_cntrlT <= "10";    
        wait for 20 ns; 
        
        shift_cntrlT <= "11";       
        wait;
        
    end process;
        
end architecture RTL;