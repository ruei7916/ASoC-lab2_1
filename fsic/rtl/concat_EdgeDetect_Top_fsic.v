
//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  localparam stallOff = 0; 
  wire                  stall_ctrl;
  assign stall_ctrl = stallOff;

  assign idat = dat;
  assign rdy = irdy && !stall_ctrl;
  assign ivld = vld && !stall_ctrl;

endmodule


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_in_wait_coupled_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_coupled_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  assign idat = dat;
  assign rdy = irdy;
  assign ivld = vld;

endmodule


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  localparam stallOff = 0; 
  wire stall_ctrl;
  assign stall_ctrl = stallOff;

  assign dat = idat;
  assign irdy = rdy && !stall_ctrl;
  assign vld = ivld && !stall_ctrl;

endmodule



//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_out_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2015 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_out_v1 (dat, idat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output   [width-1:0] dat;
  input    [width-1:0] idat;

  wire     [width-1:0] dat;

  assign dat = idat;

endmodule




//------> ../EdgeDetect_IP_EdgeDetect_MagAng.v2/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   m112061603@ws34
//  Generated date: Sun Apr 14 20:47:03 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, MCOL_C_0_tr0, MROW_C_0_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [3:0] fsm_output;
  reg [3:0] fsm_output;
  input MCOL_C_0_tr0;
  input MROW_C_0_tr0;


  // FSM State Type Declaration for EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_1
  parameter
    main_C_0 = 2'd0,
    MCOL_C_0 = 2'd1,
    MROW_C_0 = 2'd2,
    main_C_1 = 2'd3;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_1
    case (state_var)
      MCOL_C_0 : begin
        fsm_output = 4'b0010;
        if ( MCOL_C_0_tr0 ) begin
          state_var_NS = MROW_C_0;
        end
        else begin
          state_var_NS = MCOL_C_0;
        end
      end
      MROW_C_0 : begin
        fsm_output = 4'b0100;
        if ( MROW_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = MCOL_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 4'b1000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 4'b0001;
        state_var_NS = MCOL_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= main_C_0;
    end
    else if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_staller
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_staller (
  clk, rst, arst_n, run_wen, run_wten, dx_in_rsci_wen_comp, dy_in_rsci_wen_comp,
      dat_in_rsci_wen_comp, dat_out_rsci_wen_comp
);
  input clk;
  input rst;
  input arst_n;
  output run_wen;
  output run_wten;
  reg run_wten;
  input dx_in_rsci_wen_comp;
  input dy_in_rsci_wen_comp;
  input dat_in_rsci_wen_comp;
  input dat_out_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = dx_in_rsci_wen_comp & dy_in_rsci_wen_comp & dat_in_rsci_wen_comp
      & dat_out_rsci_wen_comp;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      run_wten <= 1'b0;
    end
    else if ( rst ) begin
      run_wten <= 1'b0;
    end
    else begin
      run_wten <= ~ run_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl
    (
  run_wten, crc32_dat_out_triosy_obj_iswt0, crc32_dat_out_triosy_obj_biwt
);
  input run_wten;
  input crc32_dat_out_triosy_obj_iswt0;
  output crc32_dat_out_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign crc32_dat_out_triosy_obj_biwt = (~ run_wten) & crc32_dat_out_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl
    (
  run_wten, crc32_pix_in_triosy_obj_iswt0, crc32_pix_in_triosy_obj_biwt
);
  input run_wten;
  input crc32_pix_in_triosy_obj_iswt0;
  output crc32_pix_in_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign crc32_pix_in_triosy_obj_biwt = (~ run_wten) & crc32_pix_in_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp (
  clk, rst, arst_n, dat_out_rsci_oswt, dat_out_rsci_wen_comp, dat_out_rsci_biwt,
      dat_out_rsci_bdwt, dat_out_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input dat_out_rsci_biwt;
  input dat_out_rsci_bdwt;
  output dat_out_rsci_bcwt;
  reg dat_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_wen_comp = (~ dat_out_rsci_oswt) | dat_out_rsci_biwt | dat_out_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else begin
      dat_out_rsci_bcwt <= ~((~(dat_out_rsci_bcwt | dat_out_rsci_biwt)) | dat_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl (
  run_wen, dat_out_rsci_oswt, dat_out_rsci_biwt, dat_out_rsci_bdwt, dat_out_rsci_bcwt,
      dat_out_rsci_irdy, dat_out_rsci_ivld_run_sct
);
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_biwt;
  output dat_out_rsci_bdwt;
  input dat_out_rsci_bcwt;
  input dat_out_rsci_irdy;
  output dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dat_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_bdwt = dat_out_rsci_oswt & run_wen;
  assign dat_out_rsci_biwt = dat_out_rsci_ogwt & dat_out_rsci_irdy;
  assign dat_out_rsci_ogwt = dat_out_rsci_oswt & (~ dat_out_rsci_bcwt);
  assign dat_out_rsci_ivld_run_sct = dat_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci_dat_in_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci_dat_in_wait_ctrl (
  run_wen, dat_in_rsci_iswt0, dat_in_rsci_irdy_run_sct
);
  input run_wen;
  input dat_in_rsci_iswt0;
  output dat_in_rsci_irdy_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign dat_in_rsci_irdy_run_sct = dat_in_rsci_iswt0 & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_dp (
  clk, rst, arst_n, dy_in_rsci_oswt, dy_in_rsci_wen_comp, dy_in_rsci_idat_mxwt, dy_in_rsci_biwt,
      dy_in_rsci_bdwt, dy_in_rsci_bcwt, dy_in_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  input dy_in_rsci_oswt;
  output dy_in_rsci_wen_comp;
  output [35:0] dy_in_rsci_idat_mxwt;
  input dy_in_rsci_biwt;
  input dy_in_rsci_bdwt;
  output dy_in_rsci_bcwt;
  reg dy_in_rsci_bcwt;
  input [35:0] dy_in_rsci_idat;


  // Interconnect Declarations
  reg [35:0] dy_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign dy_in_rsci_wen_comp = (~ dy_in_rsci_oswt) | dy_in_rsci_biwt | dy_in_rsci_bcwt;
  assign dy_in_rsci_idat_mxwt = MUX_v_36_2_2(dy_in_rsci_idat, dy_in_rsci_idat_bfwt,
      dy_in_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dy_in_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dy_in_rsci_bcwt <= 1'b0;
    end
    else begin
      dy_in_rsci_bcwt <= ~((~(dy_in_rsci_bcwt | dy_in_rsci_biwt)) | dy_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( dy_in_rsci_biwt ) begin
      dy_in_rsci_idat_bfwt <= dy_in_rsci_idat;
    end
  end

  function automatic [35:0] MUX_v_36_2_2;
    input [35:0] input_0;
    input [35:0] input_1;
    input  sel;
    reg [35:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_36_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_ctrl (
  run_wen, dy_in_rsci_oswt, dy_in_rsci_biwt, dy_in_rsci_bdwt, dy_in_rsci_bcwt, dy_in_rsci_irdy_run_sct,
      dy_in_rsci_ivld
);
  input run_wen;
  input dy_in_rsci_oswt;
  output dy_in_rsci_biwt;
  output dy_in_rsci_bdwt;
  input dy_in_rsci_bcwt;
  output dy_in_rsci_irdy_run_sct;
  input dy_in_rsci_ivld;


  // Interconnect Declarations
  wire dy_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dy_in_rsci_bdwt = dy_in_rsci_oswt & run_wen;
  assign dy_in_rsci_biwt = dy_in_rsci_ogwt & dy_in_rsci_ivld;
  assign dy_in_rsci_ogwt = dy_in_rsci_oswt & (~ dy_in_rsci_bcwt);
  assign dy_in_rsci_irdy_run_sct = dy_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_dp (
  clk, rst, arst_n, dx_in_rsci_oswt, dx_in_rsci_wen_comp, dx_in_rsci_idat_mxwt, dx_in_rsci_biwt,
      dx_in_rsci_bdwt, dx_in_rsci_bcwt, dx_in_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  input dx_in_rsci_oswt;
  output dx_in_rsci_wen_comp;
  output [35:0] dx_in_rsci_idat_mxwt;
  input dx_in_rsci_biwt;
  input dx_in_rsci_bdwt;
  output dx_in_rsci_bcwt;
  reg dx_in_rsci_bcwt;
  input [35:0] dx_in_rsci_idat;


  // Interconnect Declarations
  reg [35:0] dx_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign dx_in_rsci_wen_comp = (~ dx_in_rsci_oswt) | dx_in_rsci_biwt | dx_in_rsci_bcwt;
  assign dx_in_rsci_idat_mxwt = MUX_v_36_2_2(dx_in_rsci_idat, dx_in_rsci_idat_bfwt,
      dx_in_rsci_bcwt);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dx_in_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dx_in_rsci_bcwt <= 1'b0;
    end
    else begin
      dx_in_rsci_bcwt <= ~((~(dx_in_rsci_bcwt | dx_in_rsci_biwt)) | dx_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( dx_in_rsci_biwt ) begin
      dx_in_rsci_idat_bfwt <= dx_in_rsci_idat;
    end
  end

  function automatic [35:0] MUX_v_36_2_2;
    input [35:0] input_0;
    input [35:0] input_1;
    input  sel;
    reg [35:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_36_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_ctrl (
  run_wen, dx_in_rsci_oswt, dx_in_rsci_biwt, dx_in_rsci_bdwt, dx_in_rsci_bcwt, dx_in_rsci_irdy_run_sct,
      dx_in_rsci_ivld
);
  input run_wen;
  input dx_in_rsci_oswt;
  output dx_in_rsci_biwt;
  output dx_in_rsci_bdwt;
  input dx_in_rsci_bcwt;
  output dx_in_rsci_irdy_run_sct;
  input dx_in_rsci_ivld;


  // Interconnect Declarations
  wire dx_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dx_in_rsci_bdwt = dx_in_rsci_oswt & run_wen;
  assign dx_in_rsci_biwt = dx_in_rsci_ogwt & dx_in_rsci_ivld;
  assign dx_in_rsci_ogwt = dx_in_rsci_oswt & (~ dx_in_rsci_bcwt);
  assign dx_in_rsci_irdy_run_sct = dx_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj (
  crc32_dat_out_triosy_lz, run_wten, crc32_dat_out_triosy_obj_iswt0
);
  output crc32_dat_out_triosy_lz;
  input run_wten;
  input crc32_dat_out_triosy_obj_iswt0;


  // Interconnect Declarations
  wire crc32_dat_out_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) crc32_dat_out_triosy_obj (
      .ld(crc32_dat_out_triosy_obj_biwt),
      .lz(crc32_dat_out_triosy_lz)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl
      EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_crc32_dat_out_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .crc32_dat_out_triosy_obj_iswt0(crc32_dat_out_triosy_obj_iswt0),
      .crc32_dat_out_triosy_obj_biwt(crc32_dat_out_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj (
  crc32_pix_in_triosy_lz, run_wten, crc32_pix_in_triosy_obj_iswt0
);
  output crc32_pix_in_triosy_lz;
  input run_wten;
  input crc32_pix_in_triosy_obj_iswt0;


  // Interconnect Declarations
  wire crc32_pix_in_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) crc32_pix_in_triosy_obj (
      .ld(crc32_pix_in_triosy_obj_biwt),
      .lz(crc32_pix_in_triosy_lz)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl
      EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_crc32_pix_in_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .crc32_pix_in_triosy_obj_iswt0(crc32_pix_in_triosy_obj_iswt0),
      .crc32_pix_in_triosy_obj_biwt(crc32_pix_in_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci (
  clk, rst, arst_n, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, run_wen, dat_out_rsci_oswt,
      dat_out_rsci_wen_comp, dat_out_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input [33:0] dat_out_rsci_idat;


  // Interconnect Declarations
  wire dat_out_rsci_biwt;
  wire dat_out_rsci_bdwt;
  wire dat_out_rsci_bcwt;
  wire dat_out_rsci_irdy;
  wire dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd9),
  .width(32'sd34)) dat_out_rsci (
      .irdy(dat_out_rsci_irdy),
      .ivld(dat_out_rsci_ivld_run_sct),
      .idat(dat_out_rsci_idat),
      .rdy(dat_out_rsc_rdy),
      .vld(dat_out_rsc_vld),
      .dat(dat_out_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt),
      .dat_out_rsci_irdy(dat_out_rsci_irdy),
      .dat_out_rsci_ivld_run_sct(dat_out_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_dat_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci (
  dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, run_wen, dat_in_rsci_oswt, dat_in_rsci_wen_comp,
      dat_in_rsci_idat_mxwt
);
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input run_wen;
  input dat_in_rsci_oswt;
  output dat_in_rsci_wen_comp;
  output [31:0] dat_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dat_in_rsci_irdy_run_sct;
  wire dat_in_rsci_ivld;
  wire [31:0] dat_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_coupled_v1 #(.rscid(32'sd3),
  .width(32'sd32)) dat_in_rsci (
      .rdy(dat_in_rsc_rdy),
      .vld(dat_in_rsc_vld),
      .dat(dat_in_rsc_dat),
      .irdy(dat_in_rsci_irdy_run_sct),
      .ivld(dat_in_rsci_ivld),
      .idat(dat_in_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci_dat_in_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci_dat_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_iswt0(dat_in_rsci_oswt),
      .dat_in_rsci_irdy_run_sct(dat_in_rsci_irdy_run_sct)
    );
  assign dat_in_rsci_idat_mxwt = dat_in_rsci_idat;
  assign dat_in_rsci_wen_comp = (~ dat_in_rsci_oswt) | dat_in_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci (
  clk, rst, arst_n, dy_in_rsc_dat, dy_in_rsc_vld, dy_in_rsc_rdy, run_wen, dy_in_rsci_oswt,
      dy_in_rsci_wen_comp, dy_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dy_in_rsc_dat;
  input dy_in_rsc_vld;
  output dy_in_rsc_rdy;
  input run_wen;
  input dy_in_rsci_oswt;
  output dy_in_rsci_wen_comp;
  output [35:0] dy_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dy_in_rsci_biwt;
  wire dy_in_rsci_bdwt;
  wire dy_in_rsci_bcwt;
  wire dy_in_rsci_irdy_run_sct;
  wire dy_in_rsci_ivld;
  wire [35:0] dy_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd2),
  .width(32'sd36)) dy_in_rsci (
      .rdy(dy_in_rsc_rdy),
      .vld(dy_in_rsc_vld),
      .dat(dy_in_rsc_dat),
      .irdy(dy_in_rsci_irdy_run_sct),
      .ivld(dy_in_rsci_ivld),
      .idat(dy_in_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dy_in_rsci_oswt(dy_in_rsci_oswt),
      .dy_in_rsci_biwt(dy_in_rsci_biwt),
      .dy_in_rsci_bdwt(dy_in_rsci_bdwt),
      .dy_in_rsci_bcwt(dy_in_rsci_bcwt),
      .dy_in_rsci_irdy_run_sct(dy_in_rsci_irdy_run_sct),
      .dy_in_rsci_ivld(dy_in_rsci_ivld)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_dy_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_in_rsci_oswt(dy_in_rsci_oswt),
      .dy_in_rsci_wen_comp(dy_in_rsci_wen_comp),
      .dy_in_rsci_idat_mxwt(dy_in_rsci_idat_mxwt),
      .dy_in_rsci_biwt(dy_in_rsci_biwt),
      .dy_in_rsci_bdwt(dy_in_rsci_bdwt),
      .dy_in_rsci_bcwt(dy_in_rsci_bcwt),
      .dy_in_rsci_idat(dy_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci (
  clk, rst, arst_n, dx_in_rsc_dat, dx_in_rsc_vld, dx_in_rsc_rdy, run_wen, dx_in_rsci_oswt,
      dx_in_rsci_wen_comp, dx_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_in_rsc_dat;
  input dx_in_rsc_vld;
  output dx_in_rsc_rdy;
  input run_wen;
  input dx_in_rsci_oswt;
  output dx_in_rsci_wen_comp;
  output [35:0] dx_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dx_in_rsci_biwt;
  wire dx_in_rsci_bdwt;
  wire dx_in_rsci_bcwt;
  wire dx_in_rsci_irdy_run_sct;
  wire dx_in_rsci_ivld;
  wire [35:0] dx_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd36)) dx_in_rsci (
      .rdy(dx_in_rsc_rdy),
      .vld(dx_in_rsc_vld),
      .dat(dx_in_rsc_dat),
      .irdy(dx_in_rsci_irdy_run_sct),
      .ivld(dx_in_rsci_ivld),
      .idat(dx_in_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_ctrl EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dx_in_rsci_oswt(dx_in_rsci_oswt),
      .dx_in_rsci_biwt(dx_in_rsci_biwt),
      .dx_in_rsci_bdwt(dx_in_rsci_bdwt),
      .dx_in_rsci_bcwt(dx_in_rsci_bcwt),
      .dx_in_rsci_irdy_run_sct(dx_in_rsci_irdy_run_sct),
      .dx_in_rsci_ivld(dx_in_rsci_ivld)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_dp EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_dx_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_in_rsci_oswt(dx_in_rsci_oswt),
      .dx_in_rsci_wen_comp(dx_in_rsci_wen_comp),
      .dx_in_rsci_idat_mxwt(dx_in_rsci_idat_mxwt),
      .dx_in_rsci_biwt(dx_in_rsci_biwt),
      .dx_in_rsci_bdwt(dx_in_rsci_bdwt),
      .dx_in_rsci_bcwt(dx_in_rsci_bcwt),
      .dx_in_rsci_idat(dx_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_run
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_run (
  clk, rst, arst_n, dx_in_rsc_dat, dx_in_rsc_vld, dx_in_rsc_rdy, dy_in_rsc_dat, dy_in_rsc_vld,
      dy_in_rsc_rdy, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      sw_in, crc32_pix_in_rsc_dat, crc32_pix_in_triosy_lz, crc32_dat_out_rsc_dat,
      crc32_dat_out_triosy_lz, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_in_rsc_dat;
  input dx_in_rsc_vld;
  output dx_in_rsc_rdy;
  input [35:0] dy_in_rsc_dat;
  input dy_in_rsc_vld;
  output dy_in_rsc_rdy;
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_dat;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_dat;
  output crc32_dat_out_triosy_lz;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire dx_in_rsci_wen_comp;
  wire [35:0] dx_in_rsci_idat_mxwt;
  wire dy_in_rsci_wen_comp;
  wire [35:0] dy_in_rsci_idat_mxwt;
  wire dat_in_rsci_wen_comp;
  wire [31:0] dat_in_rsci_idat_mxwt;
  wire dat_out_rsci_wen_comp;
  reg crc32_pix_in_rsci_idat_31;
  reg crc32_pix_in_rsci_idat_30;
  reg crc32_pix_in_rsci_idat_29;
  reg crc32_pix_in_rsci_idat_28;
  reg crc32_pix_in_rsci_idat_27;
  reg crc32_pix_in_rsci_idat_26;
  reg crc32_pix_in_rsci_idat_25;
  reg crc32_pix_in_rsci_idat_24;
  reg crc32_pix_in_rsci_idat_23;
  reg crc32_pix_in_rsci_idat_22;
  reg crc32_pix_in_rsci_idat_21;
  reg crc32_pix_in_rsci_idat_20;
  reg crc32_pix_in_rsci_idat_19;
  reg crc32_pix_in_rsci_idat_18;
  reg crc32_pix_in_rsci_idat_17;
  reg crc32_pix_in_rsci_idat_16;
  reg crc32_pix_in_rsci_idat_15;
  reg crc32_pix_in_rsci_idat_14;
  reg crc32_pix_in_rsci_idat_13;
  reg crc32_pix_in_rsci_idat_12;
  reg crc32_pix_in_rsci_idat_11;
  reg crc32_pix_in_rsci_idat_10;
  reg crc32_pix_in_rsci_idat_9;
  reg crc32_pix_in_rsci_idat_8;
  reg crc32_pix_in_rsci_idat_7;
  reg crc32_pix_in_rsci_idat_6;
  reg crc32_pix_in_rsci_idat_5;
  reg crc32_pix_in_rsci_idat_4;
  reg crc32_pix_in_rsci_idat_3;
  reg crc32_pix_in_rsci_idat_2;
  reg crc32_pix_in_rsci_idat_1;
  reg crc32_pix_in_rsci_idat_0;
  reg crc32_dat_out_rsci_idat_31;
  reg crc32_dat_out_rsci_idat_30;
  reg crc32_dat_out_rsci_idat_29;
  reg crc32_dat_out_rsci_idat_28;
  reg crc32_dat_out_rsci_idat_27;
  reg crc32_dat_out_rsci_idat_26;
  reg crc32_dat_out_rsci_idat_25;
  reg crc32_dat_out_rsci_idat_24;
  reg crc32_dat_out_rsci_idat_23;
  reg crc32_dat_out_rsci_idat_22;
  reg crc32_dat_out_rsci_idat_21;
  reg crc32_dat_out_rsci_idat_20;
  reg crc32_dat_out_rsci_idat_19;
  reg crc32_dat_out_rsci_idat_18;
  reg crc32_dat_out_rsci_idat_17;
  reg crc32_dat_out_rsci_idat_16;
  reg crc32_dat_out_rsci_idat_15;
  reg crc32_dat_out_rsci_idat_14;
  reg crc32_dat_out_rsci_idat_13;
  reg crc32_dat_out_rsci_idat_12;
  reg crc32_dat_out_rsci_idat_11;
  reg crc32_dat_out_rsci_idat_10;
  reg crc32_dat_out_rsci_idat_9;
  reg crc32_dat_out_rsci_idat_8;
  reg crc32_dat_out_rsci_idat_7;
  reg crc32_dat_out_rsci_idat_6;
  reg crc32_dat_out_rsci_idat_5;
  reg crc32_dat_out_rsci_idat_4;
  reg crc32_dat_out_rsci_idat_3;
  reg crc32_dat_out_rsci_idat_2;
  reg crc32_dat_out_rsci_idat_1;
  reg crc32_dat_out_rsci_idat_0;
  reg dat_out_rsci_idat_33;
  reg dat_out_rsci_idat_32;
  reg [7:0] dat_out_rsci_idat_31_24;
  reg [7:0] dat_out_rsci_idat_23_16;
  reg [7:0] dat_out_rsci_idat_15_8;
  reg [7:0] dat_out_rsci_idat_7_0;
  wire [3:0] fsm_output;
  wire MROW_equal_tmp;
  wire or_tmp_68;
  wire or_tmp_81;
  wire or_tmp_82;
  wire and_205_cse;
  wire [8:0] MCOL_for_abs_sum_clip_acc_sat_1_sva_1;
  wire [9:0] nl_MCOL_for_abs_sum_clip_acc_sat_1_sva_1;
  wire [8:0] MCOL_for_abs_sum_clip_acc_sat_2_sva_1;
  wire [9:0] nl_MCOL_for_abs_sum_clip_acc_sat_2_sva_1;
  wire [8:0] MCOL_for_abs_sum_clip_acc_sat_3_sva_1;
  wire [9:0] nl_MCOL_for_abs_sum_clip_acc_sat_3_sva_1;
  wire [8:0] MCOL_for_abs_sum_clip_acc_sat_sva_1;
  wire [9:0] nl_MCOL_for_abs_sum_clip_acc_sat_sva_1;
  reg MCOL_stage_0;
  reg reg_dat_in_rsci_oswt_cse;
  wire MCOL_and_cse;
  wire MCOL_and_3_cse;
  wire EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_and_cse;
  wire and_825_cse;
  reg reg_dat_out_rsci_oswt_cse;
  reg reg_crc32_pix_in_triosy_obj_iswt0_cse;
  wire nand_cse;
  reg [10:0] MCOL_x_sva;
  wire [10:0] z_out;
  wire [11:0] nl_z_out;
  wire [9:0] z_out_1;
  wire [10:0] nl_z_out_1;
  reg [9:0] MROW_y_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva;
  reg EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva;
  wire [7:0] out_pix_23_16_lpi_3_dfm_mx0w1;
  wire [7:0] out_pix_31_24_lpi_3_dfm_mx0w1;
  wire [7:0] out_pix_15_8_lpi_3_dfm_mx0w1;
  wire [7:0] out_pix_7_0_lpi_3_dfm_mx0w1;
  wire [7:0] out_pix_7_0_lpi_3_dfm_mx0;
  wire [7:0] out_pix_15_8_lpi_3_dfm_mx0;
  wire [7:0] out_pix_23_16_lpi_3_dfm_mx0;
  wire [7:0] out_pix_31_24_lpi_3_dfm_mx0;
  wire EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_1_sva_1;
  wire EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_1_sva_1;
  wire xor_cse;
  wire xor_cse_1;
  wire xor_cse_4;
  wire xor_cse_7;
  wire xor_cse_11;
  wire xor_cse_14;
  wire xor_cse_17;
  wire xor_cse_20;
  wire xor_cse_22;
  wire xor_cse_23;
  wire xor_cse_25;
  wire xor_cse_28;
  wire xor_cse_34;
  wire xor_cse_35;
  wire xor_cse_39;
  wire xor_cse_41;
  wire xor_cse_45;
  wire xor_cse_47;
  wire xor_cse_48;
  wire xor_cse_52;
  wire xor_cse_53;
  wire xor_cse_56;
  wire xor_cse_59;
  wire xor_cse_64;
  wire xor_cse_66;
  wire xor_cse_69;
  wire xor_cse_71;
  wire xor_cse_72;
  wire xor_cse_73;
  wire xor_cse_75;
  wire xor_cse_78;
  wire xor_cse_80;
  wire xor_cse_81;
  wire xor_cse_82;
  wire xor_cse_86;
  wire xor_cse_87;
  wire xor_cse_89;
  wire xor_cse_93;
  wire xor_cse_94;
  wire xor_cse_97;
  wire xor_cse_99;
  wire xor_cse_102;
  wire xor_cse_104;
  wire xor_cse_107;
  wire xor_cse_110;
  wire xor_cse_111;
  wire xor_cse_114;
  wire xor_cse_115;
  wire xor_cse_117;
  wire xor_cse_118;
  wire xor_cse_121;
  wire xor_cse_132;
  wire xor_cse_151;
  wire xor_cse_152;
  wire xor_cse_155;
  wire xor_cse_158;
  wire xor_cse_162;
  wire xor_cse_165;
  wire xor_cse_168;
  wire xor_cse_171;
  wire xor_cse_173;
  wire xor_cse_174;
  wire xor_cse_176;
  wire xor_cse_179;
  wire xor_cse_185;
  wire xor_cse_186;
  wire xor_cse_190;
  wire xor_cse_192;
  wire xor_cse_196;
  wire xor_cse_198;
  wire xor_cse_199;
  wire xor_cse_203;
  wire xor_cse_204;
  wire xor_cse_207;
  wire xor_cse_210;
  wire xor_cse_215;
  wire xor_cse_217;
  wire xor_cse_220;
  wire xor_cse_222;
  wire xor_cse_223;
  wire xor_cse_224;
  wire xor_cse_226;
  wire xor_cse_229;
  wire xor_cse_231;
  wire xor_cse_232;
  wire xor_cse_233;
  wire xor_cse_237;
  wire xor_cse_238;
  wire xor_cse_240;
  wire xor_cse_244;
  wire xor_cse_245;
  wire xor_cse_248;
  wire xor_cse_250;
  wire xor_cse_253;
  wire xor_cse_255;
  wire xor_cse_258;
  wire xor_cse_261;
  wire xor_cse_262;
  wire xor_cse_265;
  wire xor_cse_266;
  wire xor_cse_268;
  wire xor_cse_269;
  wire xor_cse_272;
  wire xor_cse_283;
  wire MROW_y_or_cse;

  wire MROW_y_not_1_nl;
  wire not_82_nl;
  wire[7:0] MCOL_for_1_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_1_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[7:0] MCOL_for_1_ac_math_ac_abs_9_8_xabs_xor_nl;
  wire[7:0] MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[7:0] MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_xor_nl;
  wire[7:0] MCOL_for_2_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_2_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[7:0] MCOL_for_2_ac_math_ac_abs_9_8_xabs_xor_nl;
  wire[7:0] MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[7:0] MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_xor_nl;
  wire[7:0] MCOL_for_3_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_3_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[7:0] MCOL_for_3_ac_math_ac_abs_9_8_xabs_xor_nl;
  wire[7:0] MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[7:0] MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_xor_nl;
  wire[7:0] MCOL_for_4_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_4_ac_math_ac_abs_9_8_xabs_acc_nl;
  wire[7:0] MCOL_for_4_ac_math_ac_abs_9_8_xabs_xor_nl;
  wire[7:0] MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[8:0] nl_MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_acc_nl;
  wire[7:0] MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_xor_nl;
  wire MROW_MROW_and_1_nl;
  wire[9:0] MROW_mux_2_nl;
  wire operator_12_true_operator_12_true_and_1_nl;
  wire[8:0] operator_12_true_mux_2_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [31:0] nl_crc32_pix_in_rsci_idat;
  assign nl_crc32_pix_in_rsci_idat = {crc32_pix_in_rsci_idat_31 , crc32_pix_in_rsci_idat_30
      , crc32_pix_in_rsci_idat_29 , crc32_pix_in_rsci_idat_28 , crc32_pix_in_rsci_idat_27
      , crc32_pix_in_rsci_idat_26 , crc32_pix_in_rsci_idat_25 , crc32_pix_in_rsci_idat_24
      , crc32_pix_in_rsci_idat_23 , crc32_pix_in_rsci_idat_22 , crc32_pix_in_rsci_idat_21
      , crc32_pix_in_rsci_idat_20 , crc32_pix_in_rsci_idat_19 , crc32_pix_in_rsci_idat_18
      , crc32_pix_in_rsci_idat_17 , crc32_pix_in_rsci_idat_16 , crc32_pix_in_rsci_idat_15
      , crc32_pix_in_rsci_idat_14 , crc32_pix_in_rsci_idat_13 , crc32_pix_in_rsci_idat_12
      , crc32_pix_in_rsci_idat_11 , crc32_pix_in_rsci_idat_10 , crc32_pix_in_rsci_idat_9
      , crc32_pix_in_rsci_idat_8 , crc32_pix_in_rsci_idat_7 , crc32_pix_in_rsci_idat_6
      , crc32_pix_in_rsci_idat_5 , crc32_pix_in_rsci_idat_4 , crc32_pix_in_rsci_idat_3
      , crc32_pix_in_rsci_idat_2 , crc32_pix_in_rsci_idat_1 , crc32_pix_in_rsci_idat_0};
  wire [31:0] nl_crc32_dat_out_rsci_idat;
  assign nl_crc32_dat_out_rsci_idat = {crc32_dat_out_rsci_idat_31 , crc32_dat_out_rsci_idat_30
      , crc32_dat_out_rsci_idat_29 , crc32_dat_out_rsci_idat_28 , crc32_dat_out_rsci_idat_27
      , crc32_dat_out_rsci_idat_26 , crc32_dat_out_rsci_idat_25 , crc32_dat_out_rsci_idat_24
      , crc32_dat_out_rsci_idat_23 , crc32_dat_out_rsci_idat_22 , crc32_dat_out_rsci_idat_21
      , crc32_dat_out_rsci_idat_20 , crc32_dat_out_rsci_idat_19 , crc32_dat_out_rsci_idat_18
      , crc32_dat_out_rsci_idat_17 , crc32_dat_out_rsci_idat_16 , crc32_dat_out_rsci_idat_15
      , crc32_dat_out_rsci_idat_14 , crc32_dat_out_rsci_idat_13 , crc32_dat_out_rsci_idat_12
      , crc32_dat_out_rsci_idat_11 , crc32_dat_out_rsci_idat_10 , crc32_dat_out_rsci_idat_9
      , crc32_dat_out_rsci_idat_8 , crc32_dat_out_rsci_idat_7 , crc32_dat_out_rsci_idat_6
      , crc32_dat_out_rsci_idat_5 , crc32_dat_out_rsci_idat_4 , crc32_dat_out_rsci_idat_3
      , crc32_dat_out_rsci_idat_2 , crc32_dat_out_rsci_idat_1 , crc32_dat_out_rsci_idat_0};
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst_dat_out_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst_dat_out_rsci_idat
      = {dat_out_rsci_idat_33 , dat_out_rsci_idat_32 , dat_out_rsci_idat_31_24 ,
      dat_out_rsci_idat_23_16 , dat_out_rsci_idat_15_8 , dat_out_rsci_idat_7_0};
  wire  nl_EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst_MCOL_C_0_tr0;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst_MCOL_C_0_tr0 = ~ MCOL_stage_0;
  ccs_out_v1 #(.rscid(32'sd7),
  .width(32'sd32)) crc32_pix_in_rsci (
      .idat(nl_crc32_pix_in_rsci_idat[31:0]),
      .dat(crc32_pix_in_rsc_dat)
    );
  ccs_out_v1 #(.rscid(32'sd8),
  .width(32'sd32)) crc32_dat_out_rsci (
      .idat(nl_crc32_dat_out_rsci_idat[31:0]),
      .dat(crc32_dat_out_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dx_in_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_in_rsc_dat(dx_in_rsc_dat),
      .dx_in_rsc_vld(dx_in_rsc_vld),
      .dx_in_rsc_rdy(dx_in_rsc_rdy),
      .run_wen(run_wen),
      .dx_in_rsci_oswt(reg_dat_in_rsci_oswt_cse),
      .dx_in_rsci_wen_comp(dx_in_rsci_wen_comp),
      .dx_in_rsci_idat_mxwt(dx_in_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dy_in_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_in_rsc_dat(dy_in_rsc_dat),
      .dy_in_rsc_vld(dy_in_rsc_vld),
      .dy_in_rsc_rdy(dy_in_rsc_rdy),
      .run_wen(run_wen),
      .dy_in_rsci_oswt(reg_dat_in_rsci_oswt_cse),
      .dy_in_rsci_wen_comp(dy_in_rsci_wen_comp),
      .dy_in_rsci_idat_mxwt(dy_in_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dat_in_rsci_inst
      (
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .run_wen(run_wen),
      .dat_in_rsci_oswt(reg_dat_in_rsci_oswt_cse),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_in_rsci_idat_mxwt(dat_in_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .run_wen(run_wen),
      .dat_out_rsci_oswt(reg_dat_out_rsci_oswt_cse),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_dat_out_rsci_inst_dat_out_rsci_idat[33:0])
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_pix_in_triosy_obj_inst
      (
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz),
      .run_wten(run_wten),
      .crc32_pix_in_triosy_obj_iswt0(reg_crc32_pix_in_triosy_obj_iswt0_cse)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj EdgeDetect_IP_EdgeDetect_MagAng_run_crc32_dat_out_triosy_obj_inst
      (
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz),
      .run_wten(run_wten),
      .crc32_dat_out_triosy_obj_iswt0(reg_crc32_pix_in_triosy_obj_iswt0_cse)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_staller EdgeDetect_IP_EdgeDetect_MagAng_run_staller_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .dx_in_rsci_wen_comp(dx_in_rsci_wen_comp),
      .dy_in_rsci_wen_comp(dy_in_rsci_wen_comp),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp)
    );
  EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .MCOL_C_0_tr0(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_run_fsm_inst_MCOL_C_0_tr0),
      .MROW_C_0_tr0(MROW_equal_tmp)
    );
  assign MCOL_and_cse = run_wen & ((MCOL_stage_0 & (~ sw_in) & (fsm_output[1])) |
      or_tmp_68);
  assign MCOL_and_3_cse = run_wen & (fsm_output[1]) & MCOL_stage_0;
  assign EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_and_cse = run_wen
      & (or_tmp_81 | or_tmp_82);
  assign MROW_y_or_cse = (fsm_output[0]) | (fsm_output[2]);
  assign and_825_cse = run_wen & (fsm_output[2]) & MROW_equal_tmp;
  assign nand_cse = ~(MCOL_stage_0 & (~((MCOL_x_sva != ({{1{z_out_1[9]}}, z_out_1}))
      | (z_out_1[9]))));
  assign out_pix_23_16_lpi_3_dfm_mx0w1 = MUX_v_8_2_2((MCOL_for_abs_sum_clip_acc_sat_3_sva_1[7:0]),
      8'b11111111, (MCOL_for_abs_sum_clip_acc_sat_3_sva_1[8]));
  assign out_pix_31_24_lpi_3_dfm_mx0w1 = MUX_v_8_2_2((MCOL_for_abs_sum_clip_acc_sat_sva_1[7:0]),
      8'b11111111, (MCOL_for_abs_sum_clip_acc_sat_sva_1[8]));
  assign out_pix_15_8_lpi_3_dfm_mx0w1 = MUX_v_8_2_2((MCOL_for_abs_sum_clip_acc_sat_2_sva_1[7:0]),
      8'b11111111, (MCOL_for_abs_sum_clip_acc_sat_2_sva_1[8]));
  assign out_pix_7_0_lpi_3_dfm_mx0w1 = MUX_v_8_2_2((MCOL_for_abs_sum_clip_acc_sat_1_sva_1[7:0]),
      8'b11111111, (MCOL_for_abs_sum_clip_acc_sat_1_sva_1[8]));
  assign out_pix_7_0_lpi_3_dfm_mx0 = MUX_v_8_2_2((dat_in_rsci_idat_mxwt[7:0]), out_pix_7_0_lpi_3_dfm_mx0w1,
      sw_in);
  assign out_pix_15_8_lpi_3_dfm_mx0 = MUX_v_8_2_2((dat_in_rsci_idat_mxwt[15:8]),
      out_pix_15_8_lpi_3_dfm_mx0w1, sw_in);
  assign out_pix_23_16_lpi_3_dfm_mx0 = MUX_v_8_2_2((dat_in_rsci_idat_mxwt[23:16]),
      out_pix_23_16_lpi_3_dfm_mx0w1, sw_in);
  assign out_pix_31_24_lpi_3_dfm_mx0 = MUX_v_8_2_2((dat_in_rsci_idat_mxwt[31:24]),
      out_pix_31_24_lpi_3_dfm_mx0w1, sw_in);
  assign MCOL_for_1_ac_math_ac_abs_9_8_xabs_xor_nl = (signext_8_1(dx_in_rsci_idat_mxwt[8]))
      ^ (dx_in_rsci_idat_mxwt[7:0]);
  assign nl_MCOL_for_1_ac_math_ac_abs_9_8_xabs_acc_nl = MCOL_for_1_ac_math_ac_abs_9_8_xabs_xor_nl
      + conv_u2u_1_8(dx_in_rsci_idat_mxwt[8]);
  assign MCOL_for_1_ac_math_ac_abs_9_8_xabs_acc_nl = nl_MCOL_for_1_ac_math_ac_abs_9_8_xabs_acc_nl[7:0];
  assign MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_xor_nl = (signext_8_1(dy_in_rsci_idat_mxwt[8]))
      ^ (dy_in_rsci_idat_mxwt[7:0]);
  assign nl_MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_acc_nl = MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_xor_nl
      + conv_u2u_1_8(dy_in_rsci_idat_mxwt[8]);
  assign MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_acc_nl = nl_MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_acc_nl[7:0];
  assign nl_MCOL_for_abs_sum_clip_acc_sat_1_sva_1 = conv_u2u_8_9(MCOL_for_1_ac_math_ac_abs_9_8_xabs_acc_nl)
      + conv_u2u_8_9(MCOL_for_1_ac_math_ac_abs_9_8_1_xabs_acc_nl);
  assign MCOL_for_abs_sum_clip_acc_sat_1_sva_1 = nl_MCOL_for_abs_sum_clip_acc_sat_1_sva_1[8:0];
  assign MCOL_for_2_ac_math_ac_abs_9_8_xabs_xor_nl = (signext_8_1(dx_in_rsci_idat_mxwt[17]))
      ^ (dx_in_rsci_idat_mxwt[16:9]);
  assign nl_MCOL_for_2_ac_math_ac_abs_9_8_xabs_acc_nl = MCOL_for_2_ac_math_ac_abs_9_8_xabs_xor_nl
      + conv_u2u_1_8(dx_in_rsci_idat_mxwt[17]);
  assign MCOL_for_2_ac_math_ac_abs_9_8_xabs_acc_nl = nl_MCOL_for_2_ac_math_ac_abs_9_8_xabs_acc_nl[7:0];
  assign MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_xor_nl = (signext_8_1(dy_in_rsci_idat_mxwt[17]))
      ^ (dy_in_rsci_idat_mxwt[16:9]);
  assign nl_MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_acc_nl = MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_xor_nl
      + conv_u2u_1_8(dy_in_rsci_idat_mxwt[17]);
  assign MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_acc_nl = nl_MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_acc_nl[7:0];
  assign nl_MCOL_for_abs_sum_clip_acc_sat_2_sva_1 = conv_u2u_8_9(MCOL_for_2_ac_math_ac_abs_9_8_xabs_acc_nl)
      + conv_u2u_8_9(MCOL_for_2_ac_math_ac_abs_9_8_1_xabs_acc_nl);
  assign MCOL_for_abs_sum_clip_acc_sat_2_sva_1 = nl_MCOL_for_abs_sum_clip_acc_sat_2_sva_1[8:0];
  assign MCOL_for_3_ac_math_ac_abs_9_8_xabs_xor_nl = (signext_8_1(dx_in_rsci_idat_mxwt[26]))
      ^ (dx_in_rsci_idat_mxwt[25:18]);
  assign nl_MCOL_for_3_ac_math_ac_abs_9_8_xabs_acc_nl = MCOL_for_3_ac_math_ac_abs_9_8_xabs_xor_nl
      + conv_u2u_1_8(dx_in_rsci_idat_mxwt[26]);
  assign MCOL_for_3_ac_math_ac_abs_9_8_xabs_acc_nl = nl_MCOL_for_3_ac_math_ac_abs_9_8_xabs_acc_nl[7:0];
  assign MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_xor_nl = (signext_8_1(dy_in_rsci_idat_mxwt[26]))
      ^ (dy_in_rsci_idat_mxwt[25:18]);
  assign nl_MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_acc_nl = MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_xor_nl
      + conv_u2u_1_8(dy_in_rsci_idat_mxwt[26]);
  assign MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_acc_nl = nl_MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_acc_nl[7:0];
  assign nl_MCOL_for_abs_sum_clip_acc_sat_3_sva_1 = conv_u2u_8_9(MCOL_for_3_ac_math_ac_abs_9_8_xabs_acc_nl)
      + conv_u2u_8_9(MCOL_for_3_ac_math_ac_abs_9_8_1_xabs_acc_nl);
  assign MCOL_for_abs_sum_clip_acc_sat_3_sva_1 = nl_MCOL_for_abs_sum_clip_acc_sat_3_sva_1[8:0];
  assign MCOL_for_4_ac_math_ac_abs_9_8_xabs_xor_nl = (signext_8_1(dx_in_rsci_idat_mxwt[35]))
      ^ (dx_in_rsci_idat_mxwt[34:27]);
  assign nl_MCOL_for_4_ac_math_ac_abs_9_8_xabs_acc_nl = MCOL_for_4_ac_math_ac_abs_9_8_xabs_xor_nl
      + conv_u2u_1_8(dx_in_rsci_idat_mxwt[35]);
  assign MCOL_for_4_ac_math_ac_abs_9_8_xabs_acc_nl = nl_MCOL_for_4_ac_math_ac_abs_9_8_xabs_acc_nl[7:0];
  assign MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_xor_nl = (signext_8_1(dy_in_rsci_idat_mxwt[35]))
      ^ (dy_in_rsci_idat_mxwt[34:27]);
  assign nl_MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_acc_nl = MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_xor_nl
      + conv_u2u_1_8(dy_in_rsci_idat_mxwt[35]);
  assign MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_acc_nl = nl_MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_acc_nl[7:0];
  assign nl_MCOL_for_abs_sum_clip_acc_sat_sva_1 = conv_u2u_8_9(MCOL_for_4_ac_math_ac_abs_9_8_xabs_acc_nl)
      + conv_u2u_8_9(MCOL_for_4_ac_math_ac_abs_9_8_1_xabs_acc_nl);
  assign MCOL_for_abs_sum_clip_acc_sat_sva_1 = nl_MCOL_for_abs_sum_clip_acc_sat_sva_1[8:0];
  assign EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_1_sva_1 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[0]);
  assign EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_1_sva_1 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva
      ^ (dat_in_rsci_idat_mxwt[0]);
  assign MROW_equal_tmp = MROW_y_sva == (z_out_1);
  assign and_205_cse = MROW_equal_tmp & (fsm_output[2]);
  assign or_tmp_68 = MCOL_stage_0 & sw_in & (fsm_output[1]);
  assign or_tmp_81 = (fsm_output[3]) | (fsm_output[0]);
  assign or_tmp_82 = MCOL_stage_0 & (fsm_output[1]);
  assign xor_cse_1 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[7]);
  assign xor_cse_4 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[6]);
  assign xor_cse_7 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[5]);
  assign xor_cse = xor_cse_1 ^ xor_cse_4 ^ xor_cse_7;
  assign xor_cse_11 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[6]);
  assign xor_cse_14 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[3]);
  assign xor_cse_17 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[5]);
  assign xor_cse_20 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[1]);
  assign xor_cse_23 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[7]);
  assign xor_cse_25 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[4]);
  assign xor_cse_22 = xor_cse_23 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ xor_cse_25;
  assign xor_cse_28 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[4]);
  assign xor_cse_35 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[2]);
  assign xor_cse_34 = xor_cse_1 ^ xor_cse_35 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[3]);
  assign xor_cse_39 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[1]);
  assign xor_cse_41 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[4]);
  assign xor_cse_45 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[1]);
  assign xor_cse_47 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[0]);
  assign xor_cse_48 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[5]);
  assign xor_cse_53 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[1]);
  assign xor_cse_52 = xor_cse_53 ^ xor_cse_45 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[7]);
  assign xor_cse_56 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[5]);
  assign xor_cse_59 = xor_cse_47 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_30_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[2]) ^ xor_cse_11;
  assign xor_cse_64 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[2]);
  assign xor_cse_66 = xor_cse_4 ^ xor_cse_56 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[4]);
  assign xor_cse_69 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[4]);
  assign xor_cse_71 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[6]);
  assign xor_cse_72 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[0]);
  assign xor_cse_73 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[3]);
  assign xor_cse_75 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_30_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[2]);
  assign xor_cse_78 = xor_cse_23 ^ xor_cse_53 ^ xor_cse_69;
  assign xor_cse_80 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[3]);
  assign xor_cse_81 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[6]);
  assign xor_cse_82 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[0]);
  assign xor_cse_87 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[0]);
  assign xor_cse_86 = xor_cse_73 ^ xor_cse_87 ^ xor_cse_75;
  assign xor_cse_89 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[4]);
  assign xor_cse_93 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[3]);
  assign xor_cse_94 = xor_cse_11 ^ xor_cse_1 ^ xor_cse_48;
  assign xor_cse_97 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[1]);
  assign xor_cse_99 = xor_cse_23 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[5]);
  assign xor_cse_102 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_30_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[2]);
  assign xor_cse_104 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[0]);
  assign xor_cse_107 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[5]);
  assign xor_cse_110 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[4]);
  assign xor_cse_111 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[4]);
  assign xor_cse_114 = xor_cse_4 ^ xor_cse_35 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[1]);
  assign xor_cse_115 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva
      ^ (out_pix_15_8_lpi_3_dfm_mx0[6]);
  assign xor_cse_117 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[7]);
  assign xor_cse_118 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva
      ^ (out_pix_31_24_lpi_3_dfm_mx0[2]);
  assign xor_cse_121 = xor_cse_4 ^ xor_cse_1 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[1]);
  assign xor_cse_132 = xor_cse_80 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva
      ^ (out_pix_7_0_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva
      ^ (out_pix_23_16_lpi_3_dfm_mx0[7]);
  assign xor_cse_152 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
      ^ (dat_in_rsci_idat_mxwt[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_sva
      ^ (dat_in_rsci_idat_mxwt[31]);
  assign xor_cse_155 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva
      ^ (dat_in_rsci_idat_mxwt[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva
      ^ (dat_in_rsci_idat_mxwt[22]);
  assign xor_cse_158 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva
      ^ (dat_in_rsci_idat_mxwt[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva
      ^ (dat_in_rsci_idat_mxwt[5]);
  assign xor_cse_151 = xor_cse_152 ^ xor_cse_155 ^ xor_cse_158;
  assign xor_cse_162 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva
      ^ (dat_in_rsci_idat_mxwt[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva
      ^ (dat_in_rsci_idat_mxwt[6]);
  assign xor_cse_165 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva
      ^ (dat_in_rsci_idat_mxwt[15]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_sva
      ^ (dat_in_rsci_idat_mxwt[19]);
  assign xor_cse_168 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva
      ^ (dat_in_rsci_idat_mxwt[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva
      ^ (dat_in_rsci_idat_mxwt[21]);
  assign xor_cse_171 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva
      ^ (dat_in_rsci_idat_mxwt[25]);
  assign xor_cse_174 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva
      ^ (dat_in_rsci_idat_mxwt[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva
      ^ (dat_in_rsci_idat_mxwt[23]);
  assign xor_cse_176 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva
      ^ (dat_in_rsci_idat_mxwt[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva
      ^ (dat_in_rsci_idat_mxwt[4]);
  assign xor_cse_173 = xor_cse_174 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
      ^ (dat_in_rsci_idat_mxwt[7]) ^ xor_cse_176;
  assign xor_cse_179 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva
      ^ (dat_in_rsci_idat_mxwt[16]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva
      ^ (dat_in_rsci_idat_mxwt[20]);
  assign xor_cse_186 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva
      ^ (dat_in_rsci_idat_mxwt[30]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva
      ^ (dat_in_rsci_idat_mxwt[18]);
  assign xor_cse_185 = xor_cse_152 ^ xor_cse_186 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva
      ^ (dat_in_rsci_idat_mxwt[3]);
  assign xor_cse_190 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva
      ^ (dat_in_rsci_idat_mxwt[24]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva
      ^ (dat_in_rsci_idat_mxwt[25]);
  assign xor_cse_192 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva
      ^ (dat_in_rsci_idat_mxwt[20]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva
      ^ (dat_in_rsci_idat_mxwt[4]);
  assign xor_cse_196 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva
      ^ (dat_in_rsci_idat_mxwt[24]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva
      ^ (dat_in_rsci_idat_mxwt[17]);
  assign xor_cse_198 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva
      ^ (dat_in_rsci_idat_mxwt[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva
      ^ (dat_in_rsci_idat_mxwt[8]);
  assign xor_cse_199 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva
      ^ (dat_in_rsci_idat_mxwt[9]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva
      ^ (dat_in_rsci_idat_mxwt[21]);
  assign xor_cse_204 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva
      ^ (dat_in_rsci_idat_mxwt[29]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva
      ^ (dat_in_rsci_idat_mxwt[25]);
  assign xor_cse_203 = xor_cse_204 ^ xor_cse_196 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva
      ^ (dat_in_rsci_idat_mxwt[15]);
  assign xor_cse_207 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva
      ^ (dat_in_rsci_idat_mxwt[14]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva
      ^ (dat_in_rsci_idat_mxwt[13]);
  assign xor_cse_210 = xor_cse_198 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_30_sva
      ^ (dat_in_rsci_idat_mxwt[10]) ^ xor_cse_162;
  assign xor_cse_215 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva
      ^ (dat_in_rsci_idat_mxwt[9]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva
      ^ (dat_in_rsci_idat_mxwt[18]);
  assign xor_cse_217 = xor_cse_155 ^ xor_cse_207 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva
      ^ (dat_in_rsci_idat_mxwt[4]);
  assign xor_cse_220 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva
      ^ (dat_in_rsci_idat_mxwt[28]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva
      ^ (dat_in_rsci_idat_mxwt[12]);
  assign xor_cse_222 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva
      ^ (dat_in_rsci_idat_mxwt[23]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva
      ^ (dat_in_rsci_idat_mxwt[30]);
  assign xor_cse_223 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva
      ^ (dat_in_rsci_idat_mxwt[21]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva
      ^ (dat_in_rsci_idat_mxwt[16]);
  assign xor_cse_224 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva
      ^ (dat_in_rsci_idat_mxwt[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_sva
      ^ (dat_in_rsci_idat_mxwt[11]);
  assign xor_cse_226 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva
      ^ (dat_in_rsci_idat_mxwt[26]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_30_sva
      ^ (dat_in_rsci_idat_mxwt[10]);
  assign xor_cse_229 = xor_cse_174 ^ xor_cse_204 ^ xor_cse_220;
  assign xor_cse_231 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva
      ^ (dat_in_rsci_idat_mxwt[27]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_sva
      ^ (dat_in_rsci_idat_mxwt[19]);
  assign xor_cse_232 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva
      ^ (dat_in_rsci_idat_mxwt[20]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva
      ^ (dat_in_rsci_idat_mxwt[6]);
  assign xor_cse_233 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva
      ^ (dat_in_rsci_idat_mxwt[13]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva
      ^ (dat_in_rsci_idat_mxwt[0]);
  assign xor_cse_238 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
      ^ (dat_in_rsci_idat_mxwt[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva
      ^ (dat_in_rsci_idat_mxwt[24]);
  assign xor_cse_237 = xor_cse_224 ^ xor_cse_238 ^ xor_cse_226;
  assign xor_cse_240 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva
      ^ (dat_in_rsci_idat_mxwt[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva
      ^ (dat_in_rsci_idat_mxwt[12]);
  assign xor_cse_244 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva
      ^ (dat_in_rsci_idat_mxwt[27]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_sva
      ^ (dat_in_rsci_idat_mxwt[11]);
  assign xor_cse_245 = xor_cse_162 ^ xor_cse_152 ^ xor_cse_199;
  assign xor_cse_248 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva
      ^ (dat_in_rsci_idat_mxwt[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva
      ^ (dat_in_rsci_idat_mxwt[9]);
  assign xor_cse_250 = xor_cse_174 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva
      ^ (dat_in_rsci_idat_mxwt[29]);
  assign xor_cse_253 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva
      ^ (dat_in_rsci_idat_mxwt[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_30_sva
      ^ (dat_in_rsci_idat_mxwt[10]);
  assign xor_cse_255 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva
      ^ (dat_in_rsci_idat_mxwt[15]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva
      ^ (dat_in_rsci_idat_mxwt[16]);
  assign xor_cse_258 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva
      ^ (dat_in_rsci_idat_mxwt[15]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva
      ^ (dat_in_rsci_idat_mxwt[29]);
  assign xor_cse_261 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva
      ^ (dat_in_rsci_idat_mxwt[14]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva
      ^ (dat_in_rsci_idat_mxwt[28]);
  assign xor_cse_262 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva
      ^ (dat_in_rsci_idat_mxwt[8]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva
      ^ (dat_in_rsci_idat_mxwt[20]);
  assign xor_cse_265 = xor_cse_155 ^ xor_cse_186 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva
      ^ (dat_in_rsci_idat_mxwt[25]);
  assign xor_cse_266 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva
      ^ (dat_in_rsci_idat_mxwt[14]);
  assign xor_cse_268 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva
      ^ (dat_in_rsci_idat_mxwt[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_sva
      ^ (dat_in_rsci_idat_mxwt[31]);
  assign xor_cse_269 = EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva
      ^ (dat_in_rsci_idat_mxwt[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva
      ^ (dat_in_rsci_idat_mxwt[26]);
  assign xor_cse_272 = xor_cse_155 ^ xor_cse_152 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva
      ^ (dat_in_rsci_idat_mxwt[17]);
  assign xor_cse_283 = xor_cse_231 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva
      ^ (dat_in_rsci_idat_mxwt[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva
      ^ (dat_in_rsci_idat_mxwt[22]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva
      ^ (dat_in_rsci_idat_mxwt[23]);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      MCOL_stage_0 <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_crc32_pix_in_triosy_obj_iswt0_cse <= 1'b0;
    end
    else if ( rst ) begin
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      MCOL_stage_0 <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_crc32_pix_in_triosy_obj_iswt0_cse <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_dat_in_rsci_oswt_cse <= ~((fsm_output[3]) | ((~(nand_cse & MCOL_stage_0))
          & (fsm_output[1])) | and_205_cse);
      MCOL_stage_0 <= (MCOL_stage_0 & nand_cse) | MROW_y_or_cse;
      reg_dat_out_rsci_oswt_cse <= or_tmp_82;
      reg_crc32_pix_in_triosy_obj_iswt0_cse <= and_205_cse;
    end
  end
  always @(posedge clk) begin
    if ( MCOL_and_cse ) begin
      dat_out_rsci_idat_23_16 <= MUX_v_8_2_2((dat_in_rsci_idat_mxwt[23:16]), out_pix_23_16_lpi_3_dfm_mx0w1,
          or_tmp_68);
      dat_out_rsci_idat_31_24 <= MUX_v_8_2_2((dat_in_rsci_idat_mxwt[31:24]), out_pix_31_24_lpi_3_dfm_mx0w1,
          or_tmp_68);
      dat_out_rsci_idat_15_8 <= MUX_v_8_2_2((dat_in_rsci_idat_mxwt[15:8]), out_pix_15_8_lpi_3_dfm_mx0w1,
          or_tmp_68);
      dat_out_rsci_idat_7_0 <= MUX_v_8_2_2((dat_in_rsci_idat_mxwt[7:0]), out_pix_7_0_lpi_3_dfm_mx0w1,
          or_tmp_68);
    end
  end
  always @(posedge clk) begin
    if ( MCOL_and_3_cse ) begin
      dat_out_rsci_idat_32 <= ~((MROW_y_sva!=10'b0000000000) | (MCOL_x_sva!=11'b00000000000));
      dat_out_rsci_idat_33 <= MCOL_x_sva == ({{1{z_out_1[9]}}, z_out_1});
    end
  end
  always @(posedge clk) begin
    if ( EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_and_cse ) begin
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_sva <= (xor_cse
          ^ xor_cse_11 ^ xor_cse_14 ^ xor_cse_17 ^ xor_cse_20) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva <= (xor_cse_22
          ^ xor_cse_4 ^ xor_cse_11 ^ xor_cse_28 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[2])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva <= (xor_cse_34
          ^ xor_cse_39 ^ xor_cse_41 ^ xor_cse_14 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[6])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva <= (xor_cse_22
          ^ xor_cse_45 ^ xor_cse_47 ^ xor_cse_48 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva ^ (out_pix_7_0_lpi_3_dfm_mx0[3])
          ^ (out_pix_31_24_lpi_3_dfm_mx0[3])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva <= (xor_cse_52
          ^ xor_cse ^ xor_cse_35 ^ xor_cse_56 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[7])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva <= (xor_cse_59
          ^ (out_pix_7_0_lpi_3_dfm_mx0[2]) ^ (out_pix_31_24_lpi_3_dfm_mx0[4]) ^ xor_cse_4
          ^ xor_cse_39 ^ xor_cse_64 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva <= (xor_cse_66
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva ^ (out_pix_31_24_lpi_3_dfm_mx0[5])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva ^ (out_pix_7_0_lpi_3_dfm_mx0[6])
          ^ xor_cse_45 ^ xor_cse_69 ^ xor_cse_71 ^ xor_cse_72) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva <= (xor_cse_11
          ^ xor_cse_73 ^ xor_cse_53 ^ xor_cse_75 ^ xor_cse_7 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[7])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva <= (xor_cse_78
          ^ xor_cse_1 ^ xor_cse_80 ^ xor_cse_81 ^ xor_cse_82 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[1])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva <= (xor_cse_86
          ^ xor_cse_47 ^ xor_cse_81 ^ xor_cse_89 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[6])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva <= (xor_cse_34
          ^ xor_cse_17 ^ xor_cse_69 ^ xor_cse_75 ^ xor_cse_39 ^ xor_cse_93) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva <= (xor_cse_94
          ^ xor_cse_20 ^ xor_cse_47 ^ xor_cse_69 ^ xor_cse_82 ^ xor_cse_93) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva <= (xor_cse_23
          ^ xor_cse_45 ^ xor_cse_53 ^ xor_cse_75 ^ xor_cse_81 ^ xor_cse_97 ^ xor_cse_93
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva ^ (out_pix_31_24_lpi_3_dfm_mx0[6]))
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva <= (xor_cse_99
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva ^ (out_pix_15_8_lpi_3_dfm_mx0[1])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva ^ (out_pix_7_0_lpi_3_dfm_mx0[0])
          ^ xor_cse_69 ^ xor_cse_56 ^ xor_cse_102 ^ xor_cse_28) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva <= (xor_cse_94
          ^ xor_cse_99 ^ xor_cse_75 ^ xor_cse_104 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[4])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva <= (xor_cse_45
          ^ xor_cse_73 ^ xor_cse_56 ^ xor_cse_102 ^ xor_cse_107 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva ^ (out_pix_7_0_lpi_3_dfm_mx0[1])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva ^ (out_pix_23_16_lpi_3_dfm_mx0[5])
          ^ (out_pix_31_24_lpi_3_dfm_mx0[6])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva <= (xor_cse_80
          ^ xor_cse_48 ^ xor_cse_110 ^ xor_cse_111 ^ xor_cse_71 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_1_sva_1)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva <= (xor_cse_114
          ^ xor_cse_115 ^ xor_cse_73 ^ xor_cse_104 ^ xor_cse_89 ^ xor_cse_117) |
          or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva <= (xor_cse_35
          ^ xor_cse_80 ^ xor_cse_118 ^ xor_cse_111 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva ^ (out_pix_15_8_lpi_3_dfm_mx0[5])
          ^ (out_pix_31_24_lpi_3_dfm_mx0[5])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva <= (xor_cse_121
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva ^ (out_pix_15_8_lpi_3_dfm_mx0[5])
          ^ xor_cse_47 ^ xor_cse_41 ^ xor_cse_14 ^ xor_cse_89) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva <= (xor_cse_4
          ^ xor_cse_69 ^ xor_cse_118 ^ xor_cse_117 ^ xor_cse_107 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[3])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_30_sva <= (xor_cse_66
          ^ xor_cse_48 ^ xor_cse_118 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[2]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[5])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva <= (xor_cse_121
          ^ xor_cse_11 ^ xor_cse_73 ^ xor_cse_80 ^ xor_cse_104 ^ xor_cse_110 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[6]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[5])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_sva <= (xor_cse_132
          ^ xor_cse_59 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[6])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_sva <= (xor_cse_25
          ^ xor_cse_1 ^ xor_cse_4 ^ xor_cse_35 ^ xor_cse_53 ^ xor_cse_80 ^ xor_cse_75
          ^ xor_cse_56 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva
          ^ (out_pix_23_16_lpi_3_dfm_mx0[0])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva <= (xor_cse_87
          ^ xor_cse_23 ^ xor_cse_73 ^ xor_cse_104 ^ xor_cse_81 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[1]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[4])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva <= (xor_cse_52
          ^ xor_cse_11 ^ xor_cse_35 ^ xor_cse_69 ^ xor_cse_48 ^ xor_cse_82 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[2])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva <= (xor_cse_45
          ^ xor_cse_47 ^ xor_cse_53 ^ xor_cse_102 ^ xor_cse_72 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva
          ^ (out_pix_7_0_lpi_3_dfm_mx0[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_1_sva_1)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva <= (xor_cse_78
          ^ xor_cse_115 ^ xor_cse_45 ^ xor_cse_47 ^ xor_cse_28 ^ xor_cse_93) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva <= (xor_cse_114
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva ^ (out_pix_7_0_lpi_3_dfm_mx0[6])
          ^ xor_cse_73 ^ xor_cse_97 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[0]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva ^ (out_pix_23_16_lpi_3_dfm_mx0[1])
          ^ (out_pix_31_24_lpi_3_dfm_mx0[2])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva <= (xor_cse_86
          ^ xor_cse_132 ^ xor_cse_104 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[5]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva
          ^ (out_pix_31_24_lpi_3_dfm_mx0[4])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva <= (xor_cse_1
          ^ xor_cse_23 ^ xor_cse_80 ^ xor_cse_75 ^ xor_cse_7 ^ xor_cse_64 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva
          ^ (out_pix_15_8_lpi_3_dfm_mx0[6])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_sva <= (xor_cse_151
          ^ xor_cse_162 ^ xor_cse_165 ^ xor_cse_168 ^ xor_cse_171) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva <= (xor_cse_173
          ^ xor_cse_155 ^ xor_cse_162 ^ xor_cse_179 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva
          ^ (dat_in_rsci_idat_mxwt[8]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva
          ^ (dat_in_rsci_idat_mxwt[26])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva <= (xor_cse_185
          ^ xor_cse_190 ^ xor_cse_192 ^ xor_cse_165 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva
          ^ (dat_in_rsci_idat_mxwt[14]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva
          ^ (dat_in_rsci_idat_mxwt[22])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva <= (xor_cse_173
          ^ xor_cse_196 ^ xor_cse_198 ^ xor_cse_199 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva ^ (dat_in_rsci_idat_mxwt[3])
          ^ (dat_in_rsci_idat_mxwt[27])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva <= (xor_cse_203
          ^ xor_cse_151 ^ xor_cse_186 ^ xor_cse_207 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva
          ^ (dat_in_rsci_idat_mxwt[23])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva <= (xor_cse_210
          ^ (dat_in_rsci_idat_mxwt[2]) ^ (dat_in_rsci_idat_mxwt[28]) ^ xor_cse_155
          ^ xor_cse_190 ^ xor_cse_215 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva
          ^ (dat_in_rsci_idat_mxwt[4]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva <= (xor_cse_217
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva ^ (dat_in_rsci_idat_mxwt[29])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva ^ (dat_in_rsci_idat_mxwt[6])
          ^ xor_cse_196 ^ xor_cse_220 ^ xor_cse_222 ^ xor_cse_223) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva <= (xor_cse_162
          ^ xor_cse_224 ^ xor_cse_204 ^ xor_cse_226 ^ xor_cse_158 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_sva
          ^ (dat_in_rsci_idat_mxwt[19]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
          ^ (dat_in_rsci_idat_mxwt[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva
          ^ (dat_in_rsci_idat_mxwt[9]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva
          ^ (dat_in_rsci_idat_mxwt[23])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva <= (xor_cse_229
          ^ xor_cse_152 ^ xor_cse_231 ^ xor_cse_232 ^ xor_cse_233 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_sva
          ^ (dat_in_rsci_idat_mxwt[11]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva
          ^ (dat_in_rsci_idat_mxwt[16]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva
          ^ (dat_in_rsci_idat_mxwt[1])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva <= (xor_cse_237
          ^ xor_cse_198 ^ xor_cse_232 ^ xor_cse_240 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva
          ^ (dat_in_rsci_idat_mxwt[27]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva
          ^ (dat_in_rsci_idat_mxwt[30])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva <= (xor_cse_185
          ^ xor_cse_168 ^ xor_cse_220 ^ xor_cse_226 ^ xor_cse_190 ^ xor_cse_244)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva <= (xor_cse_245
          ^ xor_cse_171 ^ xor_cse_198 ^ xor_cse_220 ^ xor_cse_233 ^ xor_cse_244)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva <= (xor_cse_174
          ^ xor_cse_196 ^ xor_cse_204 ^ xor_cse_226 ^ xor_cse_232 ^ xor_cse_248 ^
          xor_cse_244 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva
          ^ (dat_in_rsci_idat_mxwt[30])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva <= (xor_cse_250
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva ^ (dat_in_rsci_idat_mxwt[9])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva ^ (dat_in_rsci_idat_mxwt[0])
          ^ xor_cse_220 ^ xor_cse_207 ^ xor_cse_253 ^ xor_cse_179) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva <= (xor_cse_245
          ^ xor_cse_250 ^ xor_cse_226 ^ xor_cse_255 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva
          ^ (dat_in_rsci_idat_mxwt[24]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva
          ^ (dat_in_rsci_idat_mxwt[8]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva
          ^ (dat_in_rsci_idat_mxwt[28])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva <= (xor_cse_196
          ^ xor_cse_224 ^ xor_cse_207 ^ xor_cse_253 ^ xor_cse_258 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva ^ (dat_in_rsci_idat_mxwt[1])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva ^ (dat_in_rsci_idat_mxwt[21])
          ^ (dat_in_rsci_idat_mxwt[30])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva <= (xor_cse_231
          ^ xor_cse_199 ^ xor_cse_261 ^ xor_cse_262 ^ xor_cse_222 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_sva
          ^ (dat_in_rsci_idat_mxwt[31]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva
          ^ (dat_in_rsci_idat_mxwt[3]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_1_sva_1)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva <= (xor_cse_265
          ^ xor_cse_266 ^ xor_cse_224 ^ xor_cse_255 ^ xor_cse_240 ^ xor_cse_268)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva <= (xor_cse_186
          ^ xor_cse_231 ^ xor_cse_269 ^ xor_cse_262 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva
          ^ (dat_in_rsci_idat_mxwt[22]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
          ^ (dat_in_rsci_idat_mxwt[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva ^ (dat_in_rsci_idat_mxwt[13])
          ^ (dat_in_rsci_idat_mxwt[29])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva <= (xor_cse_272
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva ^ (dat_in_rsci_idat_mxwt[13])
          ^ xor_cse_198 ^ xor_cse_192 ^ xor_cse_165 ^ xor_cse_240) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva <= (xor_cse_155
          ^ xor_cse_220 ^ xor_cse_269 ^ xor_cse_268 ^ xor_cse_258 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva
          ^ (dat_in_rsci_idat_mxwt[18]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva
          ^ (dat_in_rsci_idat_mxwt[17]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva
          ^ (dat_in_rsci_idat_mxwt[3])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_30_sva <= (xor_cse_217
          ^ xor_cse_199 ^ xor_cse_269 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
          ^ (dat_in_rsci_idat_mxwt[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva
          ^ (dat_in_rsci_idat_mxwt[18]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva
          ^ (dat_in_rsci_idat_mxwt[5])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva <= (xor_cse_272
          ^ xor_cse_162 ^ xor_cse_224 ^ xor_cse_231 ^ xor_cse_255 ^ xor_cse_261 ^
          EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva ^ (dat_in_rsci_idat_mxwt[30])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva ^ (dat_in_rsci_idat_mxwt[5]))
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_sva <= (xor_cse_283
          ^ xor_cse_210 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva
          ^ (dat_in_rsci_idat_mxwt[15]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva
          ^ (dat_in_rsci_idat_mxwt[14])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_sva <= (xor_cse_176
          ^ xor_cse_152 ^ xor_cse_155 ^ xor_cse_186 ^ xor_cse_204 ^ xor_cse_231 ^
          xor_cse_226 ^ xor_cse_207 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva
          ^ (dat_in_rsci_idat_mxwt[16])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva <= (xor_cse_238
          ^ xor_cse_174 ^ xor_cse_224 ^ xor_cse_255 ^ xor_cse_232 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva
          ^ (dat_in_rsci_idat_mxwt[9]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva
          ^ (dat_in_rsci_idat_mxwt[28])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva <= (xor_cse_203
          ^ xor_cse_162 ^ xor_cse_186 ^ xor_cse_220 ^ xor_cse_199 ^ xor_cse_233 ^
          EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva ^ (dat_in_rsci_idat_mxwt[26]))
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva <= (xor_cse_196
          ^ xor_cse_198 ^ xor_cse_204 ^ xor_cse_253 ^ xor_cse_223 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva
          ^ (dat_in_rsci_idat_mxwt[7]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva
          ^ (dat_in_rsci_idat_mxwt[12]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_1_sva_1)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva <= (xor_cse_229
          ^ xor_cse_266 ^ xor_cse_196 ^ xor_cse_198 ^ xor_cse_179 ^ xor_cse_244)
          | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva <= (xor_cse_265
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva ^ (dat_in_rsci_idat_mxwt[6])
          ^ xor_cse_224 ^ xor_cse_248 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva
          ^ (dat_in_rsci_idat_mxwt[8]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva
          ^ (dat_in_rsci_idat_mxwt[13]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva ^ (dat_in_rsci_idat_mxwt[17])
          ^ (dat_in_rsci_idat_mxwt[26])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva <= (xor_cse_237
          ^ xor_cse_283 ^ xor_cse_255 ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva
          ^ (dat_in_rsci_idat_mxwt[13]) ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva
          ^ (dat_in_rsci_idat_mxwt[28])) | or_tmp_81;
      EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva <= (xor_cse_152
          ^ xor_cse_174 ^ xor_cse_231 ^ xor_cse_226 ^ xor_cse_158 ^ xor_cse_215 ^
          EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva ^ (dat_in_rsci_idat_mxwt[12])
          ^ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva ^ (dat_in_rsci_idat_mxwt[14]))
          | or_tmp_81;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & MROW_y_or_cse ) begin
      MROW_y_sva <= MUX_v_10_2_2(10'b0000000000, (z_out[9:0]), MROW_y_not_1_nl);
    end
  end
  always @(posedge clk) begin
    if ( and_825_cse ) begin
      crc32_pix_in_rsci_idat_15 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_sva;
      crc32_pix_in_rsci_idat_16 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_31_sva;
      crc32_pix_in_rsci_idat_14 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_15_31_sva;
      crc32_pix_in_rsci_idat_17 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_17_sva;
      crc32_pix_in_rsci_idat_13 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_sva;
      crc32_pix_in_rsci_idat_18 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_31_sva;
      crc32_pix_in_rsci_idat_12 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_14_30_sva;
      crc32_pix_in_rsci_idat_19 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_19_sva;
      crc32_pix_in_rsci_idat_11 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_sva;
      crc32_pix_in_rsci_idat_20 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_20_sva;
      crc32_pix_in_rsci_idat_10 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_12_30_sva;
      crc32_pix_in_rsci_idat_21 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_21_sva;
      crc32_pix_in_rsci_idat_9 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_9_sva;
      crc32_pix_in_rsci_idat_22 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_31_sva;
      crc32_pix_in_rsci_idat_8 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_sva;
      crc32_pix_in_rsci_idat_23 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_23_sva;
      crc32_pix_in_rsci_idat_7 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_31_sva;
      crc32_pix_in_rsci_idat_24 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_24_sva;
      crc32_pix_in_rsci_idat_6 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_8_30_sva;
      crc32_pix_in_rsci_idat_25 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_25_sva;
      crc32_pix_in_rsci_idat_5 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_sva;
      crc32_pix_in_rsci_idat_26 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_26_sva;
      crc32_pix_in_rsci_idat_4 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_5_31_sva;
      crc32_pix_in_rsci_idat_27 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_27_sva;
      crc32_pix_in_rsci_idat_3 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_sva;
      crc32_pix_in_rsci_idat_28 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_31_sva;
      crc32_pix_in_rsci_idat_2 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_30_sva;
      crc32_pix_in_rsci_idat_29 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_29_sva;
      crc32_pix_in_rsci_idat_1 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_29_sva;
      crc32_pix_in_rsci_idat_30 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_30_sva;
      crc32_pix_in_rsci_idat_0 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_crc_tmp_4_28_sva;
      crc32_pix_in_rsci_idat_31 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_for_tmp_bit_sva;
      crc32_dat_out_rsci_idat_15 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_sva;
      crc32_dat_out_rsci_idat_16 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_31_sva;
      crc32_dat_out_rsci_idat_14 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_15_31_sva;
      crc32_dat_out_rsci_idat_17 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_17_sva;
      crc32_dat_out_rsci_idat_13 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_sva;
      crc32_dat_out_rsci_idat_18 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_31_sva;
      crc32_dat_out_rsci_idat_12 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_14_30_sva;
      crc32_dat_out_rsci_idat_19 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_19_sva;
      crc32_dat_out_rsci_idat_11 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_sva;
      crc32_dat_out_rsci_idat_20 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_20_sva;
      crc32_dat_out_rsci_idat_10 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_12_30_sva;
      crc32_dat_out_rsci_idat_21 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_21_sva;
      crc32_dat_out_rsci_idat_9 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_9_sva;
      crc32_dat_out_rsci_idat_22 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_31_sva;
      crc32_dat_out_rsci_idat_8 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_sva;
      crc32_dat_out_rsci_idat_23 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_23_sva;
      crc32_dat_out_rsci_idat_7 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_31_sva;
      crc32_dat_out_rsci_idat_24 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_24_sva;
      crc32_dat_out_rsci_idat_6 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_8_30_sva;
      crc32_dat_out_rsci_idat_25 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_25_sva;
      crc32_dat_out_rsci_idat_5 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_sva;
      crc32_dat_out_rsci_idat_26 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_26_sva;
      crc32_dat_out_rsci_idat_4 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_5_31_sva;
      crc32_dat_out_rsci_idat_27 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_27_sva;
      crc32_dat_out_rsci_idat_3 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_sva;
      crc32_dat_out_rsci_idat_28 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_31_sva;
      crc32_dat_out_rsci_idat_2 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_30_sva;
      crc32_dat_out_rsci_idat_29 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_29_sva;
      crc32_dat_out_rsci_idat_1 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_29_sva;
      crc32_dat_out_rsci_idat_30 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_30_sva;
      crc32_dat_out_rsci_idat_0 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_crc_tmp_4_28_sva;
      crc32_dat_out_rsci_idat_31 <= ~ EdgeDetect_IP_EdgeDetect_MagAng_calc_crc32_32_1_for_tmp_bit_sva;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (MCOL_stage_0 | MROW_y_or_cse) ) begin
      MCOL_x_sva <= MUX_v_11_2_2(11'b00000000000, z_out, not_82_nl);
    end
  end
  assign MROW_y_not_1_nl = ~ (fsm_output[0]);
  assign not_82_nl = ~ MROW_y_or_cse;
  assign MROW_MROW_and_1_nl = (MCOL_x_sva[10]) & (fsm_output[1]);
  assign MROW_mux_2_nl = MUX_v_10_2_2(MROW_y_sva, (MCOL_x_sva[9:0]), fsm_output[1]);
  assign nl_z_out = ({MROW_MROW_and_1_nl , MROW_mux_2_nl}) + 11'b00000000001;
  assign z_out = nl_z_out[10:0];
  assign operator_12_true_operator_12_true_and_1_nl = (heightIn[9]) & (fsm_output[2]);
  assign operator_12_true_mux_2_nl = MUX_v_9_2_2((widthIn[10:2]), (heightIn[8:0]),
      fsm_output[2]);
  assign nl_z_out_1 = ({operator_12_true_operator_12_true_and_1_nl , operator_12_true_mux_2_nl})
      + 10'b1111111111;
  assign z_out_1 = nl_z_out_1[9:0];

  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [10:0] MUX_v_11_2_2;
    input [10:0] input_0;
    input [10:0] input_1;
    input  sel;
    reg [10:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_11_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input  sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input  sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [7:0] signext_8_1;
    input  vector;
  begin
    signext_8_1= {{7{vector}}, vector};
  end
  endfunction


  function automatic [7:0] conv_u2u_1_8 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_8 = {{7{1'b0}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng_struct
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng_struct (
  clk, rst, arst_n, dx_in_rsc_dat_grad3, dx_in_rsc_dat_grad2, dx_in_rsc_dat_grad1,
      dx_in_rsc_dat_grad0, dx_in_rsc_vld, dx_in_rsc_rdy, dy_in_rsc_dat_grad3, dy_in_rsc_dat_grad2,
      dy_in_rsc_dat_grad1, dy_in_rsc_dat_grad0, dy_in_rsc_vld, dy_in_rsc_rdy, dat_in_rsc_dat,
      dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn, sw_in, crc32_pix_in_rsc_dat,
      crc32_pix_in_triosy_lz, crc32_dat_out_rsc_dat, crc32_dat_out_triosy_lz, dat_out_rsc_dat_eol,
      dat_out_rsc_dat_sof, dat_out_rsc_dat_pix, dat_out_rsc_vld, dat_out_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [8:0] dx_in_rsc_dat_grad3;
  input [8:0] dx_in_rsc_dat_grad2;
  input [8:0] dx_in_rsc_dat_grad1;
  input [8:0] dx_in_rsc_dat_grad0;
  input dx_in_rsc_vld;
  output dx_in_rsc_rdy;
  input [8:0] dy_in_rsc_dat_grad3;
  input [8:0] dy_in_rsc_dat_grad2;
  input [8:0] dy_in_rsc_dat_grad1;
  input [8:0] dy_in_rsc_dat_grad0;
  input dy_in_rsc_vld;
  output dy_in_rsc_rdy;
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_dat;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_dat;
  output crc32_dat_out_triosy_lz;
  output dat_out_rsc_dat_eol;
  output dat_out_rsc_dat_sof;
  output [31:0] dat_out_rsc_dat_pix;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;


  // Interconnect Declarations
  wire [33:0] dat_out_rsc_dat;


  // Interconnect Declarations for Component Instantiations 
  wire [35:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_dx_in_rsc_dat;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_dx_in_rsc_dat = {dx_in_rsc_dat_grad3
      , dx_in_rsc_dat_grad2 , dx_in_rsc_dat_grad1 , dx_in_rsc_dat_grad0};
  wire [35:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_dy_in_rsc_dat;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_dy_in_rsc_dat = {dy_in_rsc_dat_grad3
      , dy_in_rsc_dat_grad2 , dy_in_rsc_dat_grad1 , dy_in_rsc_dat_grad0};
  EdgeDetect_IP_EdgeDetect_MagAng_run EdgeDetect_IP_EdgeDetect_MagAng_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_in_rsc_dat(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_dx_in_rsc_dat[35:0]),
      .dx_in_rsc_vld(dx_in_rsc_vld),
      .dx_in_rsc_rdy(dx_in_rsc_rdy),
      .dy_in_rsc_dat(nl_EdgeDetect_IP_EdgeDetect_MagAng_run_inst_dy_in_rsc_dat[35:0]),
      .dy_in_rsc_vld(dy_in_rsc_vld),
      .dy_in_rsc_rdy(dy_in_rsc_rdy),
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .sw_in(sw_in),
      .crc32_pix_in_rsc_dat(crc32_pix_in_rsc_dat),
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz),
      .crc32_dat_out_rsc_dat(crc32_dat_out_rsc_dat),
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy)
    );
  assign dat_out_rsc_dat_pix = dat_out_rsc_dat[31:0];
  assign dat_out_rsc_dat_sof = dat_out_rsc_dat[32];
  assign dat_out_rsc_dat_eol = dat_out_rsc_dat[33];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_MagAng
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_MagAng (
  clk, rst, arst_n, dx_in_rsc_dat, dx_in_rsc_vld, dx_in_rsc_rdy, dy_in_rsc_dat, dy_in_rsc_vld,
      dy_in_rsc_rdy, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      sw_in, crc32_pix_in_rsc_dat, crc32_pix_in_triosy_lz, crc32_dat_out_rsc_dat,
      crc32_dat_out_triosy_lz, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [35:0] dx_in_rsc_dat;
  input dx_in_rsc_vld;
  output dx_in_rsc_rdy;
  input [35:0] dy_in_rsc_dat;
  input dy_in_rsc_vld;
  output dy_in_rsc_rdy;
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_dat;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_dat;
  output crc32_dat_out_triosy_lz;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;


  // Interconnect Declarations
  wire dat_out_rsc_dat_eol;
  wire dat_out_rsc_dat_sof;
  wire [31:0] dat_out_rsc_dat_pix;


  // Interconnect Declarations for Component Instantiations 
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad3;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad3 = dx_in_rsc_dat[35:27];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad2;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad2 = dx_in_rsc_dat[26:18];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad1;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad1 = dx_in_rsc_dat[17:9];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad0;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad0 = dx_in_rsc_dat[8:0];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad3;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad3 = dy_in_rsc_dat[35:27];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad2;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad2 = dy_in_rsc_dat[26:18];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad1;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad1 = dy_in_rsc_dat[17:9];
  wire [8:0] nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad0;
  assign nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad0 = dy_in_rsc_dat[8:0];
  EdgeDetect_IP_EdgeDetect_MagAng_struct EdgeDetect_IP_EdgeDetect_MagAng_struct_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_in_rsc_dat_grad3(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad3[8:0]),
      .dx_in_rsc_dat_grad2(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad2[8:0]),
      .dx_in_rsc_dat_grad1(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad1[8:0]),
      .dx_in_rsc_dat_grad0(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dx_in_rsc_dat_grad0[8:0]),
      .dx_in_rsc_vld(dx_in_rsc_vld),
      .dx_in_rsc_rdy(dx_in_rsc_rdy),
      .dy_in_rsc_dat_grad3(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad3[8:0]),
      .dy_in_rsc_dat_grad2(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad2[8:0]),
      .dy_in_rsc_dat_grad1(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad1[8:0]),
      .dy_in_rsc_dat_grad0(nl_EdgeDetect_IP_EdgeDetect_MagAng_struct_inst_dy_in_rsc_dat_grad0[8:0]),
      .dy_in_rsc_vld(dy_in_rsc_vld),
      .dy_in_rsc_rdy(dy_in_rsc_rdy),
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .sw_in(sw_in),
      .crc32_pix_in_rsc_dat(crc32_pix_in_rsc_dat),
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz),
      .crc32_dat_out_rsc_dat(crc32_dat_out_rsc_dat),
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz),
      .dat_out_rsc_dat_eol(dat_out_rsc_dat_eol),
      .dat_out_rsc_dat_sof(dat_out_rsc_dat_sof),
      .dat_out_rsc_dat_pix(dat_out_rsc_dat_pix),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy)
    );
  assign dat_out_rsc_dat = {dat_out_rsc_dat_eol , dat_out_rsc_dat_sof , dat_out_rsc_dat_pix};
endmodule




//------> ../EdgeDetect_IP_EdgeDetect_HorDer.v1/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   m112061603@ws34
//  Generated date: Sun Apr 14 20:43:43 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, HCOL_C_0_tr0, HROW_C_0_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [3:0] fsm_output;
  reg [3:0] fsm_output;
  input HCOL_C_0_tr0;
  input HROW_C_0_tr0;


  // FSM State Type Declaration for EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_1
  parameter
    main_C_0 = 2'd0,
    HCOL_C_0 = 2'd1,
    HROW_C_0 = 2'd2,
    main_C_1 = 2'd3;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_1
    case (state_var)
      HCOL_C_0 : begin
        fsm_output = 4'b0010;
        if ( HCOL_C_0_tr0 ) begin
          state_var_NS = HROW_C_0;
        end
        else begin
          state_var_NS = HCOL_C_0;
        end
      end
      HROW_C_0 : begin
        fsm_output = 4'b0100;
        if ( HROW_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = HCOL_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 4'b1000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 4'b0001;
        state_var_NS = HCOL_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= main_C_0;
    end
    else if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_staller
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_staller (
  run_wen, dat_in_rsci_wen_comp, dat_out_rsci_wen_comp, dx_rsci_wen_comp
);
  output run_wen;
  input dat_in_rsci_wen_comp;
  input dat_out_rsci_wen_comp;
  input dx_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = dat_in_rsci_wen_comp & dat_out_rsci_wen_comp & dx_rsci_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_dp (
  clk, rst, arst_n, dx_rsci_oswt, dx_rsci_wen_comp, dx_rsci_biwt, dx_rsci_bdwt, dx_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dx_rsci_oswt;
  output dx_rsci_wen_comp;
  input dx_rsci_biwt;
  input dx_rsci_bdwt;
  output dx_rsci_bcwt;
  reg dx_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dx_rsci_wen_comp = (~ dx_rsci_oswt) | dx_rsci_biwt | dx_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dx_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dx_rsci_bcwt <= 1'b0;
    end
    else begin
      dx_rsci_bcwt <= ~((~(dx_rsci_bcwt | dx_rsci_biwt)) | dx_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_ctrl (
  run_wen, dx_rsci_oswt, dx_rsci_biwt, dx_rsci_bdwt, dx_rsci_bcwt, dx_rsci_irdy,
      dx_rsci_ivld_run_sct
);
  input run_wen;
  input dx_rsci_oswt;
  output dx_rsci_biwt;
  output dx_rsci_bdwt;
  input dx_rsci_bcwt;
  input dx_rsci_irdy;
  output dx_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dx_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dx_rsci_bdwt = dx_rsci_oswt & run_wen;
  assign dx_rsci_biwt = dx_rsci_ogwt & dx_rsci_irdy;
  assign dx_rsci_ogwt = dx_rsci_oswt & (~ dx_rsci_bcwt);
  assign dx_rsci_ivld_run_sct = dx_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_dp (
  clk, rst, arst_n, dat_out_rsci_oswt, dat_out_rsci_wen_comp, dat_out_rsci_biwt,
      dat_out_rsci_bdwt, dat_out_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input dat_out_rsci_biwt;
  input dat_out_rsci_bdwt;
  output dat_out_rsci_bcwt;
  reg dat_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_wen_comp = (~ dat_out_rsci_oswt) | dat_out_rsci_biwt | dat_out_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else begin
      dat_out_rsci_bcwt <= ~((~(dat_out_rsci_bcwt | dat_out_rsci_biwt)) | dat_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_ctrl (
  run_wen, dat_out_rsci_oswt, dat_out_rsci_biwt, dat_out_rsci_bdwt, dat_out_rsci_bcwt,
      dat_out_rsci_irdy, dat_out_rsci_ivld_run_sct
);
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_biwt;
  output dat_out_rsci_bdwt;
  input dat_out_rsci_bcwt;
  input dat_out_rsci_irdy;
  output dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dat_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_bdwt = dat_out_rsci_oswt & run_wen;
  assign dat_out_rsci_biwt = dat_out_rsci_ogwt & dat_out_rsci_irdy;
  assign dat_out_rsci_ogwt = dat_out_rsci_oswt & (~ dat_out_rsci_bcwt);
  assign dat_out_rsci_ivld_run_sct = dat_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci_dat_in_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci_dat_in_wait_ctrl (
  run_wen, dat_in_rsci_iswt0, dat_in_rsci_irdy_run_sct
);
  input run_wen;
  input dat_in_rsci_iswt0;
  output dat_in_rsci_irdy_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign dat_in_rsci_irdy_run_sct = dat_in_rsci_iswt0 & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci (
  clk, rst, arst_n, dx_rsc_dat, dx_rsc_vld, dx_rsc_rdy, run_wen, dx_rsci_oswt, dx_rsci_wen_comp,
      dx_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [35:0] dx_rsc_dat;
  output dx_rsc_vld;
  input dx_rsc_rdy;
  input run_wen;
  input dx_rsci_oswt;
  output dx_rsci_wen_comp;
  input [35:0] dx_rsci_idat;


  // Interconnect Declarations
  wire dx_rsci_biwt;
  wire dx_rsci_bdwt;
  wire dx_rsci_bcwt;
  wire dx_rsci_irdy;
  wire dx_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd5),
  .width(32'sd36)) dx_rsci (
      .irdy(dx_rsci_irdy),
      .ivld(dx_rsci_ivld_run_sct),
      .idat(dx_rsci_idat),
      .rdy(dx_rsc_rdy),
      .vld(dx_rsc_vld),
      .dat(dx_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_ctrl EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dx_rsci_oswt(dx_rsci_oswt),
      .dx_rsci_biwt(dx_rsci_biwt),
      .dx_rsci_bdwt(dx_rsci_bdwt),
      .dx_rsci_bcwt(dx_rsci_bcwt),
      .dx_rsci_irdy(dx_rsci_irdy),
      .dx_rsci_ivld_run_sct(dx_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_dp EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_dx_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_rsci_oswt(dx_rsci_oswt),
      .dx_rsci_wen_comp(dx_rsci_wen_comp),
      .dx_rsci_biwt(dx_rsci_biwt),
      .dx_rsci_bdwt(dx_rsci_bdwt),
      .dx_rsci_bcwt(dx_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci (
  clk, rst, arst_n, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, run_wen, dat_out_rsci_oswt,
      dat_out_rsci_wen_comp, dat_out_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input [31:0] dat_out_rsci_idat;


  // Interconnect Declarations
  wire dat_out_rsci_biwt;
  wire dat_out_rsci_bdwt;
  wire dat_out_rsci_bcwt;
  wire dat_out_rsci_irdy;
  wire dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd4),
  .width(32'sd32)) dat_out_rsci (
      .irdy(dat_out_rsci_irdy),
      .ivld(dat_out_rsci_ivld_run_sct),
      .idat(dat_out_rsci_idat),
      .rdy(dat_out_rsc_rdy),
      .vld(dat_out_rsc_vld),
      .dat(dat_out_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_ctrl EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt),
      .dat_out_rsci_irdy(dat_out_rsci_irdy),
      .dat_out_rsci_ivld_run_sct(dat_out_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_dp EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_dat_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci (
  dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, run_wen, dat_in_rsci_oswt, dat_in_rsci_wen_comp,
      dat_in_rsci_idat_mxwt
);
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input run_wen;
  input dat_in_rsci_oswt;
  output dat_in_rsci_wen_comp;
  output [31:0] dat_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dat_in_rsci_irdy_run_sct;
  wire dat_in_rsci_ivld;
  wire [31:0] dat_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_coupled_v1 #(.rscid(32'sd1),
  .width(32'sd32)) dat_in_rsci (
      .rdy(dat_in_rsc_rdy),
      .vld(dat_in_rsc_vld),
      .dat(dat_in_rsc_dat),
      .irdy(dat_in_rsci_irdy_run_sct),
      .ivld(dat_in_rsci_ivld),
      .idat(dat_in_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci_dat_in_wait_ctrl EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci_dat_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_iswt0(dat_in_rsci_oswt),
      .dat_in_rsci_irdy_run_sct(dat_in_rsci_irdy_run_sct)
    );
  assign dat_in_rsci_idat_mxwt = dat_in_rsci_idat;
  assign dat_in_rsci_wen_comp = (~ dat_in_rsci_oswt) | dat_in_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_run
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_run (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, dx_rsc_dat, dx_rsc_vld,
      dx_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output [35:0] dx_rsc_dat;
  output dx_rsc_vld;
  input dx_rsc_rdy;


  // Interconnect Declarations
  wire run_wen;
  wire dat_in_rsci_wen_comp;
  wire [31:0] dat_in_rsci_idat_mxwt;
  wire dat_out_rsci_wen_comp;
  reg [31:0] dat_out_rsci_idat;
  wire dx_rsci_wen_comp;
  reg [8:0] dx_rsci_idat_35_27;
  reg [8:0] dx_rsci_idat_26_18;
  reg [8:0] dx_rsci_idat_17_9;
  reg [8:0] dx_rsci_idat_8_0;
  wire [3:0] fsm_output;
  wire HROW_equal_tmp;
  wire HCOL_if_2_equal_tmp;
  wire or_dcpl_3;
  wire or_dcpl_4;
  wire mux_tmp;
  wire and_dcpl_20;
  wire or_dcpl_22;
  wire or_dcpl_28;
  wire or_dcpl_29;
  wire or_dcpl_31;
  wire [1:0] HCOL_for_i_lpi_3_dfm_2;
  reg [1:0] HCOL_for_i_lpi_3;
  wire [2:0] nl_HCOL_for_i_lpi_3;
  wire exitL_exit_HCOL_for_sva_mx0;
  reg HCOL_for_and_2_cse_sva_1;
  reg [10:0] HCOL_x_sva;
  wire [9:0] HCOL_x_sva_mx3_10_1;
  reg HCOL_stage_0_2;
  reg HCOL_for_asn_itm_1;
  reg HCOL_if_slc_operator_12_true_acc_11_svs_st_1;
  reg [10:0] HCOL_asn_itm_1;
  reg [1:0] HCOL_for_i_lpi_3_dfm_1;
  reg HCOL_for_and_3_itm_1;
  reg reg_HCOL_stage_0_1_cse;
  reg reg_dat_in_rsci_oswt_cse;
  reg reg_dat_out_rsci_oswt_cse;
  reg reg_dx_rsci_oswt_cse;
  wire nand_5_cse;
  wire HCOL_if_2_nor_cse;
  wire HCOL_mux1h_cse;
  wire [10:0] z_out;
  wire [11:0] nl_z_out;
  reg [9:0] HROW_y_sva;
  reg [31:0] pix_in_lpi_3;
  reg [7:0] pix_buf0_lpi_3;
  reg [8:0] pix_1_lpi_3;
  reg [8:0] pix_2_lpi_3;
  reg [8:0] pix_0_lpi_3;
  reg [7:0] HCOL_for_asn_8_itm_1;
  reg HCOL_for_nor_2_itm_1;
  wire dx_rsci_idat_8_0_mx0c1;
  wire dx_rsci_idat_26_18_mx0c1;
  wire dx_rsci_idat_17_9_mx0c1;
  wire [7:0] pix0_lpi_3_dfm_mx0w0;
  wire HCOL_for_asn_8_itm_1_mx0c1;
  wire [31:0] pix_in_lpi_3_dfm_1_mx0;
  wire [8:0] operator_8_false_2_acc_ctmp_sva_1;
  wire [9:0] nl_operator_8_false_2_acc_ctmp_sva_1;
  wire HCOL_for_equal_tmp_1;
  wire HROW_y_or_cse;
  wire HCOL_for_and_8_cse;
  wire nand_cse;
  wire operator_12_true_acc_itm_11_1;

  wire not_89_nl;
  wire HROW_y_not_1_nl;
  wire mux_1_nl;
  wire and_127_nl;
  wire mux_2_nl;
  wire mux_14_nl;
  wire and_49_nl;
  wire HCOL_for_HCOL_for_HCOL_for_if_2_HCOL_for_if_2_and_nl;
  wire[11:0] operator_12_true_acc_nl;
  wire[12:0] nl_operator_12_true_acc_nl;
  wire[10:0] HCOL_for_if_2_mux_nl;
  wire HCOL_for_not_6_nl;
  wire HCOL_for_HCOL_for_nor_nl;
  wire HCOL_for_and_5_nl;
  wire HCOL_for_and_6_nl;
  wire HCOL_for_and_7_nl;
  wire[7:0] HCOL_for_mux_6_nl;
  wire HCOL_for_HCOL_for_nand_nl;
  wire[9:0] operator_10_false_acc_nl;
  wire[10:0] nl_operator_10_false_acc_nl;
  wire and_1_nl;
  wire HROW_HROW_and_1_nl;
  wire[9:0] HROW_mux_2_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [35:0] nl_EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_inst_dx_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_inst_dx_rsci_idat = {dx_rsci_idat_35_27
      , dx_rsci_idat_26_18 , dx_rsci_idat_17_9 , dx_rsci_idat_8_0};
  wire  nl_EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst_HCOL_C_0_tr0;
  assign nl_EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst_HCOL_C_0_tr0 = ~(HCOL_stage_0_2
      | reg_HCOL_stage_0_1_cse);
  EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci EdgeDetect_IP_EdgeDetect_HorDer_run_dat_in_rsci_inst
      (
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .run_wen(run_wen),
      .dat_in_rsci_oswt(reg_dat_in_rsci_oswt_cse),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_in_rsci_idat_mxwt(dat_in_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci EdgeDetect_IP_EdgeDetect_HorDer_run_dat_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .run_wen(run_wen),
      .dat_out_rsci_oswt(reg_dat_out_rsci_oswt_cse),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_idat(dat_out_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_rsc_dat(dx_rsc_dat),
      .dx_rsc_vld(dx_rsc_vld),
      .dx_rsc_rdy(dx_rsc_rdy),
      .run_wen(run_wen),
      .dx_rsci_oswt(reg_dx_rsci_oswt_cse),
      .dx_rsci_wen_comp(dx_rsci_wen_comp),
      .dx_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_HorDer_run_dx_rsci_inst_dx_rsci_idat[35:0])
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_staller EdgeDetect_IP_EdgeDetect_HorDer_run_staller_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dx_rsci_wen_comp(dx_rsci_wen_comp)
    );
  EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .HCOL_C_0_tr0(nl_EdgeDetect_IP_EdgeDetect_HorDer_run_run_fsm_inst_HCOL_C_0_tr0),
      .HROW_C_0_tr0(HROW_equal_tmp)
    );
  assign HROW_y_or_cse = (fsm_output[0]) | (fsm_output[2]);
  assign HCOL_mux1h_cse = reg_HCOL_stage_0_1_cse & (or_dcpl_29 | nand_5_cse);
  assign HCOL_for_and_8_cse = run_wen & or_dcpl_4 & reg_HCOL_stage_0_1_cse;
  assign nand_cse = ~(HCOL_for_and_2_cse_sva_1 & HCOL_if_2_equal_tmp);
  assign HCOL_x_sva_mx3_10_1 = MUX_v_10_2_2((z_out[10:1]), (HCOL_x_sva[10:1]), nand_5_cse);
  assign HCOL_for_HCOL_for_HCOL_for_if_2_HCOL_for_if_2_and_nl = (~(HCOL_if_2_equal_tmp
      & HCOL_if_2_nor_cse)) & HCOL_for_and_2_cse_sva_1;
  assign exitL_exit_HCOL_for_sva_mx0 = MUX_s_1_2_2(HCOL_for_asn_itm_1, HCOL_for_HCOL_for_HCOL_for_if_2_HCOL_for_if_2_and_nl,
      HCOL_stage_0_2);
  assign HCOL_for_if_2_mux_nl = MUX_v_11_2_2(HCOL_x_sva, z_out, HCOL_stage_0_2);
  assign nl_operator_12_true_acc_nl = ({3'b100 , (widthIn[10:2])}) + conv_u2s_11_12(~
      HCOL_for_if_2_mux_nl);
  assign operator_12_true_acc_nl = nl_operator_12_true_acc_nl[11:0];
  assign operator_12_true_acc_itm_11_1 = readslicef_12_1_11(operator_12_true_acc_nl);
  assign HCOL_for_not_6_nl = ~ exitL_exit_HCOL_for_sva_mx0;
  assign HCOL_for_i_lpi_3_dfm_2 = MUX_v_2_2_2(2'b00, HCOL_for_i_lpi_3, HCOL_for_not_6_nl);
  assign HCOL_for_HCOL_for_nor_nl = ~((HCOL_for_i_lpi_3_dfm_1!=2'b00) | HCOL_for_equal_tmp_1);
  assign HCOL_for_and_5_nl = (HCOL_for_i_lpi_3_dfm_1==2'b01) & (~ HCOL_for_equal_tmp_1);
  assign HCOL_for_and_6_nl = (HCOL_for_i_lpi_3_dfm_1==2'b10) & (~ HCOL_for_equal_tmp_1);
  assign HCOL_for_and_7_nl = (HCOL_for_i_lpi_3_dfm_1==2'b11) & (~ HCOL_for_equal_tmp_1);
  assign pix0_lpi_3_dfm_mx0w0 = MUX1HOT_v_8_5_2((pix_in_lpi_3_dfm_1_mx0[7:0]), (pix_in_lpi_3_dfm_1_mx0[15:8]),
      (pix_in_lpi_3_dfm_1_mx0[23:16]), (pix_in_lpi_3_dfm_1_mx0[31:24]), pix_buf0_lpi_3,
      {HCOL_for_HCOL_for_nor_nl , HCOL_for_and_5_nl , HCOL_for_and_6_nl , HCOL_for_and_7_nl
      , HCOL_for_equal_tmp_1});
  assign pix_in_lpi_3_dfm_1_mx0 = MUX_v_32_2_2(pix_in_lpi_3, dat_in_rsci_idat_mxwt,
      HCOL_for_and_3_itm_1);
  assign HCOL_if_2_equal_tmp = (HCOL_x_sva[8:0]) == (widthIn[10:2]);
  assign HCOL_if_2_nor_cse = ~((HCOL_x_sva[10:9]!=2'b00));
  assign HCOL_for_HCOL_for_nand_nl = ~((HCOL_x_sva[0]) & HCOL_for_nor_2_itm_1);
  assign HCOL_for_mux_6_nl = MUX_v_8_2_2(pix_buf0_lpi_3, HCOL_for_asn_8_itm_1, HCOL_for_HCOL_for_nand_nl);
  assign nl_operator_8_false_2_acc_ctmp_sva_1 = ({1'b1 , HCOL_for_mux_6_nl}) + conv_u2s_8_9(~
      pix0_lpi_3_dfm_mx0w0) + 9'b000000001;
  assign operator_8_false_2_acc_ctmp_sva_1 = nl_operator_8_false_2_acc_ctmp_sva_1[8:0];
  assign HCOL_for_equal_tmp_1 = HCOL_x_sva == widthIn;
  assign nl_operator_10_false_acc_nl = heightIn + 10'b1111111111;
  assign operator_10_false_acc_nl = nl_operator_10_false_acc_nl[9:0];
  assign HROW_equal_tmp = HROW_y_sva == operator_10_false_acc_nl;
  assign or_dcpl_3 = (HCOL_x_sva[10:9]!=2'b00) | (~ HCOL_if_2_equal_tmp);
  assign nand_5_cse = ~(HCOL_for_and_2_cse_sva_1 & HCOL_stage_0_2);
  assign or_dcpl_4 = or_dcpl_3 | nand_5_cse;
  assign and_1_nl = HCOL_for_and_2_cse_sva_1 & or_dcpl_3;
  assign mux_tmp = MUX_s_1_2_2(HCOL_for_asn_itm_1, and_1_nl, HCOL_stage_0_2);
  assign and_dcpl_20 = HCOL_for_and_2_cse_sva_1 & HCOL_stage_0_2;
  assign or_dcpl_22 = (HCOL_asn_itm_1!=11'b00000000000);
  assign or_dcpl_28 = (HCOL_x_sva[10:9]!=2'b00);
  assign or_dcpl_29 = or_dcpl_28 | (~ HCOL_if_2_equal_tmp);
  assign or_dcpl_31 = (~ HCOL_stage_0_2) | (HCOL_for_i_lpi_3_dfm_1[1]);
  assign dx_rsci_idat_8_0_mx0c1 = or_dcpl_22 & and_dcpl_20 & ((HCOL_for_i_lpi_3_dfm_1!=2'b00))
      & (fsm_output[1]);
  assign dx_rsci_idat_26_18_mx0c1 = or_dcpl_22 & and_dcpl_20 & ((HCOL_for_i_lpi_3_dfm_1!=2'b10))
      & (fsm_output[1]);
  assign dx_rsci_idat_17_9_mx0c1 = or_dcpl_22 & and_dcpl_20 & ((HCOL_for_i_lpi_3_dfm_1!=2'b01))
      & (fsm_output[1]);
  assign HCOL_for_asn_8_itm_1_mx0c1 = (~((~(HCOL_if_2_nor_cse & HCOL_if_2_equal_tmp
      & HCOL_for_and_2_cse_sva_1)) & reg_HCOL_stage_0_1_cse)) & HCOL_stage_0_2 &
      (fsm_output[1]);
  always @(posedge clk) begin
    if ( run_wen & (fsm_output[1]) & HCOL_for_asn_itm_1 & (~ HCOL_if_slc_operator_12_true_acc_11_svs_st_1)
        & HCOL_stage_0_2 ) begin
      dat_out_rsci_idat <= dat_in_rsci_idat_mxwt;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (~((~ (fsm_output[1])) | ((HCOL_asn_itm_1==11'b00000000000)) |
        nand_5_cse)) ) begin
      dx_rsci_idat_35_27 <= operator_8_false_2_acc_ctmp_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & ((or_dcpl_22 & and_dcpl_20 & (HCOL_for_i_lpi_3_dfm_1==2'b00) &
        (fsm_output[1])) | dx_rsci_idat_8_0_mx0c1) ) begin
      dx_rsci_idat_8_0 <= MUX_v_9_2_2(operator_8_false_2_acc_ctmp_sva_1, pix_0_lpi_3,
          dx_rsci_idat_8_0_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & ((or_dcpl_22 & and_dcpl_20 & (HCOL_for_i_lpi_3_dfm_1==2'b10) &
        (fsm_output[1])) | dx_rsci_idat_26_18_mx0c1) ) begin
      dx_rsci_idat_26_18 <= MUX_v_9_2_2(operator_8_false_2_acc_ctmp_sva_1, pix_2_lpi_3,
          dx_rsci_idat_26_18_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & ((or_dcpl_22 & and_dcpl_20 & (HCOL_for_i_lpi_3_dfm_1==2'b01) &
        (fsm_output[1])) | dx_rsci_idat_17_9_mx0c1) ) begin
      dx_rsci_idat_17_9 <= MUX_v_9_2_2(operator_8_false_2_acc_ctmp_sva_1, pix_1_lpi_3,
          dx_rsci_idat_17_9_mx0c1);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_x_sva <= 11'b00000000000;
    end
    else if ( rst ) begin
      HCOL_x_sva <= 11'b00000000000;
    end
    else if ( run_wen & ((~ nand_5_cse) | HROW_y_or_cse) ) begin
      HCOL_x_sva <= MUX_v_11_2_2(11'b00000000000, z_out, not_89_nl);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & HROW_y_or_cse ) begin
      HROW_y_sva <= MUX_v_10_2_2(10'b0000000000, (z_out[9:0]), HROW_y_not_1_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_HCOL_stage_0_1_cse <= 1'b0;
      HCOL_for_asn_itm_1 <= 1'b0;
      HCOL_stage_0_2 <= 1'b0;
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_dx_rsci_oswt_cse <= 1'b0;
      HCOL_for_nor_2_itm_1 <= 1'b0;
    end
    else if ( rst ) begin
      reg_HCOL_stage_0_1_cse <= 1'b0;
      HCOL_for_asn_itm_1 <= 1'b0;
      HCOL_stage_0_2 <= 1'b0;
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_dx_rsci_oswt_cse <= 1'b0;
      HCOL_for_nor_2_itm_1 <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_HCOL_stage_0_1_cse <= HCOL_mux1h_cse | HROW_y_or_cse;
      HCOL_for_asn_itm_1 <= exitL_exit_HCOL_for_sva_mx0 | HROW_y_or_cse;
      HCOL_stage_0_2 <= HCOL_mux1h_cse & (~ HROW_y_or_cse);
      reg_dat_in_rsci_oswt_cse <= mux_14_nl & reg_HCOL_stage_0_1_cse & (~ operator_12_true_acc_itm_11_1)
          & (fsm_output[1]);
      reg_dat_out_rsci_oswt_cse <= HCOL_for_asn_itm_1 & (~ HCOL_if_slc_operator_12_true_acc_11_svs_st_1)
          & HCOL_stage_0_2 & (fsm_output[1]);
      reg_dx_rsci_oswt_cse <= or_dcpl_22 & and_dcpl_20 & (fsm_output[1]);
      HCOL_for_nor_2_itm_1 <= ~((HCOL_x_sva_mx3_10_1!=10'b0000000000));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_for_i_lpi_3 <= 2'b00;
    end
    else if ( rst ) begin
      HCOL_for_i_lpi_3 <= 2'b00;
    end
    else if ( run_wen & reg_HCOL_stage_0_1_cse & mux_1_nl ) begin
      HCOL_for_i_lpi_3 <= nl_HCOL_for_i_lpi_3[1:0];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_if_slc_operator_12_true_acc_11_svs_st_1 <= 1'b0;
    end
    else if ( rst ) begin
      HCOL_if_slc_operator_12_true_acc_11_svs_st_1 <= 1'b0;
    end
    else if ( run_wen & mux_tmp & reg_HCOL_stage_0_1_cse ) begin
      HCOL_if_slc_operator_12_true_acc_11_svs_st_1 <= operator_12_true_acc_itm_11_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_for_and_2_cse_sva_1 <= 1'b0;
      HCOL_for_i_lpi_3_dfm_1 <= 2'b00;
      HCOL_for_and_3_itm_1 <= 1'b0;
    end
    else if ( rst ) begin
      HCOL_for_and_2_cse_sva_1 <= 1'b0;
      HCOL_for_i_lpi_3_dfm_1 <= 2'b00;
      HCOL_for_and_3_itm_1 <= 1'b0;
    end
    else if ( HCOL_for_and_8_cse ) begin
      HCOL_for_and_2_cse_sva_1 <= (HCOL_for_i_lpi_3_dfm_2==2'b11);
      HCOL_for_i_lpi_3_dfm_1 <= HCOL_for_i_lpi_3_dfm_2;
      HCOL_for_and_3_itm_1 <= (~ operator_12_true_acc_itm_11_1) & exitL_exit_HCOL_for_sva_mx0;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      HCOL_asn_itm_1 <= 11'b00000000000;
    end
    else if ( rst ) begin
      HCOL_asn_itm_1 <= 11'b00000000000;
    end
    else if ( run_wen & (~ mux_2_nl) & (HCOL_for_i_lpi_3==2'b11) & reg_HCOL_stage_0_1_cse
        ) begin
      HCOL_asn_itm_1 <= HCOL_x_sva;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (~(or_dcpl_31 | (HCOL_for_i_lpi_3_dfm_1[0]))) ) begin
      pix_0_lpi_3 <= operator_8_false_2_acc_ctmp_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (~((~(HCOL_stage_0_2 & (HCOL_for_i_lpi_3_dfm_1[1]))) | (HCOL_for_i_lpi_3_dfm_1[0])
        | (~ (fsm_output[1])))) ) begin
      pix_2_lpi_3 <= operator_8_false_2_acc_ctmp_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (~(or_dcpl_31 | (~ (HCOL_for_i_lpi_3_dfm_1[0])) | (~ (fsm_output[1]))))
        ) begin
      pix_1_lpi_3 <= operator_8_false_2_acc_ctmp_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( ((((HCOL_x_sva[10:9]!=2'b00) | nand_cse) & (fsm_output[1]) & HCOL_stage_0_2
        & (~ HCOL_for_equal_tmp_1)) | (fsm_output[0]) | (fsm_output[2])) & run_wen
        ) begin
      pix_buf0_lpi_3 <= MUX_v_8_2_2(pix0_lpi_3_dfm_mx0w0, HCOL_for_asn_8_itm_1, HROW_y_or_cse);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (((or_dcpl_28 | nand_cse) & reg_HCOL_stage_0_1_cse & HCOL_stage_0_2
        & (fsm_output[1])) | ((~ HROW_equal_tmp) & (fsm_output[2])) | HCOL_for_asn_8_itm_1_mx0c1)
        ) begin
      HCOL_for_asn_8_itm_1 <= MUX_v_8_2_2(pix_buf0_lpi_3, pix0_lpi_3_dfm_mx0w0, HCOL_for_asn_8_itm_1_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & HCOL_for_and_3_itm_1 & HCOL_stage_0_2 & (fsm_output[1]) & ((~
        mux_tmp) | (~ reg_HCOL_stage_0_1_cse) | operator_12_true_acc_itm_11_1) )
        begin
      pix_in_lpi_3 <= dat_in_rsci_idat_mxwt;
    end
  end
  assign not_89_nl = ~ HROW_y_or_cse;
  assign HROW_y_not_1_nl = ~ (fsm_output[0]);
  assign and_49_nl = HCOL_for_and_2_cse_sva_1 & or_dcpl_29;
  assign mux_14_nl = MUX_s_1_2_2(HCOL_for_asn_itm_1, and_49_nl, HCOL_stage_0_2);
  assign nl_HCOL_for_i_lpi_3  = HCOL_for_i_lpi_3_dfm_2 + 2'b01;
  assign and_127_nl = (HCOL_for_i_lpi_3==2'b11);
  assign mux_1_nl = MUX_s_1_2_2(or_dcpl_4, mux_tmp, and_127_nl);
  assign mux_2_nl = MUX_s_1_2_2(HCOL_for_asn_itm_1, HCOL_for_and_2_cse_sva_1, HCOL_stage_0_2);
  assign HROW_HROW_and_1_nl = (HCOL_x_sva[10]) & (fsm_output[1]);
  assign HROW_mux_2_nl = MUX_v_10_2_2(HROW_y_sva, (HCOL_x_sva[9:0]), fsm_output[1]);
  assign nl_z_out = ({HROW_HROW_and_1_nl , HROW_mux_2_nl}) + 11'b00000000001;
  assign z_out = nl_z_out[10:0];

  function automatic [7:0] MUX1HOT_v_8_5_2;
    input [7:0] input_4;
    input [7:0] input_3;
    input [7:0] input_2;
    input [7:0] input_1;
    input [7:0] input_0;
    input [4:0] sel;
    reg [7:0] result;
  begin
    result = input_0 & {8{sel[0]}};
    result = result | (input_1 & {8{sel[1]}});
    result = result | (input_2 & {8{sel[2]}});
    result = result | (input_3 & {8{sel[3]}});
    result = result | (input_4 & {8{sel[4]}});
    MUX1HOT_v_8_5_2 = result;
  end
  endfunction


  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [10:0] MUX_v_11_2_2;
    input [10:0] input_0;
    input [10:0] input_1;
    input  sel;
    reg [10:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_11_2_2 = result;
  end
  endfunction


  function automatic [1:0] MUX_v_2_2_2;
    input [1:0] input_0;
    input [1:0] input_1;
    input  sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input  sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input  sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input  sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_12_1_11;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 11;
    readslicef_12_1_11 = tmp[0:0];
  end
  endfunction


  function automatic [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 =  {1'b0, vector};
  end
  endfunction


  function automatic [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer_struct
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer_struct (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, dx_rsc_dat_grad3, dx_rsc_dat_grad2,
      dx_rsc_dat_grad1, dx_rsc_dat_grad0, dx_rsc_vld, dx_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output [8:0] dx_rsc_dat_grad3;
  output [8:0] dx_rsc_dat_grad2;
  output [8:0] dx_rsc_dat_grad1;
  output [8:0] dx_rsc_dat_grad0;
  output dx_rsc_vld;
  input dx_rsc_rdy;


  // Interconnect Declarations
  wire [35:0] dx_rsc_dat;


  // Interconnect Declarations for Component Instantiations 
  EdgeDetect_IP_EdgeDetect_HorDer_run EdgeDetect_IP_EdgeDetect_HorDer_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .dx_rsc_dat(dx_rsc_dat),
      .dx_rsc_vld(dx_rsc_vld),
      .dx_rsc_rdy(dx_rsc_rdy)
    );
  assign dx_rsc_dat_grad0 = dx_rsc_dat[8:0];
  assign dx_rsc_dat_grad1 = dx_rsc_dat[17:9];
  assign dx_rsc_dat_grad2 = dx_rsc_dat[26:18];
  assign dx_rsc_dat_grad3 = dx_rsc_dat[35:27];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_HorDer
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_HorDer (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, dx_rsc_dat, dx_rsc_vld,
      dx_rsc_rdy
);
  input clk;
  input rst;
  input arst_n;
  input [31:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output [35:0] dx_rsc_dat;
  output dx_rsc_vld;
  input dx_rsc_rdy;


  // Interconnect Declarations
  wire [8:0] dx_rsc_dat_grad3;
  wire [8:0] dx_rsc_dat_grad2;
  wire [8:0] dx_rsc_dat_grad1;
  wire [8:0] dx_rsc_dat_grad0;


  // Interconnect Declarations for Component Instantiations 
  EdgeDetect_IP_EdgeDetect_HorDer_struct EdgeDetect_IP_EdgeDetect_HorDer_struct_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .dx_rsc_dat_grad3(dx_rsc_dat_grad3),
      .dx_rsc_dat_grad2(dx_rsc_dat_grad2),
      .dx_rsc_dat_grad1(dx_rsc_dat_grad1),
      .dx_rsc_dat_grad0(dx_rsc_dat_grad0),
      .dx_rsc_vld(dx_rsc_vld),
      .dx_rsc_rdy(dx_rsc_rdy)
    );
  assign dx_rsc_dat = {dx_rsc_dat_grad3 , dx_rsc_dat_grad2 , dx_rsc_dat_grad1 , dx_rsc_dat_grad0};
endmodule




//------> ../EdgeDetect_IP_EdgeDetect_VerDer.v1/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   m112061603@ws34
//  Generated date: Sun Apr 14 20:43:26 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_7_64_8_240_240_64_5_gen
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_7_64_8_240_240_64_5_gen
    (
  en, q, we, d, adr, adr_d, d_d, en_d, we_d, q_d, port_0_rw_ram_ir_internal_RMASK_B_d,
      port_0_rw_ram_ir_internal_WMASK_B_d
);
  output en;
  input [63:0] q;
  output we;
  output [63:0] d;
  output [7:0] adr;
  input [7:0] adr_d;
  input [63:0] d_d;
  input en_d;
  input we_d;
  output [63:0] q_d;
  input port_0_rw_ram_ir_internal_RMASK_B_d;
  input port_0_rw_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign en = (en_d);
  assign q_d = q;
  assign we = (port_0_rw_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign adr = (adr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_64_8_240_240_64_5_gen
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_64_8_240_240_64_5_gen
    (
  en, q, we, d, adr, adr_d, d_d, en_d, we_d, q_d, port_0_rw_ram_ir_internal_RMASK_B_d,
      port_0_rw_ram_ir_internal_WMASK_B_d
);
  output en;
  input [63:0] q;
  output we;
  output [63:0] d;
  output [7:0] adr;
  input [7:0] adr_d;
  input [63:0] d_d;
  input en_d;
  input we_d;
  output [63:0] q_d;
  input port_0_rw_ram_ir_internal_RMASK_B_d;
  input port_0_rw_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign en = (en_d);
  assign q_d = q;
  assign we = (port_0_rw_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign adr = (adr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, VCOL_C_0_tr0, VROW_C_0_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [3:0] fsm_output;
  reg [3:0] fsm_output;
  input VCOL_C_0_tr0;
  input VROW_C_0_tr0;


  // FSM State Type Declaration for EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_1
  parameter
    main_C_0 = 2'd0,
    VCOL_C_0 = 2'd1,
    VROW_C_0 = 2'd2,
    main_C_1 = 2'd3;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_1
    case (state_var)
      VCOL_C_0 : begin
        fsm_output = 4'b0010;
        if ( VCOL_C_0_tr0 ) begin
          state_var_NS = VROW_C_0;
        end
        else begin
          state_var_NS = VCOL_C_0;
        end
      end
      VROW_C_0 : begin
        fsm_output = 4'b0100;
        if ( VROW_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = VCOL_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 4'b1000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 4'b0001;
        state_var_NS = VCOL_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= main_C_0;
    end
    else if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_staller
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_staller (
  run_wen, dat_in_rsci_wen_comp, dat_out_rsci_wen_comp, dy_rsci_wen_comp
);
  output run_wen;
  input dat_in_rsci_wen_comp;
  input dat_out_rsci_wen_comp;
  input dy_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = dat_in_rsci_wen_comp & dat_out_rsci_wen_comp & dy_rsci_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp (
  line_buf0_rsci_en_d, run_wen, line_buf0_rsci_cgo, line_buf0_rsci_cgo_ir_unreg
);
  output line_buf0_rsci_en_d;
  input run_wen;
  input line_buf0_rsci_cgo;
  input line_buf0_rsci_cgo_ir_unreg;



  // Interconnect Declarations for Component Instantiations 
  assign line_buf0_rsci_en_d = run_wen & (line_buf0_rsci_cgo | line_buf0_rsci_cgo_ir_unreg);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_dp (
  clk, rst, arst_n, dy_rsci_oswt, dy_rsci_wen_comp, dy_rsci_biwt, dy_rsci_bdwt, dy_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dy_rsci_oswt;
  output dy_rsci_wen_comp;
  input dy_rsci_biwt;
  input dy_rsci_bdwt;
  output dy_rsci_bcwt;
  reg dy_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dy_rsci_wen_comp = (~ dy_rsci_oswt) | dy_rsci_biwt | dy_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dy_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dy_rsci_bcwt <= 1'b0;
    end
    else begin
      dy_rsci_bcwt <= ~((~(dy_rsci_bcwt | dy_rsci_biwt)) | dy_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_ctrl (
  run_wen, dy_rsci_oswt, dy_rsci_biwt, dy_rsci_bdwt, dy_rsci_bcwt, dy_rsci_irdy,
      dy_rsci_ivld_run_sct
);
  input run_wen;
  input dy_rsci_oswt;
  output dy_rsci_biwt;
  output dy_rsci_bdwt;
  input dy_rsci_bcwt;
  input dy_rsci_irdy;
  output dy_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dy_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dy_rsci_bdwt = dy_rsci_oswt & run_wen;
  assign dy_rsci_biwt = dy_rsci_ogwt & dy_rsci_irdy;
  assign dy_rsci_ogwt = dy_rsci_oswt & (~ dy_rsci_bcwt);
  assign dy_rsci_ivld_run_sct = dy_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_dp
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_dp (
  clk, rst, arst_n, dat_out_rsci_oswt, dat_out_rsci_wen_comp, dat_out_rsci_biwt,
      dat_out_rsci_bdwt, dat_out_rsci_bcwt
);
  input clk;
  input rst;
  input arst_n;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input dat_out_rsci_biwt;
  input dat_out_rsci_bdwt;
  output dat_out_rsci_bcwt;
  reg dat_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_wen_comp = (~ dat_out_rsci_oswt) | dat_out_rsci_biwt | dat_out_rsci_bcwt;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else if ( rst ) begin
      dat_out_rsci_bcwt <= 1'b0;
    end
    else begin
      dat_out_rsci_bcwt <= ~((~(dat_out_rsci_bcwt | dat_out_rsci_biwt)) | dat_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_ctrl (
  run_wen, dat_out_rsci_oswt, dat_out_rsci_biwt, dat_out_rsci_bdwt, dat_out_rsci_bcwt,
      dat_out_rsci_irdy, dat_out_rsci_ivld_run_sct
);
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_biwt;
  output dat_out_rsci_bdwt;
  input dat_out_rsci_bcwt;
  input dat_out_rsci_irdy;
  output dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire dat_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign dat_out_rsci_bdwt = dat_out_rsci_oswt & run_wen;
  assign dat_out_rsci_biwt = dat_out_rsci_ogwt & dat_out_rsci_irdy;
  assign dat_out_rsci_ogwt = dat_out_rsci_oswt & (~ dat_out_rsci_bcwt);
  assign dat_out_rsci_ivld_run_sct = dat_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl (
  run_wen, dat_in_rsci_iswt0, dat_in_rsci_irdy_run_sct
);
  input run_wen;
  input dat_in_rsci_iswt0;
  output dat_in_rsci_irdy_run_sct;



  // Interconnect Declarations for Component Instantiations 
  assign dat_in_rsci_irdy_run_sct = dat_in_rsci_iswt0 & run_wen;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci (
  clk, rst, arst_n, dy_rsc_dat, dy_rsc_vld, dy_rsc_rdy, run_wen, dy_rsci_oswt, dy_rsci_wen_comp,
      dy_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [35:0] dy_rsc_dat;
  output dy_rsc_vld;
  input dy_rsc_rdy;
  input run_wen;
  input dy_rsci_oswt;
  output dy_rsci_wen_comp;
  input [35:0] dy_rsci_idat;


  // Interconnect Declarations
  wire dy_rsci_biwt;
  wire dy_rsci_bdwt;
  wire dy_rsci_bcwt;
  wire dy_rsci_irdy;
  wire dy_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd5),
  .width(32'sd36)) dy_rsci (
      .irdy(dy_rsci_irdy),
      .ivld(dy_rsci_ivld_run_sct),
      .idat(dy_rsci_idat),
      .rdy(dy_rsc_rdy),
      .vld(dy_rsc_vld),
      .dat(dy_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_ctrl EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dy_rsci_oswt(dy_rsci_oswt),
      .dy_rsci_biwt(dy_rsci_biwt),
      .dy_rsci_bdwt(dy_rsci_bdwt),
      .dy_rsci_bcwt(dy_rsci_bcwt),
      .dy_rsci_irdy(dy_rsci_irdy),
      .dy_rsci_ivld_run_sct(dy_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_dp EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_dy_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_rsci_oswt(dy_rsci_oswt),
      .dy_rsci_wen_comp(dy_rsci_wen_comp),
      .dy_rsci_biwt(dy_rsci_biwt),
      .dy_rsci_bdwt(dy_rsci_bdwt),
      .dy_rsci_bcwt(dy_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci (
  clk, rst, arst_n, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, run_wen, dat_out_rsci_oswt,
      dat_out_rsci_wen_comp, dat_out_rsci_idat
);
  input clk;
  input rst;
  input arst_n;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  input run_wen;
  input dat_out_rsci_oswt;
  output dat_out_rsci_wen_comp;
  input [31:0] dat_out_rsci_idat;


  // Interconnect Declarations
  wire dat_out_rsci_biwt;
  wire dat_out_rsci_bdwt;
  wire dat_out_rsci_bcwt;
  wire dat_out_rsci_irdy;
  wire dat_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd4),
  .width(32'sd32)) dat_out_rsci (
      .irdy(dat_out_rsci_irdy),
      .ivld(dat_out_rsci_ivld_run_sct),
      .idat(dat_out_rsci_idat),
      .rdy(dat_out_rsc_rdy),
      .vld(dat_out_rsc_vld),
      .dat(dat_out_rsc_dat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_ctrl EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt),
      .dat_out_rsci_irdy(dat_out_rsci_irdy),
      .dat_out_rsci_ivld_run_sct(dat_out_rsci_ivld_run_sct)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_dp EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_dat_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsci_oswt(dat_out_rsci_oswt),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_biwt(dat_out_rsci_biwt),
      .dat_out_rsci_bdwt(dat_out_rsci_bdwt),
      .dat_out_rsci_bcwt(dat_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci (
  dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, run_wen, dat_in_rsci_oswt, dat_in_rsci_wen_comp,
      dat_in_rsci_idat_mxwt
);
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input run_wen;
  input dat_in_rsci_oswt;
  output dat_in_rsci_wen_comp;
  output [31:0] dat_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire dat_in_rsci_irdy_run_sct;
  wire dat_in_rsci_ivld;
  wire [33:0] dat_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_coupled_v1 #(.rscid(32'sd1),
  .width(32'sd34)) dat_in_rsci (
      .rdy(dat_in_rsc_rdy),
      .vld(dat_in_rsc_vld),
      .dat(dat_in_rsc_dat),
      .irdy(dat_in_rsci_irdy_run_sct),
      .ivld(dat_in_rsci_ivld),
      .idat(dat_in_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_dat_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_iswt0(dat_in_rsci_oswt),
      .dat_in_rsci_irdy_run_sct(dat_in_rsci_irdy_run_sct)
    );
  assign dat_in_rsci_idat_mxwt = dat_in_rsci_idat[31:0];
  assign dat_in_rsci_wen_comp = (~ dat_in_rsci_oswt) | dat_in_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_run
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_run (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, dy_rsc_dat, dy_rsc_vld,
      dy_rsc_rdy, line_buf0_rsci_d_d, line_buf0_rsci_en_d, line_buf0_rsci_q_d, line_buf1_rsci_d_d,
      line_buf1_rsci_q_d, line_buf0_rsci_adr_d_pff, line_buf0_rsci_we_d_pff, line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output [35:0] dy_rsc_dat;
  output dy_rsc_vld;
  input dy_rsc_rdy;
  output [63:0] line_buf0_rsci_d_d;
  output line_buf0_rsci_en_d;
  input [63:0] line_buf0_rsci_q_d;
  output [63:0] line_buf1_rsci_d_d;
  input [63:0] line_buf1_rsci_q_d;
  output [7:0] line_buf0_rsci_adr_d_pff;
  output line_buf0_rsci_we_d_pff;
  output line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire dat_in_rsci_wen_comp;
  wire [31:0] dat_in_rsci_idat_mxwt;
  wire dat_out_rsci_wen_comp;
  reg [31:0] dat_out_rsci_idat;
  wire dy_rsci_wen_comp;
  reg [8:0] dy_rsci_idat_35_27;
  wire [9:0] nl_dy_rsci_idat_35_27;
  reg [8:0] dy_rsci_idat_26_18;
  wire [9:0] nl_dy_rsci_idat_26_18;
  reg [8:0] dy_rsci_idat_17_9;
  wire [9:0] nl_dy_rsci_idat_17_9;
  reg [8:0] dy_rsci_idat_8_0;
  wire [9:0] nl_dy_rsci_idat_8_0;
  reg [31:0] dat_in_crt_lpi_3_dfm_31_0;
  wire [3:0] fsm_output;
  wire VROW_equal_tmp;
  wire VCOL_equal_tmp;
  wire or_dcpl_10;
  wire or_dcpl_42;
  wire or_dcpl_47;
  reg [9:0] VROW_y_sva;
  reg VCOL_stage_0_1;
  reg VCOL_stage_0_2;
  reg [10:0] VCOL_x_sva;
  reg VCOL_for_nor_1_itm_1;
  reg [9:0] VCOL_asn_4_itm_1;
  reg VCOL_stage_0_3;
  reg operator_11_false_operator_11_false_slc_VCOL_x_0_2_itm_1;
  reg [9:0] VCOL_asn_4_itm;
  reg [9:0] VCOL_asn_4_itm_2;
  reg operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1;
  reg VCOL_if_slc_operator_10_false_acc_10_svs_1;
  reg VCOL_asn_6_itm_1;
  wire VCOL_if_3_and_cse;
  reg reg_dat_in_rsci_oswt_cse;
  reg reg_dat_out_rsci_oswt_cse;
  reg reg_line_buf0_rsci_cgo_cse;
  wire nand_cse;
  reg [63:0] reg_line_buf1_rsci_d_d_cse;
  wire VCOL_VCOL_and_cse;
  reg reg_VCOL_for_nor_1_itm_2_cse_1;
  wire rdbuf0_pix_or_cse;
  wire VCOL_for_and_6_cse;
  wire VCOL_for_and_7_cse;
  wire [31:0] VCOL_if_mux1h_rmff;
  wire [63:0] VCOL_if_2_mux1h_3_rmff;
  wire and_89_rmff;
  reg [31:0] wrbuf0_pix_31_0_lpi_4;
  wire [9:0] z_out;
  wire [10:0] nl_z_out;
  reg [7:0] VCOL_for_1_qelse_VCOL_for_qelse_slc_rdbuf1_pix_VCOL_for_qelse_conc_1_7_0_itm_1;
  reg [31:0] dat_in_crt_lpi_3_31_0;
  reg [55:0] rdbuf1_pix_lpi_3_63_8;
  wire dat_out_rsci_idat_mx0c1;
  wire [10:0] VCOL_x_sva_mx1;
  wire dat_in_crt_lpi_3_31_0_mx2c2;
  wire [55:0] rdbuf1_pix_lpi_3_63_8_mx0;
  wire [7:0] VCOL_for_qr_1_lpi_3_dfm_mx0;
  wire VCOL_for_VCOL_for_nand_3_tmp_1;
  wire [7:0] VCOL_for_qr_5_lpi_3_dfm_mx0;
  wire [7:0] VCOL_for_qr_7_lpi_3_dfm_mx0;
  wire [7:0] VCOL_for_qr_6_lpi_3_dfm_mx0;
  wire [63:0] rdbuf0_pix_lpi_3_dfm_mx0;
  wire [23:0] rdbuf1_pix_lpi_3_dfm_63_8_mx0_55_32;
  wire [23:0] rdbuf1_pix_lpi_3_dfm_63_8_mx0_23_0;
  wire VROW_y_or_cse;
  wire VCOL_and_2_cse;
  wire VCOL_and_4_cse;
  wire operator_10_false_acc_itm_10_1;

  wire[7:0] VCOL_for_VCOL_for_mux1h_3_nl;
  wire[7:0] VCOL_for_mux_14_nl;
  wire[7:0] VCOL_for_VCOL_for_mux1h_nl;
  wire[7:0] VCOL_for_mux_2_nl;
  wire[7:0] VCOL_for_VCOL_for_mux1h_2_nl;
  wire[7:0] VCOL_for_mux_10_nl;
  wire[7:0] VCOL_for_VCOL_for_mux1h_1_nl;
  wire[7:0] VCOL_for_mux_6_nl;
  wire VROW_y_not_2_nl;
  wire not_67_nl;
  wire VCOL_and_nl;
  wire VCOL_and_1_nl;
  wire[9:0] VROW_y_mux_nl;
  wire VCOL_nor_nl;
  wire mux_nl;
  wire[10:0] VCOL_acc_1_nl;
  wire[11:0] nl_VCOL_acc_1_nl;
  wire[10:0] operator_10_false_acc_nl;
  wire[11:0] nl_operator_10_false_acc_nl;
  wire VROW_VROW_and_1_nl;
  wire[8:0] VROW_mux_3_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [35:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_inst_dy_rsci_idat;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_inst_dy_rsci_idat = {dy_rsci_idat_35_27
      , dy_rsci_idat_26_18 , dy_rsci_idat_17_9 , dy_rsci_idat_8_0};
  wire  nl_EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst_VCOL_C_0_tr0;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst_VCOL_C_0_tr0 = ~(VCOL_stage_0_3
      | VCOL_stage_0_1 | VCOL_stage_0_2);
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci EdgeDetect_IP_EdgeDetect_VerDer_run_dat_in_rsci_inst
      (
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .run_wen(run_wen),
      .dat_in_rsci_oswt(reg_dat_in_rsci_oswt_cse),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_in_rsci_idat_mxwt(dat_in_rsci_idat_mxwt)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci EdgeDetect_IP_EdgeDetect_VerDer_run_dat_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .run_wen(run_wen),
      .dat_out_rsci_oswt(reg_dat_out_rsci_oswt_cse),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dat_out_rsci_idat(dat_out_rsci_idat)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dy_rsc_dat(dy_rsc_dat),
      .dy_rsc_vld(dy_rsc_vld),
      .dy_rsc_rdy(dy_rsc_rdy),
      .run_wen(run_wen),
      .dy_rsci_oswt(reg_dat_out_rsci_oswt_cse),
      .dy_rsci_wen_comp(dy_rsci_wen_comp),
      .dy_rsci_idat(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_dy_rsci_inst_dy_rsci_idat[35:0])
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp EdgeDetect_IP_EdgeDetect_VerDer_run_wait_dp_inst
      (
      .line_buf0_rsci_en_d(line_buf0_rsci_en_d),
      .run_wen(run_wen),
      .line_buf0_rsci_cgo(reg_line_buf0_rsci_cgo_cse),
      .line_buf0_rsci_cgo_ir_unreg(and_89_rmff)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_staller EdgeDetect_IP_EdgeDetect_VerDer_run_staller_inst
      (
      .run_wen(run_wen),
      .dat_in_rsci_wen_comp(dat_in_rsci_wen_comp),
      .dat_out_rsci_wen_comp(dat_out_rsci_wen_comp),
      .dy_rsci_wen_comp(dy_rsci_wen_comp)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .VCOL_C_0_tr0(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_run_fsm_inst_VCOL_C_0_tr0),
      .VROW_C_0_tr0(VROW_equal_tmp)
    );
  assign VCOL_if_3_and_cse = run_wen & (fsm_output[1]) & (~((VCOL_asn_4_itm_2==10'b0000000000)))
      & VCOL_stage_0_3;
  assign VCOL_for_and_6_cse = (~ operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1)
      & VCOL_for_VCOL_for_nand_3_tmp_1;
  assign VCOL_for_and_7_cse = operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1
      & VCOL_for_VCOL_for_nand_3_tmp_1;
  assign VROW_y_or_cse = (fsm_output[0]) | (fsm_output[2]);
  assign VCOL_and_2_cse = run_wen & VCOL_stage_0_2;
  assign VCOL_and_4_cse = run_wen & VCOL_VCOL_and_cse;
  assign and_89_rmff = (VCOL_stage_0_3 | VCOL_stage_0_2) & (fsm_output[1]);
  assign VCOL_and_nl = (~ or_dcpl_47) & VCOL_if_slc_operator_10_false_acc_10_svs_1;
  assign VCOL_and_1_nl = or_dcpl_47 & VCOL_if_slc_operator_10_false_acc_10_svs_1;
  assign VCOL_if_mux1h_rmff = MUX1HOT_v_32_3_2(dat_in_rsci_idat_mxwt, dat_in_crt_lpi_3_dfm_31_0,
      dat_in_crt_lpi_3_31_0, {(~ VCOL_if_slc_operator_10_false_acc_10_svs_1) , VCOL_and_nl
      , VCOL_and_1_nl});
  assign rdbuf0_pix_or_cse = operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1
      | or_dcpl_47;
  assign VCOL_if_2_mux1h_3_rmff = MUX_v_64_2_2(line_buf0_rsci_q_d, reg_line_buf1_rsci_d_d_cse,
      rdbuf0_pix_or_cse);
  assign VCOL_equal_tmp = VCOL_x_sva == ({{1{z_out[9]}}, z_out});
  assign VCOL_VCOL_and_cse = VCOL_stage_0_1 & nand_cse;
  assign nl_VCOL_acc_1_nl = VCOL_x_sva + 11'b00000000001;
  assign VCOL_acc_1_nl = nl_VCOL_acc_1_nl[10:0];
  assign VCOL_x_sva_mx1 = MUX_v_11_2_2(VCOL_x_sva, VCOL_acc_1_nl, VCOL_stage_0_2);
  assign rdbuf1_pix_lpi_3_63_8_mx0 = MUX_v_56_2_2((line_buf1_rsci_q_d[63:8]), rdbuf1_pix_lpi_3_63_8,
      rdbuf0_pix_or_cse);
  assign nl_operator_10_false_acc_nl = ({1'b1 , heightIn}) + conv_u2s_10_11(~ VROW_y_sva);
  assign operator_10_false_acc_nl = nl_operator_10_false_acc_nl[10:0];
  assign operator_10_false_acc_itm_10_1 = readslicef_11_1_10(operator_10_false_acc_nl);
  assign VCOL_for_qr_1_lpi_3_dfm_mx0 = MUX_v_8_2_2((line_buf0_rsci_q_d[31:24]), (reg_line_buf1_rsci_d_d_cse[63:56]),
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign VCOL_for_VCOL_for_nand_3_tmp_1 = ~((VROW_y_sva[0]) & reg_VCOL_for_nor_1_itm_2_cse_1);
  assign rdbuf1_pix_lpi_3_dfm_63_8_mx0_55_32 = MUX_v_24_2_2((line_buf1_rsci_q_d[63:40]),
      (rdbuf1_pix_lpi_3_63_8[55:32]), operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign rdbuf1_pix_lpi_3_dfm_63_8_mx0_23_0 = MUX_v_24_2_2((line_buf1_rsci_q_d[31:8]),
      (rdbuf1_pix_lpi_3_63_8[23:0]), operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign VROW_equal_tmp = VROW_y_sva == heightIn;
  assign VCOL_for_qr_5_lpi_3_dfm_mx0 = MUX_v_8_2_2((line_buf0_rsci_q_d[7:0]), (reg_line_buf1_rsci_d_d_cse[39:32]),
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign VCOL_for_qr_7_lpi_3_dfm_mx0 = MUX_v_8_2_2((line_buf0_rsci_q_d[23:16]), (reg_line_buf1_rsci_d_d_cse[55:48]),
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign VCOL_for_qr_6_lpi_3_dfm_mx0 = MUX_v_8_2_2((line_buf0_rsci_q_d[15:8]), (reg_line_buf1_rsci_d_d_cse[47:40]),
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign rdbuf0_pix_lpi_3_dfm_mx0 = MUX_v_64_2_2(line_buf0_rsci_q_d, reg_line_buf1_rsci_d_d_cse,
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1);
  assign or_dcpl_10 = (VCOL_asn_4_itm_1!=10'b0000000000);
  assign nand_cse = ~(VCOL_equal_tmp & VCOL_stage_0_2);
  assign or_dcpl_42 = (VCOL_asn_4_itm_2!=10'b0000000000);
  assign or_dcpl_47 = (~ VCOL_stage_0_3) | VCOL_asn_6_itm_1;
  assign dat_out_rsci_idat_mx0c1 = or_dcpl_42 & VCOL_stage_0_3 & (~ operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1)
      & (fsm_output[1]);
  assign dat_in_crt_lpi_3_31_0_mx2c2 = VCOL_stage_0_2 & (~ VCOL_if_slc_operator_10_false_acc_10_svs_1);
  assign line_buf0_rsci_adr_d_pff = VCOL_x_sva[8:1];
  assign line_buf0_rsci_d_d = {VCOL_if_mux1h_rmff , wrbuf0_pix_31_0_lpi_4};
  assign line_buf0_rsci_we_d_pff = VCOL_stage_0_2 & operator_11_false_operator_11_false_slc_VCOL_x_0_2_itm_1
      & (fsm_output[1]);
  assign line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff = VCOL_stage_0_2
      & (~ operator_11_false_operator_11_false_slc_VCOL_x_0_2_itm_1) & (fsm_output[1]);
  assign line_buf1_rsci_d_d = VCOL_if_2_mux1h_3_rmff;
  always @(posedge clk) begin
    if ( VCOL_if_3_and_cse ) begin
      dy_rsci_idat_35_27 <= nl_dy_rsci_idat_35_27[8:0];
      dy_rsci_idat_8_0 <= nl_dy_rsci_idat_8_0[8:0];
      dy_rsci_idat_26_18 <= nl_dy_rsci_idat_26_18[8:0];
      dy_rsci_idat_17_9 <= nl_dy_rsci_idat_17_9[8:0];
    end
  end
  always @(posedge clk) begin
    if ( run_wen & ((or_dcpl_42 & VCOL_stage_0_3 & operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1
        & (fsm_output[1])) | dat_out_rsci_idat_mx0c1) ) begin
      dat_out_rsci_idat <= MUX_v_32_2_2((rdbuf0_pix_lpi_3_dfm_mx0[63:32]), (rdbuf0_pix_lpi_3_dfm_mx0[31:0]),
          dat_out_rsci_idat_mx0c1);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VROW_y_sva <= 10'b0000000000;
    end
    else if ( rst ) begin
      VROW_y_sva <= 10'b0000000000;
    end
    else if ( run_wen & VROW_y_or_cse ) begin
      VROW_y_sva <= MUX_v_10_2_2(10'b0000000000, z_out, VROW_y_not_2_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_asn_6_itm_1 <= 1'b0;
      VCOL_asn_4_itm_2 <= 10'b0000000000;
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1 <= 1'b0;
    end
    else if ( rst ) begin
      VCOL_asn_6_itm_1 <= 1'b0;
      VCOL_asn_4_itm_2 <= 10'b0000000000;
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1 <= 1'b0;
    end
    else if ( VCOL_and_2_cse ) begin
      VCOL_asn_6_itm_1 <= VCOL_equal_tmp;
      VCOL_asn_4_itm_2 <= VCOL_asn_4_itm_1;
      operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1 <= VCOL_x_sva[0];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_stage_0_1 <= 1'b0;
      VCOL_stage_0_2 <= 1'b0;
      VCOL_stage_0_3 <= 1'b0;
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_line_buf0_rsci_cgo_cse <= 1'b0;
      VCOL_asn_4_itm <= 10'b0000000000;
    end
    else if ( rst ) begin
      VCOL_stage_0_1 <= 1'b0;
      VCOL_stage_0_2 <= 1'b0;
      VCOL_stage_0_3 <= 1'b0;
      reg_dat_in_rsci_oswt_cse <= 1'b0;
      reg_dat_out_rsci_oswt_cse <= 1'b0;
      reg_line_buf0_rsci_cgo_cse <= 1'b0;
      VCOL_asn_4_itm <= 10'b0000000000;
    end
    else if ( run_wen ) begin
      VCOL_stage_0_1 <= VCOL_VCOL_and_cse | VROW_y_or_cse;
      VCOL_stage_0_2 <= VCOL_VCOL_and_cse & (~ VROW_y_or_cse);
      VCOL_stage_0_3 <= VCOL_stage_0_2 & (~ VROW_y_or_cse);
      reg_dat_in_rsci_oswt_cse <= VCOL_stage_0_1 & (~ operator_10_false_acc_itm_10_1)
          & nand_cse & (fsm_output[1]);
      reg_dat_out_rsci_oswt_cse <= or_dcpl_42 & VCOL_stage_0_3 & (fsm_output[1]);
      reg_line_buf0_rsci_cgo_cse <= and_89_rmff;
      VCOL_asn_4_itm <= MUX_v_10_2_2(10'b0000000000, VROW_y_mux_nl, VCOL_nor_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_x_sva <= 11'b00000000000;
    end
    else if ( rst ) begin
      VCOL_x_sva <= 11'b00000000000;
    end
    else if ( (VCOL_stage_0_2 | (fsm_output[2]) | (fsm_output[0])) & run_wen ) begin
      VCOL_x_sva <= MUX_v_11_2_2(11'b00000000000, VCOL_x_sva_mx1, not_67_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_asn_4_itm_1 <= 10'b0000000000;
      operator_11_false_operator_11_false_slc_VCOL_x_0_2_itm_1 <= 1'b0;
      VCOL_if_slc_operator_10_false_acc_10_svs_1 <= 1'b0;
    end
    else if ( rst ) begin
      VCOL_asn_4_itm_1 <= 10'b0000000000;
      operator_11_false_operator_11_false_slc_VCOL_x_0_2_itm_1 <= 1'b0;
      VCOL_if_slc_operator_10_false_acc_10_svs_1 <= 1'b0;
    end
    else if ( VCOL_and_4_cse ) begin
      VCOL_asn_4_itm_1 <= VCOL_asn_4_itm;
      operator_11_false_operator_11_false_slc_VCOL_x_0_2_itm_1 <= VCOL_x_sva_mx1[0];
      VCOL_if_slc_operator_10_false_acc_10_svs_1 <= operator_10_false_acc_itm_10_1;
    end
  end
  always @(posedge clk) begin
    if ( ((~ VCOL_stage_0_3) | VCOL_asn_6_itm_1 | (~ VCOL_if_slc_operator_10_false_acc_10_svs_1))
        & run_wen ) begin
      dat_in_crt_lpi_3_dfm_31_0 <= VCOL_if_mux1h_rmff;
    end
  end
  always @(posedge clk) begin
    if ( VCOL_stage_0_3 & (~ VCOL_asn_6_itm_1) & (~ operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1)
        & run_wen ) begin
      reg_line_buf1_rsci_d_d_cse <= VCOL_if_2_mux1h_3_rmff;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (VCOL_stage_0_2 | (VCOL_stage_0_3 & (~ VCOL_asn_6_itm_1) & VCOL_stage_0_1))
        & (fsm_output[1]) & ((~ or_dcpl_47) | dat_in_crt_lpi_3_31_0_mx2c2) & (mux_nl
        | (~ VCOL_stage_0_1)) ) begin
      dat_in_crt_lpi_3_31_0 <= MUX_v_32_2_2(dat_in_crt_lpi_3_dfm_31_0, dat_in_rsci_idat_mxwt,
          dat_in_crt_lpi_3_31_0_mx2c2);
    end
  end
  always @(posedge clk) begin
    if ( run_wen & or_dcpl_10 & (~((VROW_y_sva[0]) & VCOL_for_nor_1_itm_1)) & (VCOL_x_sva[0])
        & VCOL_stage_0_2 ) begin
      VCOL_for_1_qelse_VCOL_for_qelse_slc_rdbuf1_pix_VCOL_for_qelse_conc_1_7_0_itm_1
          <= rdbuf1_pix_lpi_3_63_8_mx0[31:24];
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_VCOL_for_nor_1_itm_2_cse_1 <= 1'b0;
    end
    else if ( rst ) begin
      reg_VCOL_for_nor_1_itm_2_cse_1 <= 1'b0;
    end
    else if ( run_wen & or_dcpl_10 & VCOL_stage_0_2 ) begin
      reg_VCOL_for_nor_1_itm_2_cse_1 <= VCOL_for_nor_1_itm_1;
    end
  end
  always @(posedge clk) begin
    if ( VCOL_stage_0_3 & (~ VCOL_asn_6_itm_1) & (~ operator_11_false_operator_11_false_slc_VCOL_x_0_itm_1)
        & (VCOL_x_sva[0]) & (VCOL_stage_0_2 | VCOL_stage_0_1) & run_wen ) begin
      rdbuf1_pix_lpi_3_63_8 <= rdbuf1_pix_lpi_3_63_8_mx0;
    end
  end
  always @(posedge clk) begin
    if ( run_wen & (~ (VCOL_x_sva[0])) ) begin
      wrbuf0_pix_31_0_lpi_4 <= VCOL_if_mux1h_rmff;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      VCOL_for_nor_1_itm_1 <= 1'b0;
    end
    else if ( rst ) begin
      VCOL_for_nor_1_itm_1 <= 1'b0;
    end
    else if ( run_wen & ((VCOL_asn_4_itm!=10'b0000000000)) & VCOL_VCOL_and_cse )
        begin
      VCOL_for_nor_1_itm_1 <= ~((VROW_y_sva[9:1]!=9'b000000000));
    end
  end
  assign VCOL_for_VCOL_for_mux1h_3_nl = MUX1HOT_v_8_3_2(VCOL_for_qr_1_lpi_3_dfm_mx0,
      (rdbuf1_pix_lpi_3_dfm_63_8_mx0_23_0[23:16]), (rdbuf1_pix_lpi_3_dfm_63_8_mx0_55_32[23:16]),
      {(~ VCOL_for_VCOL_for_nand_3_tmp_1) , VCOL_for_and_6_cse , VCOL_for_and_7_cse});
  assign VCOL_for_mux_14_nl = MUX_v_8_2_2((dat_in_crt_lpi_3_dfm_31_0[31:24]), VCOL_for_qr_1_lpi_3_dfm_mx0,
      VROW_equal_tmp);
  assign nl_dy_rsci_idat_35_27  = ({1'b1 , VCOL_for_VCOL_for_mux1h_3_nl}) + conv_u2s_8_9(~
      VCOL_for_mux_14_nl) + 9'b000000001;
  assign VCOL_for_VCOL_for_mux1h_nl = MUX1HOT_v_8_3_2(VCOL_for_qr_5_lpi_3_dfm_mx0,
      (line_buf1_rsci_q_d[7:0]), VCOL_for_1_qelse_VCOL_for_qelse_slc_rdbuf1_pix_VCOL_for_qelse_conc_1_7_0_itm_1,
      {(~ VCOL_for_VCOL_for_nand_3_tmp_1) , VCOL_for_and_6_cse , VCOL_for_and_7_cse});
  assign VCOL_for_mux_2_nl = MUX_v_8_2_2((dat_in_crt_lpi_3_dfm_31_0[7:0]), VCOL_for_qr_5_lpi_3_dfm_mx0,
      VROW_equal_tmp);
  assign nl_dy_rsci_idat_8_0  = ({1'b1 , VCOL_for_VCOL_for_mux1h_nl}) + conv_u2s_8_9(~
      VCOL_for_mux_2_nl) + 9'b000000001;
  assign VCOL_for_VCOL_for_mux1h_2_nl = MUX1HOT_v_8_3_2(VCOL_for_qr_7_lpi_3_dfm_mx0,
      (rdbuf1_pix_lpi_3_dfm_63_8_mx0_23_0[15:8]), (rdbuf1_pix_lpi_3_dfm_63_8_mx0_55_32[15:8]),
      {(~ VCOL_for_VCOL_for_nand_3_tmp_1) , VCOL_for_and_6_cse , VCOL_for_and_7_cse});
  assign VCOL_for_mux_10_nl = MUX_v_8_2_2((dat_in_crt_lpi_3_dfm_31_0[23:16]), VCOL_for_qr_7_lpi_3_dfm_mx0,
      VROW_equal_tmp);
  assign nl_dy_rsci_idat_26_18  = ({1'b1 , VCOL_for_VCOL_for_mux1h_2_nl}) + conv_u2s_8_9(~
      VCOL_for_mux_10_nl) + 9'b000000001;
  assign VCOL_for_VCOL_for_mux1h_1_nl = MUX1HOT_v_8_3_2(VCOL_for_qr_6_lpi_3_dfm_mx0,
      (rdbuf1_pix_lpi_3_dfm_63_8_mx0_23_0[7:0]), (rdbuf1_pix_lpi_3_dfm_63_8_mx0_55_32[7:0]),
      {(~ VCOL_for_VCOL_for_nand_3_tmp_1) , VCOL_for_and_6_cse , VCOL_for_and_7_cse});
  assign VCOL_for_mux_6_nl = MUX_v_8_2_2((dat_in_crt_lpi_3_dfm_31_0[15:8]), VCOL_for_qr_6_lpi_3_dfm_mx0,
      VROW_equal_tmp);
  assign nl_dy_rsci_idat_17_9  = ({1'b1 , VCOL_for_VCOL_for_mux1h_1_nl}) + conv_u2s_8_9(~
      VCOL_for_mux_6_nl) + 9'b000000001;
  assign VROW_y_not_2_nl = ~ (fsm_output[0]);
  assign VROW_y_mux_nl = MUX_v_10_2_2(VROW_y_sva, z_out, fsm_output[2]);
  assign VCOL_nor_nl = ~((fsm_output[0]) | (fsm_output[3]));
  assign not_67_nl = ~ VROW_y_or_cse;
  assign mux_nl = MUX_s_1_2_2(operator_10_false_acc_itm_10_1, VCOL_equal_tmp, VCOL_stage_0_2);
  assign VROW_VROW_and_1_nl = (VROW_y_sva[9]) & (~ (fsm_output[1]));
  assign VROW_mux_3_nl = MUX_v_9_2_2((VROW_y_sva[8:0]), (widthIn[10:2]), fsm_output[1]);
  assign nl_z_out = ({VROW_VROW_and_1_nl , VROW_mux_3_nl}) + conv_s2u_2_10({(fsm_output[1])
      , 1'b1});
  assign z_out = nl_z_out[9:0];

  function automatic [31:0] MUX1HOT_v_32_3_2;
    input [31:0] input_2;
    input [31:0] input_1;
    input [31:0] input_0;
    input [2:0] sel;
    reg [31:0] result;
  begin
    result = input_0 & {32{sel[0]}};
    result = result | (input_1 & {32{sel[1]}});
    result = result | (input_2 & {32{sel[2]}});
    MUX1HOT_v_32_3_2 = result;
  end
  endfunction


  function automatic [7:0] MUX1HOT_v_8_3_2;
    input [7:0] input_2;
    input [7:0] input_1;
    input [7:0] input_0;
    input [2:0] sel;
    reg [7:0] result;
  begin
    result = input_0 & {8{sel[0]}};
    result = result | (input_1 & {8{sel[1]}});
    result = result | (input_2 & {8{sel[2]}});
    MUX1HOT_v_8_3_2 = result;
  end
  endfunction


  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [10:0] MUX_v_11_2_2;
    input [10:0] input_0;
    input [10:0] input_1;
    input  sel;
    reg [10:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_11_2_2 = result;
  end
  endfunction


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input  sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input  sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [55:0] MUX_v_56_2_2;
    input [55:0] input_0;
    input [55:0] input_1;
    input  sel;
    reg [55:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_56_2_2 = result;
  end
  endfunction


  function automatic [63:0] MUX_v_64_2_2;
    input [63:0] input_0;
    input [63:0] input_1;
    input  sel;
    reg [63:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_64_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input  sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input  sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function automatic [9:0] conv_s2u_2_10 ;
    input [1:0]  vector ;
  begin
    conv_s2u_2_10 = {{8{vector[1]}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 =  {1'b0, vector};
  end
  endfunction


  function automatic [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer_struct
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer_struct (
  clk, rst, arst_n, dat_in_rsc_dat_eol, dat_in_rsc_dat_sof, dat_in_rsc_dat_pix, dat_in_rsc_vld,
      dat_in_rsc_rdy, widthIn, heightIn, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy,
      dy_rsc_dat_grad3, dy_rsc_dat_grad2, dy_rsc_dat_grad1, dy_rsc_dat_grad0, dy_rsc_vld,
      dy_rsc_rdy, line_buf0_rsc_en, line_buf0_rsc_q, line_buf0_rsc_we, line_buf0_rsc_d,
      line_buf0_rsc_adr, line_buf1_rsc_en, line_buf1_rsc_q, line_buf1_rsc_we, line_buf1_rsc_d,
      line_buf1_rsc_adr
);
  input clk;
  input rst;
  input arst_n;
  input dat_in_rsc_dat_eol;
  input dat_in_rsc_dat_sof;
  input [31:0] dat_in_rsc_dat_pix;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output [8:0] dy_rsc_dat_grad3;
  output [8:0] dy_rsc_dat_grad2;
  output [8:0] dy_rsc_dat_grad1;
  output [8:0] dy_rsc_dat_grad0;
  output dy_rsc_vld;
  input dy_rsc_rdy;
  output line_buf0_rsc_en;
  input [63:0] line_buf0_rsc_q;
  output line_buf0_rsc_we;
  output [63:0] line_buf0_rsc_d;
  output [7:0] line_buf0_rsc_adr;
  output line_buf1_rsc_en;
  input [63:0] line_buf1_rsc_q;
  output line_buf1_rsc_we;
  output [63:0] line_buf1_rsc_d;
  output [7:0] line_buf1_rsc_adr;


  // Interconnect Declarations
  wire [63:0] line_buf0_rsci_d_d;
  wire line_buf0_rsci_en_d;
  wire [63:0] line_buf0_rsci_q_d;
  wire [63:0] line_buf1_rsci_d_d;
  wire [63:0] line_buf1_rsci_q_d;
  wire [35:0] dy_rsc_dat;
  wire [7:0] line_buf0_rsci_adr_d_iff;
  wire line_buf0_rsci_we_d_iff;
  wire line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff;


  // Interconnect Declarations for Component Instantiations 
  wire [33:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_run_inst_dat_in_rsc_dat;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_run_inst_dat_in_rsc_dat = {dat_in_rsc_dat_eol
      , dat_in_rsc_dat_sof , dat_in_rsc_dat_pix};
  EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_64_8_240_240_64_5_gen
      line_buf0_rsci (
      .en(line_buf0_rsc_en),
      .q(line_buf0_rsc_q),
      .we(line_buf0_rsc_we),
      .d(line_buf0_rsc_d),
      .adr(line_buf0_rsc_adr),
      .adr_d(line_buf0_rsci_adr_d_iff),
      .d_d(line_buf0_rsci_d_d),
      .en_d(line_buf0_rsci_en_d),
      .we_d(line_buf0_rsci_we_d_iff),
      .q_d(line_buf0_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff),
      .port_0_rw_ram_ir_internal_WMASK_B_d(line_buf0_rsci_we_d_iff)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_7_64_8_240_240_64_5_gen
      line_buf1_rsci (
      .en(line_buf1_rsc_en),
      .q(line_buf1_rsc_q),
      .we(line_buf1_rsc_we),
      .d(line_buf1_rsc_d),
      .adr(line_buf1_rsc_adr),
      .adr_d(line_buf0_rsci_adr_d_iff),
      .d_d(line_buf1_rsci_d_d),
      .en_d(line_buf0_rsci_en_d),
      .we_d(line_buf0_rsci_we_d_iff),
      .q_d(line_buf1_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff),
      .port_0_rw_ram_ir_internal_WMASK_B_d(line_buf0_rsci_we_d_iff)
    );
  EdgeDetect_IP_EdgeDetect_VerDer_run EdgeDetect_IP_EdgeDetect_VerDer_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(nl_EdgeDetect_IP_EdgeDetect_VerDer_run_inst_dat_in_rsc_dat[33:0]),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .dy_rsc_dat(dy_rsc_dat),
      .dy_rsc_vld(dy_rsc_vld),
      .dy_rsc_rdy(dy_rsc_rdy),
      .line_buf0_rsci_d_d(line_buf0_rsci_d_d),
      .line_buf0_rsci_en_d(line_buf0_rsci_en_d),
      .line_buf0_rsci_q_d(line_buf0_rsci_q_d),
      .line_buf1_rsci_d_d(line_buf1_rsci_d_d),
      .line_buf1_rsci_q_d(line_buf1_rsci_q_d),
      .line_buf0_rsci_adr_d_pff(line_buf0_rsci_adr_d_iff),
      .line_buf0_rsci_we_d_pff(line_buf0_rsci_we_d_iff),
      .line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_pff(line_buf0_rsci_port_0_rw_ram_ir_internal_RMASK_B_d_iff)
    );
  assign dy_rsc_dat_grad0 = dy_rsc_dat[8:0];
  assign dy_rsc_dat_grad1 = dy_rsc_dat[17:9];
  assign dy_rsc_dat_grad2 = dy_rsc_dat[26:18];
  assign dy_rsc_dat_grad3 = dy_rsc_dat[35:27];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_VerDer
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_VerDer (
  clk, rst, arst_n, dat_in_rsc_dat, dat_in_rsc_vld, dat_in_rsc_rdy, widthIn, heightIn,
      dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, dy_rsc_dat, dy_rsc_vld,
      dy_rsc_rdy, line_buf0_rsc_en, line_buf0_rsc_q, line_buf0_rsc_we, line_buf0_rsc_d,
      line_buf0_rsc_adr, line_buf1_rsc_en, line_buf1_rsc_q, line_buf1_rsc_we, line_buf1_rsc_d,
      line_buf1_rsc_adr
);
  input clk;
  input rst;
  input arst_n;
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  input [10:0] widthIn;
  input [9:0] heightIn;
  output [31:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output [35:0] dy_rsc_dat;
  output dy_rsc_vld;
  input dy_rsc_rdy;
  output line_buf0_rsc_en;
  input [63:0] line_buf0_rsc_q;
  output line_buf0_rsc_we;
  output [63:0] line_buf0_rsc_d;
  output [7:0] line_buf0_rsc_adr;
  output line_buf1_rsc_en;
  input [63:0] line_buf1_rsc_q;
  output line_buf1_rsc_we;
  output [63:0] line_buf1_rsc_d;
  output [7:0] line_buf1_rsc_adr;


  // Interconnect Declarations
  wire [8:0] dy_rsc_dat_grad3;
  wire [8:0] dy_rsc_dat_grad2;
  wire [8:0] dy_rsc_dat_grad1;
  wire [8:0] dy_rsc_dat_grad0;


  // Interconnect Declarations for Component Instantiations 
  wire  nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_eol;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_eol = dat_in_rsc_dat[33];
  wire  nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_sof;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_sof = dat_in_rsc_dat[32];
  wire [31:0] nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_pix;
  assign nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_pix = dat_in_rsc_dat[31:0];
  EdgeDetect_IP_EdgeDetect_VerDer_struct EdgeDetect_IP_EdgeDetect_VerDer_struct_inst
      (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat_eol(nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_eol),
      .dat_in_rsc_dat_sof(nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_sof),
      .dat_in_rsc_dat_pix(nl_EdgeDetect_IP_EdgeDetect_VerDer_struct_inst_dat_in_rsc_dat_pix[31:0]),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .dat_out_rsc_dat(dat_out_rsc_dat),
      .dat_out_rsc_vld(dat_out_rsc_vld),
      .dat_out_rsc_rdy(dat_out_rsc_rdy),
      .dy_rsc_dat_grad3(dy_rsc_dat_grad3),
      .dy_rsc_dat_grad2(dy_rsc_dat_grad2),
      .dy_rsc_dat_grad1(dy_rsc_dat_grad1),
      .dy_rsc_dat_grad0(dy_rsc_dat_grad0),
      .dy_rsc_vld(dy_rsc_vld),
      .dy_rsc_rdy(dy_rsc_rdy),
      .line_buf0_rsc_en(line_buf0_rsc_en),
      .line_buf0_rsc_q(line_buf0_rsc_q),
      .line_buf0_rsc_we(line_buf0_rsc_we),
      .line_buf0_rsc_d(line_buf0_rsc_d),
      .line_buf0_rsc_adr(line_buf0_rsc_adr),
      .line_buf1_rsc_en(line_buf1_rsc_en),
      .line_buf1_rsc_q(line_buf1_rsc_q),
      .line_buf1_rsc_we(line_buf1_rsc_we),
      .line_buf1_rsc_d(line_buf1_rsc_d),
      .line_buf1_rsc_adr(line_buf1_rsc_adr)
    );
  assign dy_rsc_dat = {dy_rsc_dat_grad3 , dy_rsc_dat_grad2 , dy_rsc_dat_grad1 , dy_rsc_dat_grad0};
endmodule




//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_genreg_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_genreg_v1 (clk, en, arst, srst, d, z);
    parameter integer width   = 1;
    parameter integer ph_clk  = 1;
    parameter integer ph_en   = 1;
    parameter integer ph_arst = 0;
    parameter integer ph_srst = 1;
    parameter         has_en  = 1'b1;

    input clk;
    input en;
    input arst;
    input srst;
    input      [width-1:0] d;
    output reg [width-1:0] z;

    //  Generate parameters
    //  ph_clk | ph_arst | has_en     Label:
    //    1        1          1       GEN_CLK1_ARST1_EN1
    //    1        1          0       GEN_CLK1_ARST1_EN0
    //    1        0          1       GEN_CLK1_ARST0_EN1
    //    1        0          0       GEN_CLK1_ARST0_EN0
    //    0        1          1       GEN_CLK0_ARST1_EN1
    //    0        1          0       GEN_CLK0_ARST1_EN0
    //    0        0          1       GEN_CLK0_ARST0_EN1
    //    0        0          0       GEN_CLK0_ARST0_EN0
    
    generate 
      // Pos edge clock, pos edge async reset, has enable
      if (ph_clk == 1 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK1_ARST1_EN1
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST1_EN1

      // Pos edge clock, pos edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK1_ARST1_EN0
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST1_EN0

      // Pos edge clock, neg edge async reset, has enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK1_ARST0_EN1
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST0_EN1

      // Pos edge clock, neg edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK1_ARST0_EN0
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST0_EN0


      // Neg edge clock, pos edge async reset, has enable
      if (ph_clk == 0 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK0_ARST1_EN1
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST1_EN1

      // Neg edge clock, pos edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK0_ARST1_EN0
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST1_EN0

      // Neg edge clock, neg edge async reset, has enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK0_ARST0_EN1
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST0_EN1

      // Neg edge clock, neg edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK0_ARST0_EN0
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST0_EN0
    endgenerate
endmodule


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_fifo_wait_core_v5.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

/*
 *            _________________________________________________
 * WRITER    |                                                 |   READER
 *           |               ccs_fifo_wait_core                |
 *           |             _____________________               |
 *        --<|  din_rdy --<|  ---------------- <|--- dout_rdy <|---
 *           |             |       FIFO         |              |
 *        ---|> din_vld ---|> ----------------  |>-- dout_vld  |>--
 *        ---|>     din ---|> ----------------  |>-- dout      |>--
 *           |             |____________________|              |
 *           |_________________________________________________|
 *
 *    rdy    - can be considered as a notFULL signal
 *    vld    - can be considered as a notEMPTY signal
 *    is_idle - clk can be safely gated
 *
 * Change History:
 *    2019-01-24 - Add assertion to verify rdy signal behavior under reset.
 *                 Fix bug in that behavior.
 */

module ccs_fifo_wait_core_v5 (clk, en, arst, srst, din_vld, din_rdy, din, dout_vld, dout_rdy, dout, sd, is_idle);

    parameter integer rscid    = 0;     // resource ID
    parameter integer width    = 8;     // fifo width
    parameter integer sz_width = 8;     // size of port for elements in fifo
    parameter integer fifo_sz  = 8;     // fifo depth
    parameter integer ph_clk   = 1;     // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1;     // clock enable polarity
    parameter integer ph_arst  = 1;     // async reset polarity
    parameter integer ph_srst  = 1;     // sync reset polarity
    parameter integer ph_log2  = 3;     // log2(fifo_sz)

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 din_vld;    // writer has valid data
    output                din_rdy;    // fifo ready for data (not full)
    input  [width-1:0]    din;
    output                dout_vld;   // fifo has valid data (not empty)
    input                 dout_rdy;   // reader ready for data
    output [width-1:0]    dout;
    output [sz_width-1:0] sd;
    output                is_idle;

    localparam integer fifo_b  = width * fifo_sz;
    localparam integer fifo_mx = (fifo_sz > 0) ? (fifo_sz-1) : 0 ;
    localparam integer fifo_mx_over_8 = fifo_mx / 8 ;

    reg      [fifo_mx:0] stat_pre;
    wire     [fifo_mx:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [fifo_mx:0] en_l;
    reg      [fifo_mx_over_8:0] en_l_s;

    reg      [width-1:0] buff_nxt;

    reg                  stat_nxt;
    reg                  stat_behind;
    reg                  stat_ahead;
    reg                  stat_tail;
    reg                  en_l_var;

    integer              i;
    genvar               eni;

    wire [32:0]          size_t;
    reg  [31:0]          count;
    reg  [31:0]          count_t;
    reg  [32:0]          n_elem;
    wire                 din_rdy_drv;
    wire                 dout_vld_drv;
    wire                 din_vld_int;
    wire                 hs_init;
    wire                 active;
    wire                 is_idle_drv;

    // synopsys translate_off
    reg  [31:0]          peak;
    initial
    begin
      peak  = 32'b0;
    end
    // synopsys translate_on

    assign din_rdy = din_rdy_drv;
    assign dout_vld = dout_vld_drv;
    assign is_idle = is_idle_drv;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
      assign din_vld_int = din_vld & hs_init;
      assign din_rdy_drv = (dout_rdy | (~stat[0])) & hs_init;
      assign dout_vld_drv = din_vld_int | stat[fifo_sz-1];

      assign active = (din_vld_int & din_rdy_drv) | (dout_rdy & dout_vld_drv);
      assign is_idle_drv = (~active) & hs_init;

      assign size_t = (count - {31'b0, (dout_rdy & stat[fifo_sz-1])}) + {31'b0, din_vld_int};
      assign sd = size_t[sz_width-1:0];

      assign dout = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : din;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          stat_behind = (i != 0) ? stat[i-1] : 1'b0;
          stat_ahead  = (i != (fifo_sz-1)) ? stat[i+1] : 1'b1;

          // Determine if this buffer element will have data
          stat_nxt = stat_ahead &                       // valid element ahead of this one (or head)
                       (stat_behind                     // valid element behind this one
                         | (stat[i] & (~dout_rdy))      // valid element and output not ready (in use and not shifted)
                         | (stat[i] & din_vld_int)      // valid element and input has data
                         | (din_vld_int & (~dout_rdy))  // input has data and output not ready
                       );
          stat_pre[i] = stat_nxt;

          // First empty elem when not shifting or last valid elem after shifting (assumes stat_behind == 0)
          stat_tail = stat_ahead & (((~stat[i]) & (~dout_rdy)) | (stat[i] & dout_rdy));

          if (dout_rdy & stat_behind)
          begin
            // shift valid element
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
            en_l_var = 1'b1;
          end
          else if (din_vld_int & stat_tail)
          begin
            // update tail with input data
            buff_nxt = din;
            en_l_var = 1'b1;
          end
          else
          begin
            // no-op, disable register
            buff_nxt = din; // Don't care input to disabled flop
            en_l_var = 1'b0;
          end
          buff_pre[width*i+:width] = buff_nxt[0+:width];

          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          if ((stat_ahead == 1'b1) & (stat[i] == 1'b0))
            //found tail, update the number of elements for count
            n_elem = ($unsigned(fifo_sz) - 1) - $unsigned(i);
        end //for loop

        // Enable for stat registers (partitioned into banks of eight)
        // Take care of the head first
        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en & active;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en | ~active;

        // Now every eight
        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if (($unsigned(i) % 32'd8) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]) & (active);
            else
              en_l_s[(i/8)-1] = (en) | (~stat[i]) | (~active);
          end
        end

        // Update count and peak
        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = fifo_sz;
        else
          count_t = n_elem[31:0];
        count = count_t;
        // synopsys translate_off
        peak = (peak < count) ? count : peak;
        // synopsys translate_on
      end //FIFOPROC

      // Handshake valid after reset
      ccs_genreg_v1
      #(
        .width   (1),
        .ph_clk  (ph_clk),
        .ph_en   (1),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .has_en  (1'b0)
      )
      HS_INIT_REG
      (
        .clk     (clk),
        .en      (1'b1),
        .arst    (arst),
        .srst    (srst),
        .d       (1'b1),
        .z       (hs_init)
      );

      // Buffer and status registers
      for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
      begin: GEN_REGS
        ccs_genreg_v1
        #(
          .width   (1),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        STATREG
        (
          .clk     (clk),
          .en      (en_l_s[eni/8]),
          .arst    (arst),
          .srst    (srst),
          .d       (stat_pre[eni]),
          .z       (stat[eni])
        );

        ccs_genreg_v1
        #(
          .width   (width),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        BUFREG
        (
          .clk     (clk),
          .en      (en_l[eni]),
          .arst    (arst),
          .srst    (srst),
          .d       (buff_pre[width*eni+:width]),
          .z       (buff[width*eni+:width])
        );
      end

    end
    else
    begin: FEED_THRU
      assign din_rdy_drv  = dout_rdy;
      assign dout_vld_drv = din_vld;
      assign dout     = din;
      // non-blocking is not II=1 when fifo_sz=0
      assign sd = {{(sz_width-1){1'b0}}, (din_vld & ~dout_rdy)};
      assign is_idle_drv = ~(din_vld & dout_rdy);
    end
    endgenerate

`ifdef RDY_ASRT
    generate
    if (ph_clk==1)
    begin: POS_CLK_ASSERT

       property rdyAsrt ;
         @(posedge clk) (srst==ph_srst) |=> (din_rdy==0);
       endproperty
       a1Pos: assert property(rdyAsrt);

       property rdyAsrtASync ;
         @(posedge clk) (arst==ph_arst) |-> (din_rdy==0);
       endproperty
       a2Pos: assert property(rdyAsrtASync);

    end else if (ph_clk==0)
    begin: NEG_CLK_ASSERT

       property rdyAsrt ;
         @(negedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Neg: assert property(rdyAsrt);

       property rdyAsrtASync ;
         @(negedge clk) (arst==ph_arst) |-> (din_rdy==0);
       endproperty
       a2Neg: assert property(rdyAsrtASync);

    end
    endgenerate
`endif

endmodule

//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_pipe_v6.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------
/*
 *
 *            _______________________________________________
 * WRITER    |                                              |          READER
 *           |                 ccs_pipe                     |
 *           |            ______________________            |
 *        --<| din_rdy --<|  ---------------- <|---dout_rdy<|---
 *           |            |       FIFO         |            |
 *        ---|>din_vld ---|> ----------------  |>--dout_vld |>--
 *        ---|>din -------|> ----------------  |> -----dout |>--
 *           |            |____________________|            |
 *           |______________________________________________|
 *
 *    din_rdy     - can be considered as a notFULL signal
 *    dout_vld    - can be considered as a notEMPTY signal
 *    write_stall - an internal debug signal formed from din_vld & !din_rdy
 *    read_stall  - an internal debug signal formed from dout_rdy & !dout_vld
 *    is_idle     - indicates the clock can be safely gated
 *    stall_ctrl  - Stall the pipe(fifo).  Used by STALL_FLAG_SV directive
 */

module ccs_pipe_v6 (clk, en, arst, srst, din_rdy, din_vld, din, dout_rdy, dout_vld, dout, 
                    sz, sz_req, is_idle);

    parameter integer rscid    = 0; // resource ID
    parameter integer width    = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz  = 8; // fifo depth
    parameter integer log2_sz  = 3; // log2(fifo_sz)
    parameter integer ph_clk   = 1; // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1; // clock enable polarity
    parameter integer ph_arst  = 1; // async reset polarity
    parameter integer ph_srst  = 1; // sync reset polarity

    // clock 
    input              clk;
    input              en;
    input              arst;
    input              srst;

    // writer
    output             din_rdy;
    input              din_vld;
    input  [width-1:0] din;

    // reader
    input              dout_rdy;
    output             dout_vld;
    output [width-1:0] dout;

    // size
    output [sz_width-1:0] sz;
    input                 sz_req;
    output                is_idle;

    localparam stallOff = 0; 
    wire                  stall_ctrl;
    assign stall_ctrl = stallOff;
   
    // synopsys translate_off
    wire   write_stall;
    wire   read_stall;
    assign write_stall = (din_vld & !din_rdy) | stall_ctrl;
    assign read_stall  = (dout_rdy & !dout_vld) | stall_ctrl;
    // synopsys translate_on

    wire    tmp_din_rdy;
    assign  din_rdy = tmp_din_rdy & !stall_ctrl;
    wire    tmp_dout_vld;
    assign  dout_vld = tmp_dout_vld & !stall_ctrl;
   
    ccs_fifo_wait_core_v5
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz)
    )
    FIFO
    (
        .clk      (clk),
        .en       (en),
        .arst     (arst),
        .srst     (srst),
        .din_vld  (din_vld & !stall_ctrl),
        .din_rdy  (tmp_din_rdy),
        .din      (din),
        .dout_vld (tmp_dout_vld),
        .dout_rdy (dout_rdy & !stall_ctrl),
        .dout     (dout),
        .sd       (sz),
        .is_idle  (is_idle)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   m112061603@ws34
//  Generated date: Sun Apr 14 20:48:06 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    EdgeDetect_IP_EdgeDetect_Top
// ------------------------------------------------------------------


module EdgeDetect_IP_EdgeDetect_Top (
  clk, rst, arst_n, widthIn, heightIn, sw_in, crc32_pix_in_rsc_dat, crc32_pix_in_triosy_lz,
      crc32_dat_out_rsc_dat, crc32_dat_out_triosy_lz, dat_in_rsc_dat, dat_in_rsc_vld,
      dat_in_rsc_rdy, dat_out_rsc_dat, dat_out_rsc_vld, dat_out_rsc_rdy, line_buf0_rsc_en,
      line_buf0_rsc_q, line_buf0_rsc_we, line_buf0_rsc_d, line_buf0_rsc_adr, line_buf1_rsc_en,
      line_buf1_rsc_q, line_buf1_rsc_we, line_buf1_rsc_d, line_buf1_rsc_adr
);
  input clk;
  input rst;
  input arst_n;
  input [10:0] widthIn;
  input [9:0] heightIn;
  input sw_in;
  output [31:0] crc32_pix_in_rsc_dat;
  output crc32_pix_in_triosy_lz;
  output [31:0] crc32_dat_out_rsc_dat;
  output crc32_dat_out_triosy_lz;
  input [33:0] dat_in_rsc_dat;
  input dat_in_rsc_vld;
  output dat_in_rsc_rdy;
  output [33:0] dat_out_rsc_dat;
  output dat_out_rsc_vld;
  input dat_out_rsc_rdy;
  output line_buf0_rsc_en;
  input [63:0] line_buf0_rsc_q;
  output line_buf0_rsc_we;
  output [63:0] line_buf0_rsc_d;
  output [7:0] line_buf0_rsc_adr;
  output line_buf1_rsc_en;
  input [63:0] line_buf1_rsc_q;
  output line_buf1_rsc_we;
  output [63:0] line_buf1_rsc_d;
  output [7:0] line_buf1_rsc_adr;


  // Interconnect Declarations
  wire [31:0] dat_out_rsc_dat_n_VerDer_inst;
  wire [35:0] dy_rsc_dat_n_VerDer_inst;
  wire dy_rsc_rdy_n_VerDer_inst;
  wire line_buf0_rsc_en_n_VerDer_inst;
  wire [63:0] line_buf0_rsc_d_n_VerDer_inst;
  wire [7:0] line_buf0_rsc_adr_n_VerDer_inst;
  wire line_buf1_rsc_en_n_VerDer_inst;
  wire [63:0] line_buf1_rsc_d_n_VerDer_inst;
  wire [7:0] line_buf1_rsc_adr_n_VerDer_inst;
  wire [31:0] dat_out_rsc_dat_n_HorDer_inst;
  wire dat_out_rsc_rdy_n_HorDer_inst;
  wire [35:0] dx_rsc_dat_n_HorDer_inst;
  wire [35:0] dy_in_rsc_dat_n_MagAng_inst;
  wire dy_in_rsc_vld_n_MagAng_inst;
  wire [31:0] dat_in_rsc_dat_n_MagAng_inst;
  wire dat_in_rsc_vld_n_MagAng_inst;
  wire [31:0] crc32_pix_in_rsc_dat_n_MagAng_inst;
  wire [31:0] crc32_dat_out_rsc_dat_n_MagAng_inst;
  wire [33:0] dat_out_rsc_dat_n_MagAng_inst;
  wire dat_in_rsc_rdy_n_VerDer_inst_bud;
  wire dat_out_rsc_vld_n_VerDer_inst_bud;
  wire dat_in_rsc_rdy_n_HorDer_inst_bud;
  wire dy_rsc_vld_n_VerDer_inst_bud;
  wire dy_in_rsc_rdy_n_MagAng_inst_bud;
  wire line_buf0_rsc_we_n_VerDer_inst_bud;
  wire line_buf1_rsc_we_n_VerDer_inst_bud;
  wire dat_out_rsc_vld_n_HorDer_inst_bud;
  wire dat_in_rsc_rdy_n_MagAng_inst_bud;
  wire dx_rsc_vld_n_HorDer_inst_bud;
  wire dx_in_rsc_rdy_n_MagAng_inst_bud;
  wire dat_out_rsc_vld_n_MagAng_inst_bud;
  wire crc32_pix_in_triosy_lz_n_MagAng_inst_bud;
  wire crc32_dat_out_triosy_lz_n_MagAng_inst_bud;
  wire dy_unc_1;
  wire dy_idle;
  wire pix_chan2_unc_1;
  wire pix_chan2_idle;


  // Interconnect Declarations for Component Instantiations 
  ccs_pipe_v6 #(.rscid(32'sd34),
  .width(32'sd36),
  .sz_width(32'sd1),
  .fifo_sz(32'sd2),
  .log2_sz(32'sd1),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) dy_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(arst_n),
      .srst(rst),
      .din_rdy(dy_rsc_rdy_n_VerDer_inst),
      .din_vld(dy_rsc_vld_n_VerDer_inst_bud),
      .din(dy_rsc_dat_n_VerDer_inst),
      .dout_rdy(dy_in_rsc_rdy_n_MagAng_inst_bud),
      .dout_vld(dy_in_rsc_vld_n_MagAng_inst),
      .dout(dy_in_rsc_dat_n_MagAng_inst),
      .sz(dy_unc_1),
      .sz_req(1'b0),
      .is_idle(dy_idle)
    );
  ccs_pipe_v6 #(.rscid(32'sd37),
  .width(32'sd32),
  .sz_width(32'sd1),
  .fifo_sz(32'sd2),
  .log2_sz(32'sd1),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) pix_chan2_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(arst_n),
      .srst(rst),
      .din_rdy(dat_out_rsc_rdy_n_HorDer_inst),
      .din_vld(dat_out_rsc_vld_n_HorDer_inst_bud),
      .din(dat_out_rsc_dat_n_HorDer_inst),
      .dout_rdy(dat_in_rsc_rdy_n_MagAng_inst_bud),
      .dout_vld(dat_in_rsc_vld_n_MagAng_inst),
      .dout(dat_in_rsc_dat_n_MagAng_inst),
      .sz(pix_chan2_unc_1),
      .sz_req(1'b0),
      .is_idle(pix_chan2_idle)
    );
  EdgeDetect_IP_EdgeDetect_VerDer VerDer_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(dat_in_rsc_dat),
      .dat_in_rsc_vld(dat_in_rsc_vld),
      .dat_in_rsc_rdy(dat_in_rsc_rdy_n_VerDer_inst_bud),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .dat_out_rsc_dat(dat_out_rsc_dat_n_VerDer_inst),
      .dat_out_rsc_vld(dat_out_rsc_vld_n_VerDer_inst_bud),
      .dat_out_rsc_rdy(dat_in_rsc_rdy_n_HorDer_inst_bud),
      .dy_rsc_dat(dy_rsc_dat_n_VerDer_inst),
      .dy_rsc_vld(dy_rsc_vld_n_VerDer_inst_bud),
      .dy_rsc_rdy(dy_rsc_rdy_n_VerDer_inst),
      .line_buf0_rsc_en(line_buf0_rsc_en_n_VerDer_inst),
      .line_buf0_rsc_q(line_buf0_rsc_q),
      .line_buf0_rsc_we(line_buf0_rsc_we_n_VerDer_inst_bud),
      .line_buf0_rsc_d(line_buf0_rsc_d_n_VerDer_inst),
      .line_buf0_rsc_adr(line_buf0_rsc_adr_n_VerDer_inst),
      .line_buf1_rsc_en(line_buf1_rsc_en_n_VerDer_inst),
      .line_buf1_rsc_q(line_buf1_rsc_q),
      .line_buf1_rsc_we(line_buf1_rsc_we_n_VerDer_inst_bud),
      .line_buf1_rsc_d(line_buf1_rsc_d_n_VerDer_inst),
      .line_buf1_rsc_adr(line_buf1_rsc_adr_n_VerDer_inst)
    );
  EdgeDetect_IP_EdgeDetect_HorDer HorDer_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dat_in_rsc_dat(dat_out_rsc_dat_n_VerDer_inst),
      .dat_in_rsc_vld(dat_out_rsc_vld_n_VerDer_inst_bud),
      .dat_in_rsc_rdy(dat_in_rsc_rdy_n_HorDer_inst_bud),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .dat_out_rsc_dat(dat_out_rsc_dat_n_HorDer_inst),
      .dat_out_rsc_vld(dat_out_rsc_vld_n_HorDer_inst_bud),
      .dat_out_rsc_rdy(dat_out_rsc_rdy_n_HorDer_inst),
      .dx_rsc_dat(dx_rsc_dat_n_HorDer_inst),
      .dx_rsc_vld(dx_rsc_vld_n_HorDer_inst_bud),
      .dx_rsc_rdy(dx_in_rsc_rdy_n_MagAng_inst_bud)
    );
  EdgeDetect_IP_EdgeDetect_MagAng MagAng_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .dx_in_rsc_dat(dx_rsc_dat_n_HorDer_inst),
      .dx_in_rsc_vld(dx_rsc_vld_n_HorDer_inst_bud),
      .dx_in_rsc_rdy(dx_in_rsc_rdy_n_MagAng_inst_bud),
      .dy_in_rsc_dat(dy_in_rsc_dat_n_MagAng_inst),
      .dy_in_rsc_vld(dy_in_rsc_vld_n_MagAng_inst),
      .dy_in_rsc_rdy(dy_in_rsc_rdy_n_MagAng_inst_bud),
      .dat_in_rsc_dat(dat_in_rsc_dat_n_MagAng_inst),
      .dat_in_rsc_vld(dat_in_rsc_vld_n_MagAng_inst),
      .dat_in_rsc_rdy(dat_in_rsc_rdy_n_MagAng_inst_bud),
      .widthIn(widthIn),
      .heightIn(heightIn),
      .sw_in(sw_in),
      .crc32_pix_in_rsc_dat(crc32_pix_in_rsc_dat_n_MagAng_inst),
      .crc32_pix_in_triosy_lz(crc32_pix_in_triosy_lz_n_MagAng_inst_bud),
      .crc32_dat_out_rsc_dat(crc32_dat_out_rsc_dat_n_MagAng_inst),
      .crc32_dat_out_triosy_lz(crc32_dat_out_triosy_lz_n_MagAng_inst_bud),
      .dat_out_rsc_dat(dat_out_rsc_dat_n_MagAng_inst),
      .dat_out_rsc_vld(dat_out_rsc_vld_n_MagAng_inst_bud),
      .dat_out_rsc_rdy(dat_out_rsc_rdy)
    );
  assign dat_in_rsc_rdy = dat_in_rsc_rdy_n_VerDer_inst_bud;
  assign line_buf0_rsc_en = line_buf0_rsc_en_n_VerDer_inst;
  assign line_buf0_rsc_we = line_buf0_rsc_we_n_VerDer_inst_bud;
  assign line_buf0_rsc_d = line_buf0_rsc_d_n_VerDer_inst;
  assign line_buf0_rsc_adr = line_buf0_rsc_adr_n_VerDer_inst;
  assign line_buf1_rsc_en = line_buf1_rsc_en_n_VerDer_inst;
  assign line_buf1_rsc_we = line_buf1_rsc_we_n_VerDer_inst_bud;
  assign line_buf1_rsc_d = line_buf1_rsc_d_n_VerDer_inst;
  assign line_buf1_rsc_adr = line_buf1_rsc_adr_n_VerDer_inst;
  assign dat_out_rsc_vld = dat_out_rsc_vld_n_MagAng_inst_bud;
  assign dat_out_rsc_dat = dat_out_rsc_dat_n_MagAng_inst;
  assign crc32_pix_in_rsc_dat = crc32_pix_in_rsc_dat_n_MagAng_inst;
  assign crc32_pix_in_triosy_lz = crc32_pix_in_triosy_lz_n_MagAng_inst_bud;
  assign crc32_dat_out_rsc_dat = crc32_dat_out_rsc_dat_n_MagAng_inst;
  assign crc32_dat_out_triosy_lz = crc32_dat_out_triosy_lz_n_MagAng_inst_bud;
endmodule



