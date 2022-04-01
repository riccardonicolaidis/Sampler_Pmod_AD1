// Filename:  Read_ADC.v
// ADC Readout for Digilent PMOD AD1, which has two Analog Devices AD7476A 12-bit ADCs
// Written by Peter Halverson and posted on http://halverscience.net/  Nov. 4, 2019
// Based on UART RX from http://www.nandland.com
 
module Read_ADC_Pmod_AD1
#(
    parameter ADC_CLKS_PER_BIT = 25 // ADC clocks per bit
)
(
   input  logic        reset,
   input  logic        i_Clock,
   input  logic        i_ADC_Data_Serial_0,
   input  logic        i_ADC_Data_Serial_1,
   input  logic        i_ADC_Data_Requested,  // Set this to True when you want an ADC readout
   output logic        o_ADC_Data_Valid_0,      // When this is true, it means the adc data is ready
   output logic        o_ADC_Data_Valid_1,      // When this is true, it means the adc data is ready
   output logic [11:0] o_ADC_Data_0,            //Its a 12 bit ADC
   output logic [11:0] o_ADC_Data_1,            //Its a 12 bit ADC
   output logic        o_ADC_Chip_Select_Not, // The ~CS line is active when False
   output logic        o_ADC_Clock            // Falling edge requests next bit, bit is read on rising edge
);
   
localparam IDLE                 = 2'b00;   // State Machine states
localparam ADC_CONVERSION_DELAY = 2'b01;   // Not needed? Datasheet says 10 ns minimum is needed.
localparam READ_DATA_BITS       = 2'b10;
localparam CLEANUP              = 2'b11;
 
logic [7:0]     r_Clock_Count;
logic [3:0]     r_Bit_Index; //4 zero bits + 12 data bits = 16 bits total
logic [15:0]    r_ADC_Data_0;  // First 4 bits always zero
logic           r_ADC_Data_Valid_0;
logic [15:0]    r_ADC_Data_1;  // First 4 bits always zero
logic           r_ADC_Data_Valid_1;
logic [2:0]     r_SM_Main;  // STATE   
logic           r_ADC_Chip_Select_Not;
logic           r_ADC_Clock;
logic [7:0]     r_Delay_Clock_Count;
logic           r_Got_The_Bit;

// Initialisation of the regs (it is Synthesisable)
initial begin
    r_Clock_Count         = 8'd0;
    r_Bit_Index           = 4'd15; //4 zero bits + 12 data bits = 16 bits total
    r_ADC_Data_0          = 15'd0; // First 4 bits always zero
    r_ADC_Data_Valid_0    = 1'b0;
    r_ADC_Data_1          = 15'd0; // First 4 bits always zero
    r_ADC_Data_Valid_1    = 1'b0;
    r_SM_Main             = 0;     // STATE REG
    r_ADC_Chip_Select_Not = 1;
    r_ADC_Clock           = 1;
    r_Delay_Clock_Count   = 0;
    r_Got_The_Bit         = 1'b0;
end


