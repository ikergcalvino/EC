.data
n: .word 10
a: .float 1
ax: .space 36
f: .space 40

.text
.globl main

main:
  la $t0, n
  lw $t0, 0($t0)
  la $t1, a
  lwc1 $f0, 0($t1)
  lwc1 $f1, 0($t1)
  lwc1 $f2, 0($t1)
  la $t2, f
loop:
  swc1 $f0, 0($t1)
  swc1 $f1, 0($t2)
  addi $t1, $t1, 4
  addi $t2, $t2, 4
  addi $t0, $t0, -1
  beq $t0, $0, end
  nop
  add.s $f0, $f0, $f2
  mul.s $f1, $f1, $f0
  j loop
  nop
end:
  addi $v0, $0, 10
  syscall
