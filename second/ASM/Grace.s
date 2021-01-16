    global _main
    extern _fprintf
    extern _fopen
    section __TEXT,__text

codeAA: db '    global _main', 0
codeAB: db '    extern _fprintf', 0
codeAC: db '    extern _fopen', 0
codeAD: db '    section __TEXT,__text', 0
codeAE: db '', 0
codeAF: db '', 0
codeAG: db 'code:', 0
codeAH: db '    dq codeAA, codeAB, codeAC, codeAD, codeAE, codeAF, codeAG, codeAH, codeAI, codeAJ', 0
codeAI: db '    dq codeAK, codeAL, codeAM, codeAN, codeAO, codeAP, codeAQ, codeAR, codeAS, codeAT', 0
codeAJ: db '    dq codeAU, codeAV, codeAW, codeAX, codeAY, codeAZ, codeBA, codeBB, codeBC, codeBD', 0
codeAK: db '    dq codeBE, codeBF, codeBG, codeBH, codeBI, codeBJ, codeBK, codeBL, codeBM, codeBN', 0
codeAL: db '    dq codeBO, codeBP, codeBQ, codeBR, codeBS, codeBT, codeBU, codeBV, codeBW, codeBX', 0
codeAM: db '    dq codeBY, codeBZ, codeCA, codeCB, codeCC, codeCD, codeCE, codeCF, codeCG, codeCH', 0
codeAN: db '    dq codeCI, codeCJ, codeCK, codeCL, codeCM, codeCN, codeCO, codeCP, codeCQ, codeCR', 0
codeAO: db '    dq codeCS, codeCT, codeCU, codeCV, codeCW, codeCX, codeCY, codeCZ, codeDA, codeDB', 0
codeAP: db '    dq codeDC, codeDD, codeDE, codeDF, codeDG, codeDH, codeDI, codeDJ, codeDK, codeDL', 0
codeAQ: db '    dq codeDM, codeDN, codeDO, codeDP, codeDQ, codeDR, codeDS, codeDT, codeDU, codeDV', 0
codeAR: db '    dq codeDW, codeDX, codeDY, codeDZ, codeEA, codeEB, codeEC, codeED, codeEE, codeEF', 0
codeAS: db '    dq codeEG, codeEH, codeEI, codeEJ, codeEK, codeEL, codeEM', 0
codeAT: db '', 0
codeAU: db 'prefix0: db 99, 111, 100, 101, 0', 0
codeAV: db 'prefix1: db 58, 32, 100, 98, 32, 39, 0', 0
codeAW: db 'suffix: db 39, 44, 32, 48, 10, 0', 0
codeAX: db 'newline: db 10, 0', 0
codeAY: db 'filename: db 71, 114, 97, 99, 101, 95, 107, 105, 100, 46, 115, 0', 0
codeAZ: db 'str_w: db 119, 0', 0
codeBA: db '', 0
codeBB: db '; This file looks horrible', 0
codeBC: db '', 0
codeBD: db '_main:', 0
codeBE: db '    push rbp', 0
codeBF: db '    push rbx', 0
codeBG: db '    push rbx', 0
codeBH: db '', 0
codeBI: db '    mov rdi, filename', 0
codeBJ: db '    mov rsi, str_w', 0
codeBK: db '    call _fopen', 0
codeBL: db '    mov rbp, rax', 0
codeBM: db '', 0
codeBN: db '    mov rbx, 0', 0
codeBO: db 'loop0:', 0
codeBP: db '    mov rsi, code', 0
codeBQ: db '    mov rsi, [rsi + rbx * 8]', 0
codeBR: db '    cmp rbx, 5', 0
codeBS: db '    je next0', 0
codeBT: db '    mov rdi, rbp', 0
codeBU: db '    call _fprintf', 0
codeBV: db '    mov rsi, newline', 0
codeBW: db '    mov rdi, rbp', 0
codeBX: db '    call _fprintf', 0
codeBY: db '    inc rbx', 0
codeBZ: db '    jmp loop0', 0
codeCA: db 'next0:', 0
codeCB: db '', 0
codeCC: db '    mov rbx, 0', 0
codeCD: db 'loop1:', 0
codeCE: db '    mov rsi, code', 0
codeCF: db '    mov rsi, [rsi + rbx * 8]', 0
codeCG: db '    cmp rbx, 117', 0
codeCH: db '    je next1', 0
codeCI: db '', 0
codeCJ: db '    mov rsi, prefix0', 0
codeCK: db '    mov rdi, rbp', 0
codeCL: db '    call _fprintf', 0
codeCM: db '', 0
codeCN: db '    mov rsi, buff', 0
codeCO: db '    mov rdi, rbp', 0
codeCP: db '    call _fprintf', 0
codeCQ: db '    mov rsi, buff', 0
codeCR: db '', 0
codeCS: db '    inc byte [rsi + 1]', 0
codeCT: db '    cmp byte [rsi + 1], 91', 0
codeCU: db '    jne loop1_2', 0
codeCV: db '', 0
codeCW: db '    inc byte [rsi]', 0
codeCX: db '    mov byte [rsi + 1], 65', 0
codeCY: db '', 0
codeCZ: db 'loop1_2:', 0
codeDA: db '    mov rsi, prefix1', 0
codeDB: db '    mov rdi, rbp', 0
codeDC: db '    call _fprintf', 0
codeDD: db '', 0
codeDE: db '    mov rsi, code', 0
codeDF: db '    mov rsi, [rsi + rbx * 8]', 0
codeDG: db '    mov rdi, rbp', 0
codeDH: db '    call _fprintf', 0
codeDI: db '', 0
codeDJ: db '    mov rsi, suffix', 0
codeDK: db '    mov rdi, rbp', 0
codeDL: db '    call _fprintf', 0
codeDM: db '', 0
codeDN: db '    inc rbx', 0
codeDO: db '    jmp loop1', 0
codeDP: db 'next1:', 0
codeDQ: db '', 0
codeDR: db '    mov rbx, 5', 0
codeDS: db 'loop2:', 0
codeDT: db '    mov rsi, code', 0
codeDU: db '    mov rsi, [rsi + rbx * 8]', 0
codeDV: db '    cmp rbx, 117', 0
codeDW: db '    je next2', 0
codeDX: db '    mov rdi, rbp', 0
codeDY: db '    call _fprintf', 0
codeDZ: db '    mov rsi, newline', 0
codeEA: db '    mov rdi, rbp', 0
codeEB: db '    call _fprintf', 0
codeEC: db '    inc rbx', 0
codeED: db '    jmp loop2', 0
codeEE: db 'next2:', 0
codeEF: db '', 0
codeEG: db '    pop rbx', 0
codeEH: db '    pop rbx', 0
codeEI: db '    pop rbp', 0
codeEJ: db '    ret', 0
codeEK: db '', 0
codeEL: db '    section .data', 0
codeEM: db 'buff: db 65, 65, 0', 0

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
    dq codeDW, codeDX, codeDY, codeDZ, codeEA, codeEB, codeEC, codeED, codeEE, codeEF
    dq codeEG, codeEH, codeEI, codeEJ, codeEK, codeEL, codeEM

