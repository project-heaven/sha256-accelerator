// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 13 13:33:47 2025
// Host        : mertwole running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mertwole_/Documents/Projects/sha256-accelerator/hardware/sha256-accelerator.gen/sources_1/ip/tx_fifo/tx_fifo_sim_netlist.v
// Design      : tx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tx_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module tx_fifo
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire valid;
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
  wire [6:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [6:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "7" *) 
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
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "127" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "126" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "128" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "7" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  tx_fifo_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[6:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[6:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module tx_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module tx_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 86576)
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
