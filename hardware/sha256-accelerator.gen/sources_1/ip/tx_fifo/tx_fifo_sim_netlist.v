// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 10 07:59:10 2025
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
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
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
  (* C_HAS_VALID = "0" *) 
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
        .valid(NLW_U0_valid_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 86256)
`pragma protect data_block
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
HKbCMGQVIrvz8MVGfVNw
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
