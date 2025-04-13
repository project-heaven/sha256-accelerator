// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 12 11:39:48 2025
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
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81520)
`pragma protect data_block
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
zclcKUP6cuAK6w==
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
