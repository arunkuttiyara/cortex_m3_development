arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -g -c test.c -o test.o
arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -g -c startup.c -o startup.o
arm-none-eabi-ld  -g -T standalone.ld startup.o test.o -o test.elf
arm-none-eabi-objcopy -O binary test.elf test.bin
