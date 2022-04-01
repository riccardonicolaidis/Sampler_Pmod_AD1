module Sampler_top_module
(
    input  logic clk,
    input  logic reset_high,
    input  logic [8:0] adc_a_p, adc_a_n,  // 6 analog channels
    input  logic vp_in, vn_in,
    input  logic A0_in,
    input  logic A1_in,

    output logic [3:0] led,
    output logic tx,
    output logic o_SCK,
    output logic o_CS_not
);

// PARAMETERS 
parameter N_XADC_CH   = 2;                    // Number of channels (XADC)
parameter N_T         = 32;                   // Number of bits from TIME MEASURING
parameter N_P         = 12;                   // Number of bits for peak detection
parameter N_PMOD      = 1;                    // Number of Pmods
parameter N_CH        = N_XADC_CH + 2*N_PMOD; // Total number of channels 

// #################################
// RESET  -> ACTIVE LOW DEFINITION
// #################################
logic  reset_low;               // Wire combinational 
assign reset_low = ~reset_high; // Active low reset




// Signal declaration 
wire         [N_T-1:0] time_ms;                     // TIME ms
wire  signed [N_P-1:0] A                [N_CH-1:0]; // Sampled channels (wire bus array)
logic signed [N_P-1:0] A_unipolar       [N_CH-1:0]; // Sampled channels (wire bus array)
wire                   Visualize_pulse;             // Pulse to display data on UART


// *************************************
// TIME MEASUREMENT
// *************************************
Module_Time_Measurement Time_Measurement
(
    .clk(clk),
    .reset(reset_low),
    .out(time_ms)
);


// **************************************
//  XADC WRAPPING CIRCUIT 
// **************************************

XADC_module 
#(
    .N_CH(N_XADC_CH),   // Number of channels 
    .N_P(N_P)           // Number of bits 12
)
XADC_WRAPPING_CIRCUIT
(
    .clk(clk),         // clock 
    .reset(reset_low), // reset low 

    .adc_a_p(adc_a_p), // input analog  
    .adc_a_n(adc_a_n), // input analog
    .vp_in(vp_in),
    .vn_in(vn_in),
    .A(A[N_XADC_CH-1:0]),             // A Digitalized 12-bit OUT
    .A_pulse()         // A ready pulse 
);


// *****************************************
//      PMOD_ADC_WRAPPING_CIRCUIT
// *****************************************

/*
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
*/

pmod_adc_ad7476a
#
(
    .clk_freq(32'd100),
    .spi_clk_div(32'd3)
)
WRAPPING_CIRCUIT_PMOD_AD1
(
    .clk(clk),
    .reset_n(reset_high),
    .data_in_0(A0_in),
    .data_in_1(A1_in),
    .sck(o_SCK),
    .cs_n(o_CS_not),
    .adc_0_data(A[N_CH-2]),
    .adc_1_data(A[N_CH-1])
);

// *****************************************
//      PULSE GENERATOR FOR PRINTER
// *****************************************
Pulse_generator PULSE_GEN_10Hz
(
    .clk(clk),
    .reset(reset_low), 
    .period(30'd10000000), // 100_000_000
    .pulse_out(Visualize_pulse)
);


// Need to create a bridge to collact also the data coming from the Pmod
genvar i;
generate
    for(i=0; i<= (N_XADC_CH-1); i=i+1) begin
        assign A_unipolar[i] = {(!A[i][N_P-1]),(A[i][(N_P-2):0])};
    end

    for(i=N_XADC_CH; i<=(N_CH-1);i = i+1) begin 
        assign A_unipolar[i] = A[i];
    end
endgenerate 



Printer_uart
#(
    .N_T(N_T),
    .N_P(N_P),
    .N_CH(N_CH),
    .ADDR_WIDTH(8)
)
UART_DISPLAY
(
    .clk(clk),
    .reset(reset_low),
    .time_event(time_ms),        // Time of the event
    .A_peak_event(A_unipolar),            // Peak values array of the event
    .DAQ_pulse(Visualize_pulse), // Output pulse to send data to memory or uart
    .tx(tx),
    .control_state(led)
);






endmodule
