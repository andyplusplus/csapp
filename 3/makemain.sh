#!/bin/bash
gcc -Og main-175.c mstore-172.c && objdump -d ./a.out > main-175.s
