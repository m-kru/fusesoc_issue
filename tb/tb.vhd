library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity tb is
end entity;

architecture tb_arch of tb is

    constant CLK_PERIOD : time := 10 ns;
    signal   clk   : std_logic := '0';

    signal d, q : std_logic := '0';

begin

    clk <= not clk after CLK_PERIOD/2;

   ent_0: entity work.ent
   port map (
     clk => clk,
     d => d,
     q => q
   );

    main: process
    begin
        wait for 2 * CLK_PERIOD;
        d <= '1';
        wait for 2 * CLK_PERIOD;
        std.env.finish;
    end process;

end architecture;