prefix0: db 99, 111, 100, 101, 0
prefix1: db 58, 32, 100, 98, 32, 39, 0
suffix: db 39, 44, 32, 48, 10, 0
newline: db 10, 0
filename: db 71, 114, 97, 99, 101, 95, 107, 105, 100, 46, 115, 0
str_w: db 119, 0

; This file looks horrible

_main:
    push rbp
    push rbx
    push rbx

    mov rdi, filename
    mov rsi, str_w
    call _fopen
    mov rbp, rax

    mov rbx, 0
loop0:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 5
    je next0
    mov rdi, rbp
    call _fprintf
    mov rsi, newline
    mov rdi, rbp
    call _fprintf
    inc rbx
    jmp loop0
next0:

    mov rbx, 0
loop1:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 117
    je next1

    mov rsi, prefix0
    mov rdi, rbp
    call _fprintf

    mov rsi, buff
    mov rdi, rbp
    call _fprintf
    mov rsi, buff

    inc byte [rsi + 1]
    cmp byte [rsi + 1], 91
    jne loop1_2

    inc byte [rsi]
    mov byte [rsi + 1], 65

loop1_2:
    mov rsi, prefix1
    mov rdi, rbp
    call _fprintf

    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    mov rdi, rbp
    call _fprintf

    mov rsi, suffix
    mov rdi, rbp
    call _fprintf

    inc rbx
    jmp loop1
next1:

    mov rbx, 5
loop2:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 117
    je next2
    mov rdi, rbp
    call _fprintf
    mov rsi, newline
    mov rdi, rbp
    call _fprintf
    inc rbx
    jmp loop2
next2:

    pop rbx
    pop rbx
    pop rbp
    ret

    section .data
buff: db 65, 65, 0
