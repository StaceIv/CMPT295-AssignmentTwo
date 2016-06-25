	.data
N: 	.string “0”
ANS: 	.quad

	.text
	.globl main

main:
   	mov    $N, %rbx
 	mov    $ANS, %rsi
  	mov    $0x0,%rax
   	mov    $0x0,%rdx
   	mov    (%rbx),%al
   	cmp    $0x2d,%al
   	jne    0x400519 <LOOP>
  	mov    (%rbx),%bpl
   	add    $0x1,%rbx
	

LOOP:
	cmp    $0x0,%al
 	je     CMPLMT
	imul   $0xa,%rdx,%rdx
 	and    $0xcf,%rax
 	add    %rax,%rdx	
	add    $0x1,%rbx
 	mov    (%rbx),%al
	jmp    LOOP

CMPLMT:
   	cmp    $0x2d,%bpl
   	jne    0x400547 <POS>
   	mov    %rdx,%rcx
   	add    $0x1, %rcx
   	mov    0(%rcx), %rsi
   	jmp    DONE

	
POS:
   	mov    0(%rdx), %rsi

DONE: 	ret

