Hydra Multiboot Disk

This boot disk is intended to be used from a USB drive on machines that have either legacy BIOS or 64-bit UEFI firmware. 32-bit UEFI systems are NOT supported. Even if the this boot disk is intended to be used on USB drives given it's big size, it is also able to be booted via CD/DVD/BD if enough components are removed to make it fit. Modification of this disk is permitted and encouraged, so in order to make this easy, I made easy to understand GRUB config files and the following list that explains what every relevant file or directory is for:

/boot/grub/                       <-- GRUB files (for BIOS and EFI modes) 
/boot/grub/lnxboot.img            <-- Secondary BIOS mode bootloader (loaded by Isolinux)
/boot/isolinux/isolinux.bin       <-- Primary BIOS mode bootloader (loads Grub) 
/EFI/BOOT/BOOTX64.EFI             <-- EFI mode bootloader
/EFI/refind/                      <-- rEFInd EFI bootloader
/multiboot/diskimg/               <-- Disk images and ISOs for various tools
/multiboot/menu/                  <-- Menu definition files for GRUB
/multiboot/menu/main_menu.cfg     <-- Main GRUB menu (If you want to modify this disk, start here!)
/multiboot/menu/ldlinux.sys       <-- Primary BIOS mode bootloader (loads Grub) 
/rebuild_iso.sh                   <-- Bash script to rebuild the iso file after changes

Note on boot process: While on UEFI systems GRUB is loaded directly, on BIOS systems Isolinux is loaded first and then it loads GRUB

Based on:
YUMI
MediCat DVD
