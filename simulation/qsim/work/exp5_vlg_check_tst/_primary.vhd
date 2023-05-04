library verilog;
use verilog.vl_types.all;
entity exp5_vlg_check_tst is
    port(
        N               : in     vl_logic_vector(31 downto 0);
        PC              : in     vl_logic_vector(7 downto 0);
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        codeout         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end exp5_vlg_check_tst;
