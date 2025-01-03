// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jan  3 18:34:04 2025
// Host        : DESKTOP-UN8G6OF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mertwole/Documents/Projects/HardwareProjects/FPGA_learning/sha256-accelerator/hardware/sha256-accelerator.gen/sources_1/ip/sha256_uart_fifo/sha256_uart_fifo_sim_netlist.v
// Design      : sha256_uart_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sha256_uart_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module sha256_uart_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 9000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "483" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "482" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "9" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "50" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  sha256_uart_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54432)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
