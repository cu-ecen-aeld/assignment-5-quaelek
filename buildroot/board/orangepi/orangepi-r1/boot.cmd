setenv fdt_high ffffffff

setenv bootargs console=ttyS0,115200 earlyprintk root=PARTLABEL=rootfs rootwait

fatload mmc 0 $kernel_addr_r zImage
fatload mmc 0 $fdt_addr_r sun8i-h2-plus-orangepi-r1.dtb

bootz $kernel_addr_r - $fdt_addr_r
