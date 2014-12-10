modified text, assembly, relocable obj of hello world

generate preprocessing file:
    gcc -E hello.c > hello.i
    cpp hello.c hello.i
generate assembly code: gcc -S hello.c
