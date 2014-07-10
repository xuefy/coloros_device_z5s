#! /system/bin/sh
FREQVALUE=$(/system/bin/getprop "sys.gpu")
PATH=$(/system/bin/getprop "sys.cpupath")
echo $FREQVALUE > $PATH