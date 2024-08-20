obj-m += hello-1.o
WARN := -W -Wall -Wstrict-prototypes -Wmissing-prototypes


all:
	make -C  /lib/modules/$(shell uname -r)/build M=$(PWD) modules 


clean:
	make -C  /lib/modules/$(shell uname -r)/build M=$(PWD) clean 

