# SPDX-License-Identifier: GPL-2.0-only
#
# Makefile for the drm device driver.  This driver provides support for the
# Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.

obj-m += mga_drv.o mga_dma.o mga_state.o mga_warp.o mga_irq.o mga.o mga_ioc32.o

PWD := $(CURDIR)

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
