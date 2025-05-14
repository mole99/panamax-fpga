# SPDX-FileCopyrightText: © 2024 Leo Moser <leomoser99@gmail.com>
# SPDX-License-Identifier: Apache-2.0

import os
import random
import cocotb
from pathlib import Path
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles
from cocotb.triggers import Timer, Edge, RisingEdge, FallingEdge
from cocotb.regression import TestFactory
from cocotb.runner import get_runner
#from cocotb_tools.runner import get_runner
from cocotbext.uart import UartSource, UartSink

# TODO add bitstream file

flash1_slot0 = '../../ip/fabulous_fabric/fabric_sky130/user_designs/all_ones/all_ones.hex'
flash1_slot1 = ''

async def start_clock(clock, freq=50):
    """ Start the clock @ freq MHz """
    c = Clock(clock, 1/50*1000, 'ns')
    await cocotb.start(c.start())

async def reset(reset, active_low=True, time_ns=1000):
    """ Reset dut """
    cocotb.log.info("Reset asserted..")
    
    reset.value = not active_low
    await Timer(time_ns, "ns")
    reset.value = active_low
    
    cocotb.log.info("Reset deasserted.")

def set_vdd(dut, value: bool):
    dut.vccd0_0.value = value
    dut.vccd0_1.value = value
    dut.vccd1_0.value = value
    dut.vccd1_1.value = value
    dut.vccd1_2.value = value
    dut.vccd2_0.value = value
    dut.vccd2_1.value = value
    dut.vccd2_2.value = value
    dut.vdda0_0.value = value
    dut.vdda1_0.value = value
    dut.vdda2_0.value = value
    dut.vdda2_1.value = value
    dut.vdda3_0.value = value
    dut.vddio_0.value = value
    dut.vddio_1.value = value
    dut.vddio_2.value = value
    dut.vddio_3.value = value
    dut.vddio_4.value = value
    dut.vddio_5.value = value
    dut.vddio_6.value = value
    dut.vddio_7.value = value
    dut.vddio_8.value = value
    dut.vddio_9.value = value
    dut.vssd0_0.value = 0
    dut.vssd0_1.value = 0
    dut.vssd1_0.value = 0
    dut.vssd1_1.value = 0
    dut.vssd1_2.value = 0
    dut.vssd2_0.value = 0
    dut.vssd2_1.value = 0
    dut.vssd2_2.value = 0
    dut.vssa0_0.value = 0
    dut.vssa1_0.value = 0
    dut.vssa1_1.value = 0
    dut.vssa2_0.value = 0
    dut.vssa2_1.value = 0
    dut.vssa3_0.value = 0
    dut.vssio_0.value = 0
    dut.vssio_1.value = 0
    dut.vssio_2.value = 0
    dut.vssio_3.value = 0
    dut.vssio_4.value = 0
    dut.vssio_5.value = 0
    dut.vssio_6.value = 0
    dut.vssio_7.value = 0
    dut.vssio_8.value = 0
    dut.vssio_9.value = 0

async def start_up(dut):
    """ Startup sequence """
    await start_clock(dut.clock_tb)
    set_vdd(dut, 1)
    await reset(dut.resetb_tb)


@cocotb.test(skip=False)
async def test_hello_world(dut):
    """Run the "Hello World!" program"""

    # Setup UART
    #uart_source = UartSource(dut.uart0_rx, baud=115200, bits=8)
    #uart_sink = UartSink(dut.uart0_tx, baud=115200, bits=8)

    # FPGA config mode
    # if mode == 0: SPI controller
    # if mode == 1: SPI receiver
    dut.fpga_mode_i.value = 0

    await start_up(dut)
    
    await ClockCycles(dut.clock_tb, 1000)
    
    await FallingEdge(dut.config_busy_o)

