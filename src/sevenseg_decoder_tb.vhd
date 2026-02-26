----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Rachel Chen
-- 
-- Create Date: 02/26/2026 08:17:41 AM
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: ECE 281 Lab 2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    -- Component Declaration
    component sevenseg_decoder is
        Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
               o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component sevenseg_decoder;


    signal w_in  : std_logic_vector(3 downto 0) := x"0";
    signal w_out : std_logic_vector(6 downto 0);

begin

    sevenseg_decode : sevenseg_decoder port map (
        i_Hex   => w_in(3 downto 0),
        o_seg_n => w_out(6 downto 0)
    );

    test_process : process
    begin
    
    w_in <= x"0"; wait for 10 ns;
        assert w_out = "1000000" report "error with 0" severity failure;
    w_in <= x"1"; wait for 10 ns;
        assert w_out = "1111001" report "error with 1" severity failure;
    w_in <= x"2"; wait for 10 ns;
        assert w_out = "0100100" report "error with 2" severity failure;
    w_in <= x"3"; wait for 10 ns;
        assert w_out = "0110000" report "error with 3" severity failure;
    w_in <= x"4"; wait for 10 ns;
        assert w_out = "0011001" report "error with 4" severity failure;
    w_in <= x"5"; wait for 10 ns;
        assert w_out = "0010010" report "error with 5" severity failure;
    w_in <= x"6"; wait for 10 ns;
        assert w_out = "0000010" report "error with 6" severity failure;
    w_in <= x"7"; wait for 10 ns;
        assert w_out = "1111000" report "error with 7" severity failure;
    w_in <= x"8"; wait for 10 ns;
        assert w_out = "0000000" report "error with 8" severity failure;
    w_in <= x"9"; wait for 10 ns;
        assert w_out = "0011000" report "error with 9" severity failure;
    w_in <= x"A"; wait for 10 ns;
        assert w_out = "0001000" report "error with A" severity failure;
    w_in <= x"B"; wait for 10 ns;
        assert w_out = "0000011" report "error with B" severity failure;
    w_in <= x"C"; wait for 10 ns;
        assert w_out = "0100111" report "error with C" severity failure;
    w_in <= x"D"; wait for 10 ns;
        assert w_out = "0100001" report "error with D" severity failure;
    w_in <= x"E"; wait for 10 ns;
        assert w_out = "0000110" report "error with E" severity failure;
    w_in <= x"F"; wait for 10 ns;
        assert w_out = "0001110" report "error with F" severity failure;
    
    
    wait;
    
    end process;

end Behavioral;
