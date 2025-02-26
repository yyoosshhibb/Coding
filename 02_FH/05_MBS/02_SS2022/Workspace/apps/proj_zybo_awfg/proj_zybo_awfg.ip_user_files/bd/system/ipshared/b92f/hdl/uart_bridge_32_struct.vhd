-- VHDL Entity sbus_awfg_lib.uart_bridge_32.symbol
--
-- Created:
--          by - Net.UNKNOWN (M00443)
--          at - 12:20:04 15.06.2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
library work;
use work.utilities.all;

entity uart_bridge_32 is
   generic( 
      core_clk_freq_g : integer := 50000000;
      baudrate_g      : integer := 115200;
      simulate_g      : boolean := false;
      commandfile_g   : string  := "command.txt"
   );
   port( 
      bus_ack  : in     std_logic;
      bus_din  : in     std_logic_vector (31 downto 0);
      clk      : in     std_logic;
      reset    : in     std_logic;
      rxd      : in     std_logic;
      bus_addr : out    std_logic_vector (15 downto 0);
      bus_be   : out    std_logic_vector (3 downto 0);
      bus_dout : out    std_logic_vector (31 downto 0);
      bus_rd   : out    std_logic;
      bus_we   : out    std_logic;
      txd      : out    std_logic
   );

-- Declarations

end uart_bridge_32 ;

--
-- VHDL Architecture sbus_awfg_lib.uart_bridge_32.struct
--
-- Created:
--          by - Net.UNKNOWN (M00443)
--          at - 13:19:50 15.06.2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2017.1a (Build 5)
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
library work;
use work.utilities.all;

library sbus_awfg_lib;

architecture struct of uart_bridge_32 is

   -- Architecture declarations

   -- Internal signal declarations
   signal bus_grant   : std_logic;
   signal bus_request : std_logic;
   signal cmd         : std_logic_vector(7 downto 0);
   signal cmd_we      : std_logic;
   signal eof         : std_logic;
   signal response    : std_logic_vector(7 downto 0);
   signal response_en : std_logic;
   signal slv_ack     : std_logic;
   signal slv_cs      : std_logic;
   signal slv_din     : std_logic;
   signal slv_we      : std_logic;
   signal tx_ack      : std_logic;                       -- transmit acknowledge


   -- Component Declarations
   component bus_bridge_16
   port (
      bus_ack     : in     std_logic ;
      bus_din     : in     std_logic_vector (31 downto 0);
      bus_grant   : in     std_logic ;
      clk         : in     std_logic ;
      cmd         : in     std_logic_vector (7 downto 0);
      cmd_we      : in     std_logic ;
      reset       : in     std_logic ;
      slv_cs      : in     std_logic ;
      slv_din     : in     std_logic ;
      slv_we      : in     std_logic ;
      tx_ack      : in     std_logic ;
      bus_addr    : out    std_logic_vector ( 15 downto 0 );
      bus_dout    : out    std_logic_vector (31 downto 0);
      bus_rd      : out    std_logic ;
      bus_request : out    std_logic ;
      bus_we      : out    std_logic ;
      response    : out    std_logic_vector (7 downto 0);
      response_en : out    std_logic ;
      slv_ack     : out    std_logic 
   );
   end component;
   component buscmd_b16_filesel
   generic (
      COMMANDS : string := "buscommands.txt"
   );
   port (
      bus_addr    : out    std_logic_vector ( 15 downto 0 );
      bus_we      : out    std_logic ;
      bus_dout    : out    std_logic_vector (31 downto 0);
      bus_rd      : out    std_logic ;
      bus_din     : in     std_logic_vector (31 downto 0);
      clk         : in     std_logic ;
      reset       : in     std_logic ;
      bus_ack     : in     std_logic ;
      eof         : out    std_logic ;
      bus_request : out    std_logic ;
      bus_grant   : in     std_logic 
   );
   end component;
   component uart_top
   generic (
      core_clk_freq_g : integer := 50000000;
      baudrate_g      : integer := 9600
   );
   port (
      clk    : in     std_logic ;
      din    : in     std_logic_vector (7 downto 0);
      reset  : in     std_logic ;
      rxd    : in     std_logic ;
      we     : in     std_logic ;
      dout   : out    std_logic_vector (7 downto 0);
      rx_ack : out    std_logic ;
      tx_ack : out    std_logic ;                  -- transmit acknowledge
      txd    : out    std_logic 
   );
   end component;


begin
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   -- eb1 1           
   bus_grant <= '1';    
   bus_be <= (others => '0');                         


   -- Instance port mappings.

   g0: IF not simulate_g GENERATE
   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : bus_bridge_16 use entity sbus_awfg_lib.bus_bridge_16;
   for all : uart_top use entity sbus_awfg_lib.uart_top;
   -- pragma synthesis_on

   begin
      I6 : uart_top
         generic map (
            core_clk_freq_g => core_clk_freq_g,
            baudrate_g      => baudrate_g
         )
         port map (
            clk    => clk,
            din    => response,
            reset  => reset,
            rxd    => rxd,
            we     => response_en,
            dout   => cmd,
            rx_ack => cmd_we,
            tx_ack => tx_ack,
            txd    => txd
         );
      I1 : bus_bridge_16
         port map (
            bus_ack     => bus_ack,
            bus_din     => bus_din,
            bus_grant   => bus_grant,
            clk         => clk,
            cmd         => cmd,
            cmd_we      => cmd_we,
            reset       => reset,
            slv_cs      => slv_cs,
            slv_din     => slv_din,
            slv_we      => slv_we,
            tx_ack      => tx_ack,
            bus_addr    => bus_addr,
            bus_dout    => bus_dout,
            bus_rd      => bus_rd,
            bus_request => bus_request,
            bus_we      => bus_we,
            response    => response,
            response_en => response_en,
            slv_ack     => slv_ack
         );
   end generate g0;

   g1: IF simulate_g GENERATE
   -- Optional embedded configurations
   -- pragma synthesis_off
   for all : buscmd_b16_filesel use entity sbus_awfg_lib.buscmd_b16_filesel;
   -- pragma synthesis_on

   begin
      I0 : buscmd_b16_filesel
         generic map (
            COMMANDS => commandfile_g
         )
         port map (
            bus_addr    => bus_addr,
            bus_we      => bus_we,
            bus_dout    => bus_dout,
            bus_rd      => bus_rd,
            bus_din     => bus_din,
            clk         => clk,
            reset       => reset,
            bus_ack     => bus_ack,
            eof         => eof,
            bus_request => bus_request,
            bus_grant   => bus_grant
         );
   end generate g1;

end struct;
