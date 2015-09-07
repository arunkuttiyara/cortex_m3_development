# cortex_m3_development


# cortex_m3_qemu
basic cortex-m3 simulation on qemu

based on 
http://shukra.cedt.iisc.ernet.in/edwiki/EmSys:Starting_Cortex-M3_Development_Using_the_GNU_Tool_Chain_-_Part_2

also , bravegnu tutorials..

steps
=======

arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -g -c test.c -o test.o
arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -g -c startup.c -o startup.o
arm-none-eabi-ld  -g -T standalone.ld startup.o test.o -o test.elf
arm-none-eabi-objcopy -O binary test.elf test.bin

qemu 
======

qemu-system-arm -M lm3s6965evb --kernel test.bin --serial null -nographic -S -s


asm code
=========

arm-none-eabi-as -mcpu=cortex-m3 -mthumb -g -c basepri.s -o basepri.o
arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -g -c startup.c -o startup.o
arm-none-eabi-ld  -g -T standalone.ld startup.o basepri.o -o test.elf

gdb
=======
start gdb using arm-none-eabi-gdb test.elf 
then type
target remote localhost:1234








