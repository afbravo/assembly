#!/bin/zsh

# Assemble the project
nasm -f elf64 hello.s
ld -m elf_x86_64 hello.o -o hello
./hello
rm hello.o hello
