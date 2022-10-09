# STM32H735G_DISCO TBS Version 3.0.10.

Please note this TouchGFX Board Setup is only supported from TouchGFX 4.20.0. Configuration is done using CubeMX 6.5.0 based on STM32Cube FW_H7 V1.10.0 drivers. The default IDE is set to STM32CubeIDE, to change IDE open the STM32F769I_DISCO.ioc with CubeMX and select from the supported IDEs (EWARM from version 8.50.9, MDK-ARM, and STM32CubeIDE). Supports flashing of the STM32H735G_DISCO board directly from TouchGFX Designer using GCC and STM32CubeProgrammer.Flashing the board requires STM32CubeProgrammer which can be downloaded from the ST webpage. 

This TBS is configured for 272 x 480 pixels 24bpp screen resolution.  

Performance testing can be done using the GPIO pins designated with the following signals: VSYNC_FREQ  - Pin PA0(D3), RENDER_TIME - Pin PG3(D2), FRAME_RATE  - Pin PB14(D1), MCU_ACTIVE  - Pin PB15(D0).