library verilog;
use verilog.vl_types.all;
entity exp5_vlg_sample_tst is
    port(
        DATA_INPUT      : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        RA              : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        rd              : in     vl_logic;
        wr              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exp5_vlg_sample_tst;
