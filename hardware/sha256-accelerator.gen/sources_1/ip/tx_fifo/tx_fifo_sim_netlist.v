// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 12 11:02:39 2025
// Host        : mertwole running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top tx_fifo -prefix
//               tx_fifo_ tx_fifo_sim_netlist.v
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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
