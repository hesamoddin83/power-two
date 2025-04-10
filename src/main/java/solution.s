# fill the code
.data 
#array

.text 
li a7, 5
ecall
mv a1, a0 # a1 is num of our tests
li t0, 0 # i
loop: bge t0, a1, exit
li a7, 5
ecall
mv a2, a0 # a2 is our num
li a3, 1 # sum

loop2: bge a3, a2, exit2
li a4, 2
mul a3, a3, a4
beq a0, a0, loop2

exit2:
beq a3, a2, final
li a7, 1
li a0, 0
ecall
addi t0, t0, 1
beq t0, a1, space
beq a0, a0, loop
final:
li a7, 1
li a0, 1
ecall
addi t0, t0, 1
beq t0, a1, space
beq a0, a0, loop
space:
li a7, 11
li a0, 32
ecall
li a0, 0
beq a0, a0, loop

exit:
