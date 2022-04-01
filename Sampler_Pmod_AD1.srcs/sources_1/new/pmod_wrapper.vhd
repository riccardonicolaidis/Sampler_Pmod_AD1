--------------------------------------------------------------------------------
--
--   FileName:         pmod_adc_ad7476a.vhd
--   Dependencies:     spi_master_dual_miso.vhd
--   Design Software:  Quartus Prime Version 17.0.0 Build 595 SJ Lite Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 12/19/2019 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pmod_adc_ad7476a IS
  GENERIC(
    clk_freq    :  INTEGER := 100; --system clock frequency in MHz
    spi_clk_div :  INTEGER := 3);  --spi_clk_div = clk_freq/40 (answer rounded up)
  PORT(
    clk         :  IN      STD_LOGIC;                      --system clock
    reset_n     :  IN      STD_LOGIC;                      --active low reset
    data_in_0   :  IN      STD_LOGIC;                      --channel 0 serial data from ADC
    data_in_1   :  IN      STD_LOGIC;                      --channel 1 serial data from ADC
    sck         :  BUFFER  STD_LOGIC;                      --serial clock
    cs_n        :  BUFFER  STD_LOGIC_VECTOR(0 DOWNTO 0);   --chip select
    adc_0_data  :  OUT     STD_LOGIC_VECTOR(11 DOWNTO 0);  --channel 0 ADC result
    adc_1_data  :  OUT     STD_LOGIC_VECTOR(11 DOWNTO 0)); --channel 1 ADC result
END pmod_adc_ad7476a;

ARCHITECTURE behavior OF pmod_adc_ad7476a IS
  SIGNAL  spi_rx_data_0  : STD_LOGIC_VECTOR(15 DOWNTO 0);  --latest channel 0 data received
  SIGNAL  spi_rx_data_1  : STD_LOGIC_VECTOR(15 DOWNTO 0);  --latest channel 1 data received
  SIGNAL  spi_ena        : STD_LOGIC;                      --enable for spi bus
  SIGNAL  spi_busy       : STD_LOGIC;                      --busy signal from spi bus
   
  --declare SPI Master component
  COMPONENT spi_master_dual_miso IS
    GENERIC(
      slaves  : INTEGER := 1;   --number of spi slaves
      d_width : INTEGER := 16); --data bus width
    PORT(
      clock     : IN     STD_LOGIC;                             --system clock
      reset_n   : IN     STD_LOGIC;                             --asynchronous reset
      enable    : IN     STD_LOGIC;                             --initiate transaction
      cpol      : IN     STD_LOGIC;                             --spi clock polarity
      cpha      : IN     STD_LOGIC;                             --spi clock phase
      cont      : IN     STD_LOGIC;                             --continuous mode command
      clk_div   : IN     INTEGER;                               --system clock cycles per 1/2 period of sclk
      addr      : IN     INTEGER;                               --address of slave
      tx_data   : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
      miso_0    : IN     STD_LOGIC;                             --master in, slave out, channel 0
      miso_1    : IN     STD_LOGIC;                             --master in, slave out, channel 1
      sclk      : BUFFER STD_LOGIC;                             --spi clock
      ss_n      : BUFFER STD_LOGIC_VECTOR(slaves-1 DOWNTO 0);   --slave select
      mosi      : OUT    STD_LOGIC;                             --master out, slave in
      busy      : OUT    STD_LOGIC;                             --busy / data ready signal
      rx_data_0 : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received, channel 0
      rx_data_1 : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)); --data received, channel 1
    END COMPONENT spi_master_dual_miso;

BEGIN

  --instantiate and configure the SPI Master component
  spi_master_dual_miso_0:  spi_master_dual_miso
    GENERIC MAP(slaves => 1, d_width => 16)
    PORT MAP(clock     => clk, 
             reset_n   => reset_n, 
             enable    => spi_ena, 
             cpol      => '1',
             cpha      => '1', 
             cont      => '0', 
             clk_div   => spi_clk_div, 
             addr      => 0,
             tx_data   => (OTHERS => '0'), 
             miso_0    => data_in_0, 
             miso_1    => data_in_1,
             sclk      => sck, 
             ss_n      => cs_n, 
             mosi      => open, 
             busy      => spi_busy, 
             rx_data_0 => spi_rx_data_0, 
             rx_data_1 => spi_rx_data_1);

  PROCESS(clk,reset_n)
    VARIABLE count :  INTEGER := 0;
  BEGIN
    IF(reset_n = '0') THEN                --asynchronous reset
      count := 0;                           --clear clock counter
      spi_ena <= '0';                       --clear enable signal for serial interface
    ELSIF(clk'EVENT AND clk = '1') THEN   --rising system clock edge
      IF(spi_busy = '0') THEN               --serial transaction with ADC not in process
        IF(count < clk_freq/20-2) THEN        --wait at least 50ns between serial transactions
          count := count + 1;                   --increment clock counter
          spi_ena <= '0';                       --do not enable serial transaction
        ELSE                                  --50ns wait time met
          spi_ena <= '1';                       --enable next serial transaction to get data
        END IF;
      ELSE                                 --serial transaction with ADC in process
        count := 0;                          --clear clock counter
        spi_ena <= '0';                      --clear enable signal for next transaction
      END IF;
    END IF;
  END PROCESS;

  adc_0_data <= spi_rx_data_0(12 DOWNTO 1); --assign channel 0 ADC data bits to output        
  adc_1_data <= spi_rx_data_1(12 DOWNTO 1); --assign channel 1 ADC data bits to output
 
END behavior;
