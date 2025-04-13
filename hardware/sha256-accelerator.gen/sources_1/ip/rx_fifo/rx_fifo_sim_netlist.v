// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 13 13:33:47 2025
// Host        : mertwole running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top rx_fifo -prefix
//               rx_fifo_ tx_fifo_sim_netlist.v
// Design      : tx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tx_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rx_fifo
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
  rx_fifo_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module rx_fifo_xpm_cdc_gray
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
module rx_fifo_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 85728)
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
