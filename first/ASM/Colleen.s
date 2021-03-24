    global main
    extern printf
    section .text

; This is absolutely not a good way to do it, but it works...

codeAA: db '    global main', 0
codeAB: db '    extern printf', 0
codeAC: db '    section .text', 0
codeAD: db '', 0
codeAE: db '; This is absolutely not a good way to do it, but it works...', 0
codeAF: db '', 0
codeAG: db '', 0
codeAH: db 'code:', 0
codeAI: db '    dq codeAA, codeAB, codeAC, codeAD, codeAE, codeAF, codeAG, codeAH, codeAI, codeAJ', 0
codeAJ: db '    dq codeAK, codeAL, codeAM, codeAN, codeAO, codeAP, codeAQ, codeAR, codeAS, codeAT', 0
codeAK: db '    dq codeAU, codeAV, codeAW, codeAX, codeAY, codeAZ, codeBA, codeBB, codeBC, codeBD', 0
codeAL: db '    dq codeBE, codeBF, codeBG, codeBH, codeBI, codeBJ, codeBK, codeBL, codeBM, codeBN', 0
codeAM: db '    dq codeBO, codeBP, codeBQ, codeBR, codeBS, codeBT, codeBU, codeBV, codeBW, codeBX', 0
codeAN: db '    dq codeBY, codeBZ, codeCA, codeCB, codeCC, codeCD, codeCE, codeCF, codeCG, codeCH', 0
codeAO: db '    dq codeCI, codeCJ, codeCK, codeCL, codeCM, codeCN, codeCO, codeCP, codeCQ, codeCR', 0
codeAP: db '    dq codeCS, codeCT, codeCU, codeCV, codeCW, codeCX, codeCY, codeCZ, codeDA, codeDB', 0
codeAQ: db '    dq codeDC, codeDD, codeDE, codeDF, codeDG, codeDH, codeDI, codeDJ, codeDK, codeDL', 0
codeAR: db '    dq codeDM, codeDN, codeDO, codeDP, codeDQ, codeDR, codeDS, codeDT, codeDU, codeDV', 0
codeAS: db '    dq codeDW, codeDX', 0
codeAT: db '', 0
codeAU: db 'prefix0: db 99, 111, 100, 101, 0', 0
codeAV: db 'prefix1: db 58, 32, 100, 98, 32, 39, 0', 0
codeAW: db 'suffix: db 39, 44, 32, 48, 10, 0', 0
codeAX: db 'newline: db 10, 0', 0
codeAY: db '', 0
codeAZ: db 'print_code:', 0
codeBA: db '    push rbx', 0
codeBB: db '    push rbx', 0
codeBC: db '', 0
codeBD: db '    mov rbx, 0', 0
codeBE: db 'loop0:', 0
codeBF: db '    mov rdi, code', 0
codeBG: db '    mov rdi, [rdi + rbx * 8]', 0
codeBH: db '    cmp rbx, 6', 0
codeBI: db '    je next0', 0
codeBJ: db '    call printf', 0
codeBK: db '    mov rdi, newline', 0
codeBL: db '    call printf', 0
codeBM: db '    inc rbx', 0
codeBN: db '    jmp loop0', 0
codeBO: db 'next0:', 0
codeBP: db '', 0
codeBQ: db '    mov rbx, 0', 0
codeBR: db 'loop1:', 0
codeBS: db '    mov rdi, code', 0
codeBT: db '    mov rdi, [rdi + rbx * 8]', 0
codeBU: db '    cmp rbx, 102', 0
codeBV: db '    je next1', 0
codeBW: db '', 0
codeBX: db '    mov rdi, prefix0', 0
codeBY: db '    call printf', 0
codeBZ: db '', 0
codeCA: db '    mov rdi, buff', 0
codeCB: db '    call printf', 0
codeCC: db '    mov rdi, buff', 0
codeCD: db '', 0
codeCE: db '    inc byte [rdi + 1]', 0
codeCF: db '    cmp byte [rdi + 1], 91', 0
codeCG: db '    jne loop1_2', 0
codeCH: db '', 0
codeCI: db '    inc byte [rdi]', 0
codeCJ: db '    mov byte [rdi + 1], 65', 0
codeCK: db '', 0
codeCL: db 'loop1_2:', 0
codeCM: db '    mov rdi, prefix1', 0
codeCN: db '    call printf', 0
codeCO: db '', 0
codeCP: db '    mov rdi, code', 0
codeCQ: db '    mov rdi, [rdi + rbx * 8]', 0
codeCR: db '    call printf', 0
codeCS: db '', 0
codeCT: db '    mov rdi, suffix', 0
codeCU: db '    call printf', 0
codeCV: db '', 0
codeCW: db '    inc rbx', 0
codeCX: db '    jmp loop1', 0
codeCY: db 'next1:', 0
codeCZ: db '', 0
codeDA: db '    mov rbx, 6', 0
codeDB: db 'loop2:', 0
codeDC: db '    mov rdi, code', 0
codeDD: db '    mov rdi, [rdi + rbx * 8]', 0
codeDE: db '    cmp rbx, 102', 0
codeDF: db '    je next2', 0
codeDG: db '    call printf', 0
codeDH: db '    mov rdi, newline', 0
codeDI: db '    call printf', 0
codeDJ: db '    inc rbx', 0
codeDK: db '    jmp loop2', 0
codeDL: db 'next2:', 0
codeDM: db '', 0
codeDN: db '    pop rbx', 0
codeDO: db '    pop rbx', 0
codeDP: db '    ret', 0
codeDQ: db '', 0
codeDR: db 'main:', 0
codeDS: db '    ; I dont like assembly :/', 0
codeDT: db '    call print_code', 0
codeDU: db '    ret', 0
codeDV: db '', 0
codeDW: db '    section .data', 0
codeDX: db 'buff: db 65, 65, 0', 0

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
    dq codeDM, codeDN, codeDO, codeDP, codeDQ, codeDR, codeDS, codeDT, codeDU, codeDV
    dq codeDW, codeDX

prefix0: db 99, 111, 100, 101, 0
prefix1: db 58, 32, 100, 98, 32, 39, 0
suffix: db 39, 44, 32, 48, 10, 0
newline: db 10, 0

print_code:
    push rbx
    push rbx

    mov rbx, 0
loop0:
    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    cmp rbx, 6
    je next0
    call printf
    mov rdi, newline
    call printf
    inc rbx
    jmp loop0
next0:

    mov rbx, 0
loop1:
    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    cmp rbx, 102
    je next1

    mov rdi, prefix0
    call printf

    mov rdi, buff
    call printf
    mov rdi, buff

    inc byte [rdi + 1]
    cmp byte [rdi + 1], 91
    jne loop1_2

    inc byte [rdi]
    mov byte [rdi + 1], 65

loop1_2:
    mov rdi, prefix1
    call printf

    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    call printf

    mov rdi, suffix
    call printf

    inc rbx
    jmp loop1
next1:

    mov rbx, 6
loop2:
    mov rdi, code
    mov rdi, [rdi + rbx * 8]
    cmp rbx, 102
    je next2
    call printf
    mov rdi, newline
    call printf
    inc rbx
    jmp loop2
next2:

    pop rbx
    pop rbx
    ret

main:
    ; I dont like assembly :/
    call print_code
    ret

    section .data
buff: db 65, 65, 0
