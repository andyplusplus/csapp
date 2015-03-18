#!/bin/bash
gcc -c -Og exchange-187.c  &&  objdump -d ./exchange-187.o > exchange-187-disamb-Og.s
