    global _main
    extern _printf
    section __TEXT,__text

codeAA: db '    global _main', 0
codeAB: db '    extern _printf', 0
codeAC: db '    section __TEXT,__text', 0
codeAD: db '', 0
codeAE: db '', 0
codeAF: db 'code:', 0
codeAG: db '    dq codeAA, codeAB, codeAC, codeAD, codeAE, codeAF, codeAG, codeAH, codeAI, codeAJ', 0
codeAH: db '    dq codeAK, codeAL, codeAM, codeAN, codeAO, codeAP, codeAQ, codeAR, codeAS, codeAT', 0
codeAI: db '    dq codeAU, codeAV, codeAW, codeAX, codeAY, codeAZ, codeBA, codeBB, codeBC, codeBD', 0
codeAJ: db '    dq codeBE, codeBF, codeBG, codeBH, codeBI, codeBJ, codeBK, codeBL, codeBM, codeBN', 0
codeAK: db '    dq codeBO, codeBP, codeBQ, codeBR, codeBS, codeBT, codeBU, codeBV, codeBW, codeBX', 0
codeAL: db '    dq codeBY, codeBZ, codeCA, codeCB, codeCC, codeCD, codeCE, codeCF, codeCG, codeCH', 0
codeAM: db '    dq codeCI, codeCJ, codeCK, codeCL, codeCM, codeCN, codeCO, codeCP, codeCQ, codeCR', 0
codeAN: db '    dq codeCS, codeCT, codeCU, codeCV, codeCW, codeCX, codeCY, codeCZ, codeDA, codeDB', 0
codeAO: db '    dq codeDC, codeDD, codeDE, codeDF, codeDG, codeDH, codeDI, codeDJ, codeDK, codeDL', 0
codeAP: db '    dq codeDM, codeDN', 0
codeAQ: db '', 0
codeAR: db 'prefix0: db 99, 111, 100, 101, 0', 0
codeAS: db 'prefix1: db 58, 32, 100, 98, 32, 39, 0', 0
codeAT: db 'suffix: db 39, 44, 32, 48, 10, 0', 0
codeAU: db 'newline: db 10, 0', 0
codeAV: db '', 0
codeAW: db '_main:', 0
codeAX: db '    push rbx', 0
codeAY: db '', 0
codeAZ: db '    mov rbx, 0', 0
codeBA: db 'loop0:', 0
codeBB: db '    mov rdi, code', 0
codeBC: db '    mov rdi, [rdi + rbx * 8]', 0
codeBD: db '    cmp rbx, 4', 0
codeBE: db '    je next0', 0
codeBF: db '    call _printf', 0
codeBG: db '    mov rdi, newline', 0
codeBH: db '    call _printf', 0
codeBI: db '    inc rbx', 0
codeBJ: db '    jmp loop0', 0
codeBK: db 'next0:', 0
codeBL: db '', 0
codeBM: db '    mov rbx, 0', 0
codeBN: db 'loop1:', 0
codeBO: db '    mov rdi, code', 0
codeBP: db '    mov rdi, [rdi + rbx * 8]', 0
codeBQ: db '    cmp rbx, 92', 0
codeBR: db '    je next1', 0
codeBS: db '', 0
codeBT: db '    mov rdi, prefix0', 0
codeBU: db '    call _printf', 0
codeBV: db '', 0
codeBW: db '    mov rdi, buff', 0
codeBX: db '    call _printf', 0
codeBY: db '    mov rdi, buff', 0
codeBZ: db '', 0
codeCA: db '    inc byte [rdi + 1]', 0
codeCB: db '    cmp byte [rdi + 1], 91', 0
codeCC: db '    jne loop1_2', 0
codeCD: db '', 0
codeCE: db '    inc byte [rdi]', 0
codeCF: db '    mov byte [rdi + 1], 65', 0
codeCG: db '', 0
codeCH: db 'loop1_2:', 0
codeCI: db '    mov rdi, prefix1', 0
codeCJ: db '    call _printf', 0
codeCK: db '', 0
codeCL: db '    mov rdi, code', 0
codeCM: db '    mov rdi, [rdi + rbx * 8]', 0
codeCN: db '    call _printf', 0
codeCO: db '', 0
codeCP: db '    mov rdi, suffix', 0
codeCQ: db '    call _printf', 0
codeCR: db '', 0
codeCS: db '    inc rbx', 0
codeCT: db '    jmp loop1', 0
codeCU: db 'next1:', 0
codeCV: db '', 0
codeCW: db '    mov rbx, 4', 0
codeCX: db 'loop2:', 0
codeCY: db '    mov rdi, code', 0
codeCZ: db '    mov rdi, [rdi + rbx * 8]', 0
codeDA: db '    cmp rbx, 92', 0
codeDB: db '    je next2', 0
codeDC: db '    call _printf', 0
codeDD: db '    mov rdi, newline', 0
codeDE: db '    call _printf', 0
codeDF: db '    inc rbx', 0
codeDG: db '    jmp loop2', 0
codeDH: db 'next2:', 0
codeDI: db '', 0
codeDJ: db '    pop rbx', 0
codeDK: db '    ret', 0
codeDL: db '', 0
codeDM: db '    section .data', 0
codeDN: db 'buff: db 65, 65, 0', 0