// Read ADC state machine
always_ff @(posedge i_Clock, posedge reset) begin
    if(reset) begin // Asynchronous reset
        r_Clock_Count         <= 8'd0;
        r_Bit_Index           <= 4'd15; //4 zero bits + 12 data bits = 16 bits total
        r_ADC_Data_0          <= 15'd0; // First 4 bits always zero
        r_ADC_Data_Valid_0    <= 1'b0;
        r_ADC_Data_1          <= 15'd0; // First 4 bits always zero
        r_ADC_Data_Valid_1    <= 1'b0;
        r_SM_Main             <= 0;     // STATE REG  
        r_ADC_Chip_Select_Not <= 1;
        r_ADC_Clock           <= 1;
        r_Delay_Clock_Count   <= 0;
        r_Got_The_Bit         <= 1'b0;
    end else begin 
        case (r_SM_Main)
        IDLE : begin   // IDLE STATE (unstable if requested is high)
            r_ADC_Data_Valid_0  <= 1'b0;    // Data are not ready
            r_ADC_Data_Valid_1  <= 1'b0;    // Data are not ready
            r_Clock_Count       <= 0;       // Clock count is 0
            r_Delay_Clock_Count <= 0;       // Set delay to 0
            r_Bit_Index         <= 14;      // ADC send 15 bits (not 16)   High order bits first
            r_ADC_Clock         <= 1'b1;    // ADC clock 1
            if (i_ADC_Data_Requested == 1'b1) begin  // UNSTABLE STATE IF REQUESTED IS HIGH
                r_SM_Main             <= ADC_CONVERSION_DELAY;
                r_ADC_Chip_Select_Not <= 1'b0;  // Start the conversion !CS goes down!
            end else begin
                r_SM_Main             <= IDLE;   // Otherwise stay in the IDLE state
                r_ADC_Chip_Select_Not <= 1'b1;   // Don't start the conversion
            end
        end // case: IDLE
        ADC_CONVERSION_DELAY : begin   // CONVERSION DELAY
            if (r_Delay_Clock_Count < 0) begin   // Adjust to give time for ADC to start a conversion
            // 0 gives 80 ns (Three cycles of 25 MHz clock), 1 gives 120 ns, 2 gives 160 ns, etc
            r_Delay_Clock_Count <= r_Delay_Clock_Count + 1;
            r_SM_Main           <= ADC_CONVERSION_DELAY;
            end else begin
            r_Delay_Clock_Count <= 0;
            r_SM_Main           <= READ_DATA_BITS;
            end
        end // case: ADC_CONVERSION_DELAY
        READ_DATA_BITS : begin
            if (r_Clock_Count < ADC_CLKS_PER_BIT-1) begin
                if (r_Clock_Count < (ADC_CLKS_PER_BIT/2)) begin
                    r_ADC_Clock   <= 1'b0;     // Falling edge tells ADC to output a bit
                    r_Got_The_Bit <= 1'b0;
                end else begin
                    r_ADC_Clock <= 1'b1;     // Rising edge is when we get the bit.  (It is now stable)
                    if (r_Got_The_Bit == 1'b0) begin
                        r_ADC_Data_0[r_Bit_Index] <= i_ADC_Data_Serial_0;  // GET THE DATA BIT!!
                        r_ADC_Data_1[r_Bit_Index] <= i_ADC_Data_Serial_1;  // GET THE DATA BIT!!
                        r_Got_The_Bit             <= 1'b1;   //We want to latch the bit only once
                        // Check if we have received all bits
                        if (r_Bit_Index > 0) begin      // We need to get more bits (We get 16 bits, 1st four are zero)
                            r_Bit_Index <= r_Bit_Index - 1;  //ADC send bit 15 first, then bit 14, ...
                            r_SM_Main   <= READ_DATA_BITS;
                        end else begin
                            r_ADC_Data_Valid_0    <= 1'b1;         // All 15 bits are now valid. Tell caller to get the data.
                            r_ADC_Data_Valid_1    <= 1'b1;         // All 15 bits are now valid. Tell caller to get the data.
                            r_ADC_Chip_Select_Not <= 1'b1;    // Stop the conversion
                            r_SM_Main             <= CLEANUP;
                        end
                    end
                end
            r_Clock_Count <= r_Clock_Count + 1;
            end else begin
            r_Clock_Count <= 0;
            end
        end // case: READ_DATA_BITS      
        CLEANUP : begin      // Stay here 1 clock
            // r_Delay_Clock_Count <= 0;
            r_SM_Main            <= IDLE;
            r_ADC_Data_Valid_0   <= 1'b0;
            r_ADC_Data_Valid_1   <= 1'b0;
        end // case: CLEANUP       
        default :
            r_SM_Main <= IDLE;
        endcase
    end
  end    

assign o_ADC_Data_Valid_0      = r_ADC_Data_Valid_0;
assign o_ADC_Data_0            = r_ADC_Data_0[11:0];
assign o_ADC_Data_Valid_1      = r_ADC_Data_Valid_1;
assign o_ADC_Data_1            = r_ADC_Data_1[11:0];
assign o_ADC_Chip_Select_Not   = r_ADC_Chip_Select_Not;
assign o_ADC_Clock             = r_ADC_Clock;


endmodule // Read_ADC
