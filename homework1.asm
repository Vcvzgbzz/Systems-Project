


;; TODO - implement counting up from 1 to 10
;; in Little Man Computer assembly
;; Paste the code below, along with the output

;; CODE   =====================================
LDA ONE
LOOP BRZ EXIT
LDA ONE
OUT
ADD INCR
STA ONE
LDA MAX
SUB ONE
BRA LOOP
EXIT HLT
ONE DAT 1
MAX DAT 11
INCR DAT 1
;; OUTPUT =====================================
1
2
3
4
5
6
7
8
9
10

-----
;; TODO - implement counting up from 1 to 10
;; in MIPS assembly, code only
.text

li $t0,0
li $t1,11
loop:
	li $v0, 1# print int
	move $a0, $t0
	syscall
	addi $t0,$t0,1
	bne $t0,$t1,loop
	li $v0,10
	syscall