if __name__ == "__main__":

    sim         = os.getenv("SIM", "icarus")
    pdk_root    = os.getenv("PDK_ROOT", "~/.volare")
    pdk         = os.getenv("PDK", "sky130A")
    scl         = os.getenv("SCL", "sky130_fd_sc_hd")
    gl          = os.getenv("GL", False)

    testbench_path = Path(__file__).resolve().parent
    
    includes = [testbench_path / '../src']
    
    verilog_sources = [
        # Testbench
        testbench_path / 'panamax_fpga_tb.v',
        
        # SPI Flash
        testbench_path / 'spiflash_powered.v',
        
        # SRAM models
        Path(pdk_root).expanduser() / pdk / "libs.ref" / "sky130_sram_macros" / "verilog" / "sky130_sram_1kbyte_1rw1r_32x256_8.v",
        
        # Panamax
        testbench_path / '../ip/panamax/verilog/rtl/panamax.v',
        testbench_path / '../ip/panamax/verilog/rtl/constant_block.v',
        testbench_path / '../ip/panamax/verilog/rtl/product_id_rom_8bit.v',
        testbench_path / '../ip/panamax/verilog/rtl/project_id_rom_32bit.v',
        testbench_path / '../ip/panamax/verilog/rtl/xres_lvlshift.v',
        
        # Analog
        testbench_path / '../ip/sky130_ef_ip__rdac3v_8bit/verilog/sky130_ef_ip__rdac3v_8bit.v',
        testbench_path / '../ip/sky130_ef_ip__adc3v_12bit/verilog/sky130_ef_ip__adc3v_12bit.v',
        testbench_path / '../ip/manual_routing/gl/manual_routing.v',
        
        # Add I/O models
        Path(pdk_root).expanduser() / pdk / "libs.ref" / "sky130_fd_io" / "verilog" / "sky130_fd_io.v",
        Path(pdk_root).expanduser() / pdk / "libs.ref" / "sky130_fd_io" / "verilog" / "sky130_ef_io.v",
        
        # Add SCLs for buf and conb
        Path(pdk_root).expanduser() / pdk / "libs.ref" / scl / "verilog" / f"{scl}.v",
        Path(pdk_root).expanduser() / pdk / "libs.ref" / scl / "verilog" / "primitives.v",
        
        # HVL SCL
        Path(pdk_root).expanduser() / pdk / "libs.ref" / "sky130_fd_sc_hvl" / "verilog" / "sky130_fd_sc_hvl.v",
        Path(pdk_root).expanduser() / pdk / "libs.ref" / "sky130_fd_sc_hvl" / "verilog" / "primitives.v",
        
        # PoR
        testbench_path / '../ip/sky130_ef_ip__simple_por/verilog/simple_por4x.v',
    ]
    defines = {}

    if gl:
        #verilog_sources.append(Path(pdk_root).expanduser() / pdk / "libs.ref" / scl / "verilog" / f"{scl}.v" )
        #verilog_sources.append(Path(pdk_root).expanduser() / pdk / "libs.ref" / scl / "verilog" / "primitives.v" )
        
        
        defines = {'FUNCTIONAL': True, 'UNIT_DELAY': '#0'}
    else:
        verilog_sources.extend([
            testbench_path / '../src/panamax_fpga.v',
            testbench_path / '../src/panamax_fpga_top.v',
            testbench_path / '../src/panamax_fpga_core.sv',     
        ])
        
        # Add fabric config
        verilog_sources.append(testbench_path / '../ip/fabulous_fabric/rtl/fabric_config.sv')
        verilog_sources.append(testbench_path / '../ip/fabulous_fabric/rtl/fabric_spi_controller.sv')
        verilog_sources.append(testbench_path / '../ip/fabulous_fabric/rtl/fabric_spi_receiver.sv')
        
        # Fabric wrapper
        verilog_sources.append(testbench_path / '../ip/fabulous_fabric/fabric_sky130/rtl/fabric_wrapper.sv')
        
        # Add FPGA fabric
        verilog_sources.append(testbench_path / '../ip/fabulous_fabric/fabric_sky130/macro/sky130A/fabulous/eFPGA.v')

        # Add tiles
        TILES_ROOT = testbench_path / '../ip/fabulous_fabric/fabulous_tiles/tiles'
        
        # DSP
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_bot/DSP_bot.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_bot/DSP_bot_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_bot/DSP_bot_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_bot/MULADD.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_top/DSP_top.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_top/DSP_top_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/DSP/DSP_top/DSP_top_switch_matrix.v')
        
        # SimpleCLB
        verilog_sources.append(f'{TILES_ROOT}/SimpleCLB/SimpleCLB.v')
        verilog_sources.append(f'{TILES_ROOT}/SimpleCLB/SimpleCLB_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/SimpleCLB/SimpleCLB_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/SimpleCLB/LUT4c_frame_config_dffesr.v')
        
        # N_term_DSP
        verilog_sources.append(f'{TILES_ROOT}/N_term_DSP/N_term_DSP.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_DSP/N_term_DSP_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_DSP/N_term_DSP_switch_matrix.v')
        
        # N_term_single
        verilog_sources.append(f'{TILES_ROOT}/N_term_single/N_term_single.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_single/N_term_single_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_single/N_term_single_switch_matrix.v')
        
        # N_term_single2
        verilog_sources.append(f'{TILES_ROOT}/N_term_single2/N_term_single2.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_single2/N_term_single2_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_single2/N_term_single2_switch_matrix.v')

        # RegFile
        verilog_sources.append(f'{TILES_ROOT}/RegFile/RegFile.v')
        verilog_sources.append(f'{TILES_ROOT}/RegFile/RegFile_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/RegFile/RegFile_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/RegFile/RegFile_32x4.v')
        
        # S_term_DSP
        verilog_sources.append(f'{TILES_ROOT}/S_term_DSP/S_term_DSP.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_DSP/S_term_DSP_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_DSP/S_term_DSP_switch_matrix.v')
        
        # S_term_single
        verilog_sources.append(f'{TILES_ROOT}/S_term_single/S_term_single.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_single/S_term_single_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_single/S_term_single_switch_matrix.v')

        # S_term_single2
        verilog_sources.append(f'{TILES_ROOT}/S_term_single2/S_term_single2.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_single2/S_term_single2_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_single2/S_term_single2_switch_matrix.v')

        # W_IO4
        verilog_sources.append(f'{TILES_ROOT}/W_IO4/W_IO4.v')
        verilog_sources.append(f'{TILES_ROOT}/W_IO4/W_IO4_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/W_IO4/W_IO4_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/W_IO4/IO_1_bidirectional_frame_config_pass.v')
        verilog_sources.append(f'{TILES_ROOT}/W_IO4/Config_access.v')
        
        # S_EF_ADC12
        verilog_sources.append(f'{TILES_ROOT}/S_EF_ADC12/S_EF_ADC12.v')
        verilog_sources.append(f'{TILES_ROOT}/S_EF_ADC12/S_EF_ADC12_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_EF_ADC12/S_EF_ADC12_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/S_EF_ADC12/EF_ADC12.sv')

        # S_EF_DAC8
        verilog_sources.append(f'{TILES_ROOT}/S_EF_DAC8/S_EF_DAC8.v')
        verilog_sources.append(f'{TILES_ROOT}/S_EF_DAC8/S_EF_DAC8_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_EF_DAC8/S_EF_DAC8_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/S_EF_DAC8/EF_DAC8.v')
        
        # S_WARMBOOT
        verilog_sources.append(f'{TILES_ROOT}/S_WARMBOOT/S_WARMBOOT.v')
        verilog_sources.append(f'{TILES_ROOT}/S_WARMBOOT/S_WARMBOOT_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_WARMBOOT/S_WARMBOOT_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/S_WARMBOOT/WARMBOOT.v')

        # OpenRAM
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_bot/OpenRAM_bot.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_bot/OpenRAM_bot_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_bot/OpenRAM_bot_switch_matrix.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_bot/OPENRAM_256x32_1RW1R.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_top/OpenRAM_top.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_top/OpenRAM_top_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/OpenRAM/OpenRAM_top/OpenRAM_top_switch_matrix.v')

        # N_term_OpenRAM
        verilog_sources.append(f'{TILES_ROOT}/N_term_OpenRAM/N_term_OpenRAM.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_OpenRAM/N_term_OpenRAM_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/N_term_OpenRAM/N_term_OpenRAM_switch_matrix.v')

        # S_term_OpenRAM
        verilog_sources.append(f'{TILES_ROOT}/S_term_OpenRAM/S_term_OpenRAM.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_OpenRAM/S_term_OpenRAM_ConfigMem.v')
        verilog_sources.append(f'{TILES_ROOT}/S_term_OpenRAM/S_term_OpenRAM_switch_matrix.v')

        verilog_sources.append(testbench_path / '../ip/fabulous_fabric/fabulous_tiles/models_pack.v')
        
        defines = {'RTL': True, 'FUNCTIONAL': True, 'UNIT_DELAY': '#0'}

    # TODO
    defines['USE_POWER_PINS'] = True
    
    hdl_toplevel = "panamax_fpga_tb"

    runner = get_runner(sim)
    runner.build(
        verilog_sources=verilog_sources,
        hdl_toplevel=hdl_toplevel,
        defines=defines,
        always=True,
        includes=includes,
        build_args=['-Winfloop'],
    )

    runner.test(
        hdl_toplevel=hdl_toplevel,
        test_module="panamax_fpga_tb,",
        plusargs=['-fst', f'+flash1_slot0={flash1_slot0}', f'+flash1_slot1={flash1_slot1}'],
        waves=True,
    )
