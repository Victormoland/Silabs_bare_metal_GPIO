####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "C:/Users/victo/.silabs/slt/installs/conan/p/simpl1a11563c2e399/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.12.1")
set(PKG_PATH "C:/Users/victo/.silabs/slt/installs")

add_library(slc OBJECT
    "${SDK_PATH}/board_drivers/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c"
    "${SDK_PATH}/boards/hardware/board/src/sl_board_control_gpio.c"
    "${SDK_PATH}/boards/hardware/board/src/sl_board_init.c"
    "${SDK_PATH}/devices/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c"
    "${SDK_PATH}/devices/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c"
    "${SDK_PATH}/platform_common/platform/common/src/sl_assert.c"
    "${SDK_PATH}/platform_common/platform/common/src/sl_slist.c"
    "${SDK_PATH}/platform_common/platform/common/src/sl_string.c"
    "${SDK_PATH}/platform_common/platform/common/src/sl_syscalls.c"
    "${SDK_PATH}/platform_core/hardware/driver/configuration_over_swo/src/sl_cos.c"
    "${SDK_PATH}/platform_core/platform/common/src/sl_core_cortexm.c"
    "${SDK_PATH}/platform_core/platform/driver/debug/src/sl_debug_swo.c"
    "${SDK_PATH}/platform_core/platform/driver/gpio/src/sl_gpio.c"
    "${SDK_PATH}/platform_core/platform/driver/i2c/src/sl_i2c.c"
    "${SDK_PATH}/platform_core/platform/driver/i2cspm/src/sl_i2cspm.c"
    "${SDK_PATH}/platform_core/platform/driver/leddrv/src/sl_led.c"
    "${SDK_PATH}/platform_core/platform/driver/leddrv/src/sl_simple_led.c"
    "${SDK_PATH}/platform_core/platform/emdrv/dmadrv/src/dmadrv.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_burtc.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_cmu.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_emu.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_eusart.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_gpio.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_i2c.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_ldma.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_msc.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_prs.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_system.c"
    "${SDK_PATH}/platform_core/platform/emlib/src/em_timer.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_eusart.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_gpio.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_i2c.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_prs.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_syscfg.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_sysrtc.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.c"
    "${SDK_PATH}/platform_core/platform/peripheral/src/sl_hal_system.c"
    "${SDK_PATH}/platform_core/platform/service/clock_manager/src/sl_clock_manager.c"
    "${SDK_PATH}/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c"
    "${SDK_PATH}/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.c"
    "${SDK_PATH}/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c"
    "${SDK_PATH}/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.c"
    "${SDK_PATH}/platform_core/platform/service/device_init/src/sl_device_init_emu_s2.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/src/sl_device_clock.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/src/sl_device_dma.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/src/sl_device_gpio.c"
    "${SDK_PATH}/platform_core/platform/service/device_manager/src/sl_device_peripheral.c"
    "${SDK_PATH}/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c"
    "${SDK_PATH}/platform_core/platform/service/iostream/src/sl_iostream.c"
    "${SDK_PATH}/platform_core/platform/service/iostream/src/sl_iostream_eusart.c"
    "${SDK_PATH}/platform_core/platform/service/iostream/src/sl_iostream_retarget_stdio.c"
    "${SDK_PATH}/platform_core/platform/service/iostream/src/sl_iostream_stdlib_config.c"
    "${SDK_PATH}/platform_core/platform/service/iostream/src/sl_iostream_uart.c"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.c"
    "${SDK_PATH}/platform_core/platform/service/sl_main/src/sl_main_init.c"
    "${SDK_PATH}/platform_core/platform/service/sl_main/src/sl_main_init_memory.c"
    "${SDK_PATH}/platform_core/platform/service/sl_main/src/sl_main_process_action.c"
    "${SDK_PATH}/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.c"
    "${SDK_PATH}/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c"
    "${SDK_PATH}/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c"
    "${SDK_PATH}/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c"
    "${SDK_PATH}/platform_core/platform/service/udelay/src/sl_udelay.c"
    "${SDK_PATH}/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.S"
    "../autogen/sl_board_default_init.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_i2cspm_init.c"
    "../autogen/sl_iostream_handles.c"
    "../autogen/sl_iostream_init_eusart_instances.c"
    "../autogen/sl_simple_led_instances.c"
    "../main.c"
    "../pwm_gpio.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
    "${SDK_PATH}/devices/platform/Device/SiliconLabs/EFR32MG24/Include"
    "${SDK_PATH}/platform_common/platform/common/inc"
    "${SDK_PATH}/boards/hardware/board/inc"
    "${SDK_PATH}/platform_core/platform/service/clock_manager/inc"
    "${SDK_PATH}/platform_core/platform/service/clock_manager/src"
    "${SDK_PATH}/cmsis/Core/Include"
    "${SDK_PATH}/platform_core/hardware/driver/configuration_over_swo/inc"
    "${SDK_PATH}/platform_core/platform/driver/debug/inc"
    "${SDK_PATH}/platform_core/platform/service/device_manager/inc"
    "${SDK_PATH}/platform_core/platform/service/device_init/inc"
    "${SDK_PATH}/platform_core/platform/emdrv/dmadrv/inc"
    "${SDK_PATH}/platform_core/platform/emdrv/dmadrv/inc/s2_signals"
    "${SDK_PATH}/platform_core/platform/emdrv/common/inc"
    "${SDK_PATH}/platform_core/platform/emlib/inc"
    "${SDK_PATH}/platform_core/platform/driver/gpio/inc"
    "${SDK_PATH}/platform_core/platform/peripheral/inc"
    "${SDK_PATH}/platform_core/platform/driver/i2c/inc"
    "${SDK_PATH}/platform_core/platform/driver/i2c/src"
    "${SDK_PATH}/platform_core/platform/driver/i2cspm/inc"
    "${SDK_PATH}/platform_core/platform/service/interrupt_manager/inc"
    "${SDK_PATH}/platform_core/platform/service/interrupt_manager/src"
    "${SDK_PATH}/platform_core/platform/service/interrupt_manager/inc/arm"
    "${SDK_PATH}/platform_core/platform/service/iostream/inc"
    "${SDK_PATH}/platform_core/platform/driver/leddrv/inc"
    "${SDK_PATH}/platform_core/platform/service/memory_manager/inc"
    "${SDK_PATH}/board_drivers/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_eusart"
    "${SDK_PATH}/platform_core/platform/common/inc"
    "${SDK_PATH}/platform_core/platform/service/sl_main/inc"
    "${SDK_PATH}/platform_core/platform/service/sl_main/src"
    "${SDK_PATH}/platform_core/platform/service/sleeptimer/inc"
    "${SDK_PATH}/platform_core/platform/service/sleeptimer/src"
    "${SDK_PATH}/platform_core/platform/service/udelay/inc"
)

