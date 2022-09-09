library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity JA_pin_manager_v1_0 is
	generic (
		-- Users to add parameters here
        outType1                 : string := "StandardIO"; --"PWM" and "PULSE"
        outType2                 : string := "StandardIO";
        outType3                 : string := "StandardIO";
        outType4                 : string := "StandardIO";
        outType5                 : string := "StandardIO";
        outType6                 : string := "StandardIO";
        outType7                 : string := "StandardIO";
        outType8                 : string := "StandardIO";
        pwmFrequency1            : integer := 20;
        pwmFrequency2            : integer := 20;
        pwmFrequency3            : integer := 20;
        pwmFrequency4            : integer := 20;
        pwmFrequency5            : integer := 20;
        pwmFrequency6            : integer := 20;
        pwmFrequency7            : integer := 20;
        pwmFrequency8            : integer := 20;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        JAoutputPin1            : inout std_logic := '0';
        JAoutputPin2            : inout std_logic := '0';
        JAoutputPin3            : inout std_logic := '0';
        JAoutputPin4            : inout std_logic := '0';
        JAoutputPin5            : inout std_logic := '0';
        JAoutputPin6            : inout std_logic := '0';
        JAoutputPin7            : inout std_logic := '0';
        JAoutputPin8            : inout std_logic := '0';
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end JA_pin_manager_v1_0;

architecture arch_imp of JA_pin_manager_v1_0 is

	-- component declaration
	component JA_pin_manager_v1_0_S00_AXI is
		generic (
        outType1                 : string := "StandardIO";
        outType2                 : string := "StandardIO";
        outType3                 : string := "StandardIO";
        outType4                 : string := "StandardIO";
        outType5                 : string := "StandardIO";
        outType6                 : string := "StandardIO";
        outType7                 : string := "StandardIO";
        outType8                 : string := "StandardIO";
        pwmFrequency1            : integer := 20;
        pwmFrequency2            : integer := 20;
        pwmFrequency3            : integer := 20;
        pwmFrequency4            : integer := 20;
        pwmFrequency5            : integer := 20;
        pwmFrequency6            : integer := 20;
        pwmFrequency7            : integer := 20;
        pwmFrequency8            : integer := 20;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
        JAoutputPin1            : inout std_logic := '0';
        JAoutputPin2            : inout std_logic := '0';
        JAoutputPin3            : inout std_logic := '0';
        JAoutputPin4            : inout std_logic := '0';
        JAoutputPin5            : inout std_logic := '0';
        JAoutputPin6            : inout std_logic := '0';
        JAoutputPin7            : inout std_logic := '0';
        JAoutputPin8            : inout std_logic := '0';
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component JA_pin_manager_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
JA_pin_manager_v1_0_S00_AXI_inst : JA_pin_manager_v1_0_S00_AXI
	generic map (
        outType1 => outType1,
        outType2 => outType2,
        outType3 => outType3,
        outType4 => outType4,
        outType5 => outType5,
        outType6 => outType6,
        outType7 => outType7,
        outType8 => outType8,
        pwmFrequency1  => pwmFrequency1,
        pwmFrequency2  => pwmFrequency2,
        pwmFrequency3  => pwmFrequency3,
        pwmFrequency4  => pwmFrequency4,
        pwmFrequency5  => pwmFrequency5,
        pwmFrequency6  => pwmFrequency6,
        pwmFrequency7  => pwmFrequency7,
        pwmFrequency8  => pwmFrequency8,
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
        JAoutputPin1  => JAoutputPin1,
        JAoutputPin2  => JAoutputPin2,
        JAoutputPin3  => JAoutputPin3,
        JAoutputPin4  => JAoutputPin4,
        JAoutputPin5  => JAoutputPin5,
        JAoutputPin6  => JAoutputPin6,
        JAoutputPin7  => JAoutputPin7,
        JAoutputPin8  => JAoutputPin8,
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
