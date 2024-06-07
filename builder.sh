printf "\x1bc\x1b[43;37mbuild....\n"
nasm -f elf32 base.asm -o /tmp/base.o
nasm -f elf32 -o /tmp/codes.o codes.s
cp -f "hello.pas" /tmp/hello.pas
fpc -Cn -CcCDECL -O2 -Xs -Xs -Xt -Pi386 -Tlinux  "/tmp/hello.pas" 
ld  /tmp/base.o /tmp/codes.o /tmp/hello.o -o hello -nostdlib