target_compile_definitions(slc PUBLIC
    "DEBUG_EFM=1"
    "EFR32MG24B310F1536IM48=1"
    "SL_CODE_COMPONENT_SYSTEM=system"
    "HARDWARE_BOARD_DEFAULT_RF_BAND_2400=1"
    "HARDWARE_BOARD_SUPPORTS_1_RF_BAND=1"
    "HARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1"
    "HFXO_FREQ=39000000"
    "SL_BOARD_NAME=\"BRD2601B\""
    "SL_BOARD_REV=\"A01\""
    "SL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "SL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral"
    "SL_CODE_COMPONENT_DMADRV=dmadrv"
    "SL_CODE_COMPONENT_GPIO=gpio"
    "SL_CODE_COMPONENT_HAL_COMMON=hal_common"
    "SL_CODE_COMPONENT_HAL_GPIO=hal_gpio"
    "SL_CODE_COMPONENT_HAL_SYSRTC=hal_sysrtc"
    "SL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager"
    "CMSIS_NVIC_VIRTUAL=1"
    "CMSIS_NVIC_VIRTUAL_HEADER_FILE=\"cmsis_nvic_virtual.h\""
    "SL_CODE_COMPONENT_CORE=core"
    "SL_CODE_COMPONENT_SLEEPTIMER=sleeptimer"
)

target_link_libraries(slc PUBLIC
    "-Wl,--start-group"
    "gcc"
    "c"
    "m"
    "nosys"
    "-Wl,--end-group"
)
target_compile_options(slc PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=hard>
    $<$<COMPILE_LANGUAGE:C>:-mcmse>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:C>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=hard>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-mcmse>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m33>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv5-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=hard>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command )
set_property(TARGET slc PROPERTY C_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc INTERFACE
    -mcpu=cortex-m33
    -mthumb
    -mfpu=fpv5-sp-d16
    -mfloat-abi=hard
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:i2cspm_baremetal>/i2cspm_baremetal.map"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA