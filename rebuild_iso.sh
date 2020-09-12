#!/bin/sh
isodir="./"
xorriso -as mkisofs -iso-level 3 -full-iso9660-filenames -volid "MULTIBOOT" -eltorito-boot boot/isolinux/isolinux.bin -eltorito-catalog boot/isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -isohybrid-mbr ${isodir}boot/isolinux/isohdpfx.bin -eltorito-alt-boot -e boot/isolinux/efiboot.img -no-emul-boot -isohybrid-gpt-basdat -output ~/output.iso  ${isodir}
