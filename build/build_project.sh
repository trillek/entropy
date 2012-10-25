#!/bin/sh
mkdir ../bin/
echo -------------------
echo Building Bootloader
echo -------------------
mono organic.exe ../src/bootloader/main.dasm ../bin/bootloader.bin --working-directory ../src/bootloader/ --listing debug/bootloader.lst
echo -------------------
echo Building Kernel
echo -------------------
mono organic.exe ../src/kernel/main.dasm ../bin/entropy.bin --working-directory ../src/kernel/ --listing debug/entropy.lst
echo -------------------