code:
    dq codeAA, codeAB, codeAC, codeAD, codeAE, codeAF, codeAG, codeAH, codeAI, codeAJ
    dq codeAK, codeAL, codeAM, codeAN, codeAO, codeAP, codeAQ, codeAR, codeAS, codeAT
    dq codeAU, codeAV, codeAW, codeAX, codeAY, codeAZ, codeBA, codeBB, codeBC, codeBD
    dq codeBE, codeBF, codeBG, codeBH, codeBI, codeBJ, codeBK, codeBL, codeBM, codeBN
    dq codeBO, codeBP, codeBQ, codeBR, codeBS, codeBT, codeBU, codeBV, codeBW, codeBX
    dq codeBY, codeBZ, codeCA, codeCB, codeCC, codeCD, codeCE, codeCF, codeCG, codeCH
    dq codeCI, codeCJ, codeCK, codeCL, codeCM, codeCN, codeCO, codeCP, codeCQ, codeCR
    dq codeCS, codeCT, codeCU, codeCV, codeCW, codeCX, codeCY, codeCZ, codeDA, codeDB
    dq codeDC, codeDD, codeDE, codeDF, codeDG, codeDH, codeDI, codeDJ, codeDK, codeDL
    dq codeDM, codeDN

prefix0: db 99, 111, 100, 101, 0
prefix1: db 58, 32, 100, 98, 32, 39, 0
suffix: db 39, 44, 32, 48, 10, 0
newline: db 10, 0

_main:
    push rbx

    mov rbx, 0
loop0:
    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    cmp rbx, 4
    je next0
    call _printf
    mov rdi, newline
    call _printf
    inc rbx
    jmp loop0
next0:

    mov rbx, 0
loop1:
    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    cmp rbx, 92
    je next1

    mov rdi, prefix0
    call _printf

    mov rdi, buff
    call _printf
    mov rdi, buff

    inc byte [rdi + 1]
    cmp byte [rdi + 1], 91
    jne loop1_2

    inc byte [rdi]
    mov byte [rdi + 1], 65

loop1_2:
    mov rdi, prefix1
    call _printf

    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    call _printf

    mov rdi, suffix
    call _printf

    inc rbx
    jmp loop1
next1:

    mov rbx, 4
loop2:
    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    cmp rbx, 92
    je next2
    call _printf
    mov rdi, newline
    call _printf
    inc rbx
    jmp loop2
next2:

    pop rbx
    ret

    section .data
buff: db 65, 65, 0
