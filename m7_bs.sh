#!/bin/bash

#Android Toolchain PATH
export ARCH=arm
export SUBARCH=arm
export CCOMPILE=$CROSS_COMPILE
export CROSS_COMPILE=arm-eabi-
export PATH=$PATH:/home/suraj/Toolchains/arm-eabi-4.8/bin       #Enter your Toolchain Path

#Make Kernel
make clean && make mrproper
make m7_defconfig
make menuconfig 												#Optional,just use it to confirm configs befor compiling
make -j4   														#Set number according to your cpu cores


#A simple build script file, Can't find the original one i made where it directly zipped the zImage to a flashable zip.Anyways,this one works
#fine too.Just run this script and you will find the zImage in the dir - arch/arm/boot. Just pack that in a flashable zip and its good to go!
