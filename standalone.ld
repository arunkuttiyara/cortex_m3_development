

    /******************************************************************************

     *

     * standalone.ld - Linker script for applications using startup.c 

     *

     *****************************************************************************/

    ENTRY(ResetISR) 

    MEMORY

    {

        FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 256K

        SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 64K

    }

     

    SECTIONS

    {

        .text :

        {

            KEEP(*(.isr_vector))

            *(.text*)

            *(.rodata*)

            _etext = .;

        } > FLASH

     

        .data : AT (ADDR(.text) + SIZEOF(.text))

        {

            _data = .;

            *(vtable)

            *(.data*)

            _edata = .;

        } > SRAM

     

        .bss :

        {

            _bss = .;

            *(.bss*)

            *(COMMON)

            _ebss = .;

        } > SRAM

    }


