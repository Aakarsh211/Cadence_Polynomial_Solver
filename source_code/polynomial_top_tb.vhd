library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.polynomial_cfg.all;


entity polynomial_top_tb is
--  Port ( );
end polynomial_top_tb;

architecture Behavioral of polynomial_top_tb is

    constant CLOCK_PERIOD    : time := 10ns; 
    
    component polynomial_top is
    port (PAD_clock, PAD_valid_in, PAD_reset :in std_logic;
        PAD_valid_out : out std_logic;
        PAD_x :in unsigned(in_bits-1 downto 0);
        PAD_y :out unsigned(out_bits-1 downto 0));
    end component polynomial_top;

    signal clock_tb : std_logic := '0';
    signal valid_in_tb : std_logic := '0';
    signal reset_tb : std_logic := '1';
    signal valid_out_tb : std_logic;
    -- Declare an array of unsigned values initialized from 1 to 10
    type X_ARRAY_TYPE is array (0 to 9) of unsigned(in_bits-1 downto 0);
    constant X_TEST_VALUES : X_ARRAY_TYPE :=
        (to_unsigned(1, in_bits),
         to_unsigned(2, in_bits),
         to_unsigned(3, in_bits),
         to_unsigned(4, in_bits),
         to_unsigned(5, in_bits),
         to_unsigned(6, in_bits),
         to_unsigned(7, in_bits),
         to_unsigned(8, in_bits),
         to_unsigned(9, in_bits),
         to_unsigned(10, in_bits));
    signal x_tb : unsigned(in_bits-1 downto 0) := to_unsigned(0, in_bits);
    signal y_tb : unsigned(out_bits-1 downto 0);
    
    begin
    
        clockGenerator : process
        begin
            clock_tb <= not clock_tb;
            wait for CLOCK_PERIOD/2;
        end process clockGenerator;
        
        resetGenerator : process
        begin
            wait until rising_edge(clock_tb);
            wait until rising_edge(clock_tb);
            wait until rising_edge(clock_tb);
            wait until rising_edge(clock_tb);
            wait until rising_edge(clock_tb);
            reset_tb <= '0';
            wait;
        end process resetGenerator;
        
        validGenerator : process
        begin
            wait until falling_edge(reset_tb);
            valid_in_tb <= '1';
            wait;
        end process validGenerator;
        
        dataGenerator: process
            variable falling_edges : integer := 0; -- Counter for rising clock edges
            variable x_test_val_idx : integer := 0; -- Index of current x value to test
            begin
            wait until falling_edge(reset_tb);
            
            x_val_loop : while x_test_val_idx < 10 loop
                x_tb <= X_TEST_VALUES(x_test_val_idx);
                wait_10_clock_cycle_loop : while falling_edges < 10 loop -- Wait for 10 rising edges
                    wait until falling_edge(clock_tb);
                    falling_edges := falling_edges + 1;
                end loop wait_10_clock_cycle_loop;
                falling_edges := 0;
                x_test_val_idx := x_test_val_idx + 1;
            end loop x_val_loop;
            wait;
            
        end process dataGenerator;
        
        -- Assign x_tb to the next index of X_TEST_VALUES
        
        polynomialTop : polynomial_top
            port map (PAD_clock => clock_tb, PAD_valid_in => valid_in_tb, PAD_reset => reset_tb, PAD_valid_out => valid_out_tb, PAD_x => x_tb, PAD_y => y_tb);
    
    

end Behavioral;
