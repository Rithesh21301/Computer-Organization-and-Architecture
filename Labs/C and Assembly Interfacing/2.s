.global new_string

.section .data
new_string: .space 50

.section .text
.global reverse



reverse:

la a1,new_string
li t0,0 
mv t1,a0 

for_leng:
    lb t2,0(t1)
    beqz t2 ,end
    addi t0,t0,1
    addi t1,t1,1
    j for_leng

end:
    li t3,0
    add t3,a0,t0
    addi t3,t3,-1
    li t4,0
    
for_loop:

    beq t0,t4,end1
    lb t6,0(t3)
    sb t6,0(a1)

    addi a1,a1,1
    addi t3,t3,-1
    addi t4,t4,1
    j for_loop
    
end1:
    sb zero,0(a1)
    mv a0,t0
    ret





