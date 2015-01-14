# To erase a rewritable DVD
umount /dev/cdrom
cdrecord dev=/dev/cdrom blank=fast
