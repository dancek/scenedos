set disassembly-flavor intel

target remote :1234

disp/i ($cs << 4) + ((long)$eip & 0xffff)
b *0x0100
b *0x21f80
c
