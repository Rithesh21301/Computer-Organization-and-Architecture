.section .text
.global main


.global course_name
.extern getCourse
.extern displayStudentProfile


main:

    la a0,first_name
    la a1,last_name
    la a2,course_name
    la t0,st
    lb t1,0(t0)
    lb t2,1(t0)
    lb t3,2(t0)
    lb t4,3(t0)

    sb t1,0(a2)
    sb t2,1(a2)
    sb t3,2(a2)
    sb t4,3(a2)
    call displayStudentProfile




.section .data
    first_name: .asciz "your1stname"
    last_name: .asciz "yourlastname"
    st: .asciz "abc"
