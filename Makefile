# a minimal example to get RISC-V bare metal assembler running on spike

doit:
	riscv64-unknown-elf-gcc -march=rv64g -mabi=lp64 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -Tlinker.ld test.s -o test
	spike --isa=rv64gc -d test
