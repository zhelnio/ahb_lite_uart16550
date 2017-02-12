




module mfp_ahb_lite_uart16550(
    //ABB-Lite side
    input                               HCLK,    
    input                               HRESETn,
    input       [ 31 : 0 ]              HADDR,
    input       [  2 : 0 ]              HBURST,
    input                               HMASTLOCK,  // ignored
    input       [ 3:0]                  HPROT,      // ignored
    input                               HSEL,
    input       [  2 : 0 ]              HSIZE,
    input       [  1 : 0 ]              HTRANS,
    input       [ 31 : 0 ]              HWDATA,
    input                               HWRITE,
    output  reg [ 31 : 0 ]              HRDATA,
    output                              HREADY,
    output                              HRESP,
    input                               SI_Endian,  // ignored

    //UART side
    input 								srx_pad_i;
    output 								stx_pad_o;

    //UART Modem side
    output 								rts_pad_o;
    input 								cts_pad_i;
    output 								dtr_pad_o;
    input 								dsr_pad_i;
    input 								ri_pad_i;
    input 								dcd_pad_i;

    //UART baudrate output
    output                              baud_o;
)



endmodule
