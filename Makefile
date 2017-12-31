obj-m:= leddev.o

KPATH := ${HOME}/raspberry/linux

leddev.ko: leddev.c
	make -C ${KPATH} M=`pwd` V=1 modules
clean:
	make -C ${KPATH} M=`pwd` V=1 clean
