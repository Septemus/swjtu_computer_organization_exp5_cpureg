library verilog;
use verilog.vl_types.all;
entity exp5 is
    port(
        clk             : in     vl_logic;
        RA              : in     vl_logic_vector(1 downto 0);
        wr              : in     vl_logic;
        rd              : in     vl_logic;
        M               : in     vl_logic_vector(1 downto 0);
        clr             : in     vl_logic;
        KEY_R           : in     vl_logic_vector(3 downto 0);
        key_clr         : in     vl_logic;
        KEY_C           : out    vl_logic_vector(3 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        PC              : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(2 downto 0);
        N               : out    vl_logic_vector(31 downto 0);
        codeout         : out    vl_logic_vector(7 downto 0)
    );
end exp5;
