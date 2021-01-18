    global _main
    extern _fprintf
    extern _sprintf
    extern _strcmp
    extern _fopen
    extern _fclose
    extern _execlp
    section __TEXT,__text

codeAA: db '    global _main', 0
codeAB: db '    extern _fprintf', 0
codeAC: db '    extern _sprintf', 0
codeAD: db '    extern _strcmp', 0
codeAE: db '    extern _fopen', 0
codeAF: db '    extern _fclose', 0
codeAG: db '    extern _execlp', 0
codeAH: db '    section __TEXT,__text', 0
codeAI: db '', 0
codeAJ: db '', 0
codeAK: db 'code:', 0
codeAL: db '    dq codeAA, codeAB, codeAC, codeAD, codeAE, codeAF, codeAG, codeAH, codeAI, codeAJ', 0
codeAM: db '    dq codeAK, codeAL, codeAM, codeAN, codeAO, codeAP, codeAQ, codeAR, codeAS, codeAT', 0
codeAN: db '    dq codeAU, codeAV, codeAW, codeAX, codeAY, codeAZ, codeBA, codeBB, codeBC, codeBD', 0
codeAO: db '    dq codeBE, codeBF, codeBG, codeBH, codeBI, codeBJ, codeBK, codeBL, codeBM, codeBN', 0
codeAP: db '    dq codeBO, codeBP, codeBQ, codeBR, codeBS, codeBT, codeBU, codeBV, codeBW, codeBX', 0
codeAQ: db '    dq codeBY, codeBZ, codeCA, codeCB, codeCC, codeCD, codeCE, codeCF, codeCG, codeCH', 0
codeAR: db '    dq codeCI, codeCJ, codeCK, codeCL, codeCM, codeCN, codeCO, codeCP, codeCQ, codeCR', 0
codeAS: db '    dq codeCS, codeCT, codeCU, codeCV, codeCW, codeCX, codeCY, codeCZ, codeDA, codeDB', 0
codeAT: db '    dq codeDC, codeDD, codeDE, codeDF, codeDG, codeDH, codeDI, codeDJ, codeDK, codeDL', 0
codeAU: db '    dq codeDM, codeDN, codeDO, codeDP, codeDQ, codeDR, codeDS, codeDT, codeDU, codeDV', 0
codeAV: db '    dq codeDW, codeDX, codeDY, codeDZ, codeEA, codeEB, codeEC, codeED, codeEE, codeEF', 0
codeAW: db '    dq codeEG, codeEH, codeEI, codeEJ, codeEK, codeEL, codeEM, codeEN, codeEO, codeEP', 0
codeAX: db '    dq codeEQ, codeER, codeES, codeET, codeEU, codeEV, codeEW, codeEX, codeEY, codeEZ', 0
codeAY: db '    dq codeFA, codeFB, codeFC, codeFD, codeFE, codeFF, codeFG, codeFH, codeFI, codeFJ', 0
codeAZ: db '    dq codeFK, codeFL, codeFM, codeFN, codeFO, codeFP, codeFQ, codeFR, codeFS, codeFT', 0
codeBA: db '    dq codeFU, codeFV, codeFW, codeFX, codeFY, codeFZ, codeGA, codeGB, codeGC, codeGD', 0
codeBB: db '    dq codeGE, codeGF, codeGG, codeGH, codeGI, codeGJ, codeGK, codeGL, codeGM, codeGN', 0
codeBC: db '    dq codeGO, codeGP, codeGQ, codeGR, codeGS, codeGT, codeGU, codeGV, codeGW, codeGX', 0
codeBD: db '    dq codeGY, codeGZ, codeHA, codeHB, codeHC, codeHD, codeHE, codeHF, codeHG, codeHH', 0
codeBE: db '    dq codeHI, codeHJ, codeHK, codeHL, codeHM, codeHN, codeHO, codeHP, codeHQ, codeHR', 0
codeBF: db '    dq codeHS, codeHT, codeHU, codeHV, codeHW, codeHX, codeHY, codeHZ, codeIA, codeIB', 0
codeBG: db '    dq codeIC, codeID, codeIE, codeIF, codeIG, codeIH, codeII, codeIJ, codeIK, codeIL', 0
codeBH: db '    dq codeIM, codeIN, codeIO, codeIP, codeIQ, codeIR, codeIS, codeIT, codeIU, codeIV', 0
codeBI: db '    dq codeIW, codeIX, codeIY, codeIZ, codeJA', 0
codeBJ: db '', 0
codeBK: db 'prefix0: db 99, 111, 100, 101, 0', 0
codeBL: db 'prefix1: db 58, 32, 100, 98, 32, 39, 0', 0
codeBM: db 'suffix: db 39, 44, 32, 48, 10, 0', 0
codeBN: db 'newline: db 10, 0', 0
codeBO: db 'dotslashsully: db 46, 47, 83, 117, 108, 108, 121, 0', 0
codeBP: db 'sullypercentddots: db 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 0', 0
codeBQ: db 'cmdcompileexec:', 0
codeBR: db '    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,', 0
codeBS: db '    db 102, 32, 109, 97, 99, 104, 111, 54, 52, 32, 45, 103,', 0
codeBT: db '    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 32,', 0
codeBU: db '    db 45, 111, 32, 83, 117, 108, 108, 121, 95, 37, 100, 46,', 0
codeBV: db '    db 111, 32, 59, 32, 99, 108, 97, 110, 103, 32, 45, 87,', 0
codeBW: db '    db 97, 108, 108, 32, 45, 87, 101, 120, 116, 114, 97, 32,', 0
codeBX: db '    db 45, 87, 101, 114, 114, 111, 114, 32, 83, 117, 108,', 0
codeBY: db '    db 108, 121, 95, 37, 100, 46, 111, 32, 45, 111, 32, 83,', 0
codeBZ: db '    db 117, 108, 108, 121, 95, 37, 100, 32, 59, 32, 46, 47,', 0
codeCA: db '    db 83, 117, 108, 108, 121, 95, 37, 100, 0', 0
codeCB: db 'cmdcompile:', 0
codeCC: db '    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,', 0
codeCD: db '    db 102, 32, 109, 97, 99, 104, 111, 54, 52, 32, 45, 103,', 0
codeCE: db '    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 32,', 0
codeCF: db '    db 45, 111, 32, 83, 117, 108, 108, 121, 95, 37, 100, 46,', 0
codeCG: db '    db 111, 32, 59, 32, 99, 108, 97, 110, 103, 32, 45, 87,', 0
codeCH: db '    db 97, 108, 108, 32, 45, 87, 101, 120, 116, 114, 97, 32,', 0
codeCI: db '    db 45, 87, 101, 114, 114, 111, 114, 32, 83, 117, 108,', 0
codeCJ: db '    db 108, 121, 95, 37, 100, 46, 111, 32, 45, 111, 32, 83,', 0
codeCK: db '    db 117, 108, 108, 121, 95, 37, 100, 0', 0
codeCL: db 'str_w: db 119, 0', 0
codeCM: db 'bashcmd: db 98, 97, 115, 104, 0', 0
codeCN: db 'dashc: db 45, 99, 0', 0
codeCO: db 'current_index_str:', 0
codeCP: db '    db 99, 117, 114, 114, 101, 110, 116, 95, 105, 110, 100, 101, 120, 58, 32, 100, 113, 32, 37, 100, 10, 0', 0
codeCQ: db '', 0
codeCR: db '_main:', 0
codeCS: db '    push rbp', 0
codeCT: db '    push rbx', 0
codeCU: db '    push rbx', 0
codeCV: db '', 0
codeCW: db '    cmp rdi, 1', 0
codeCX: db '    jne strt', 0
codeCY: db '', 0
codeCZ: db '    mov rdi, [rsi]', 0
codeDA: db '    mov rsi, dotslashsully', 0
codeDB: db '    call _strcmp', 0
codeDC: db '    cmp rax, 0', 0
codeDD: db '    jne strt', 0
codeDE: db '', 0
codeDF: db '    mov rax, current_index', 0
codeDG: db '    inc qword [rax]', 0
codeDH: db '', 0
codeDI: db 'strt:', 0
codeDJ: db '    mov rdi, buffer', 0
codeDK: db '    mov rsi, sullypercentddots', 0
codeDL: db '    mov rdx, current_index', 0
codeDM: db '    mov rdx, [rdx]', 0
codeDN: db '    dec rdx', 0
codeDO: db '    call _sprintf', 0
codeDP: db '', 0
codeDQ: db '    mov rdi, buffer', 0
codeDR: db '    mov rsi, str_w', 0
codeDS: db '    call _fopen', 0
codeDT: db '    mov rbp, rax', 0
codeDU: db '', 0
codeDV: db '    mov rbx, 0', 0
codeDW: db 'loop0:', 0
codeDX: db '    mov rsi, code', 0
codeDY: db '    mov rsi, [rsi + rbx * 8]', 0
codeDZ: db '    cmp rbx, 9', 0
codeEA: db '    je next0', 0
codeEB: db '    mov rdi, rbp', 0
codeEC: db '    call _fprintf', 0
codeED: db '    mov rsi, newline', 0
codeEE: db '    mov rdi, rbp', 0
codeEF: db '    call _fprintf', 0
codeEG: db '    inc rbx', 0
codeEH: db '    jmp loop0', 0
codeEI: db 'next0:', 0
codeEJ: db '', 0
codeEK: db '    mov rbx, 0', 0
codeEL: db 'loop1:', 0
codeEM: db '    mov rsi, code', 0
codeEN: db '    mov rsi, [rsi + rbx * 8]', 0
codeEO: db '    cmp rbx, 235', 0
codeEP: db '    je next1', 0
codeEQ: db '', 0
codeER: db '    mov rsi, prefix0', 0
codeES: db '    mov rdi, rbp', 0
codeET: db '    call _fprintf', 0
codeEU: db '', 0
codeEV: db '    mov rsi, buff', 0
codeEW: db '    mov rdi, rbp', 0
codeEX: db '    call _fprintf', 0
codeEY: db '    mov rsi, buff', 0
codeEZ: db '', 0
codeFA: db '    inc byte [rsi + 1]', 0
codeFB: db '    cmp byte [rsi + 1], 91', 0
codeFC: db '    jne loop1_2', 0
codeFD: db '', 0
codeFE: db '    inc byte [rsi]', 0
codeFF: db '    mov byte [rsi + 1], 65', 0
codeFG: db '', 0
codeFH: db 'loop1_2:', 0
codeFI: db '    mov rsi, prefix1', 0
codeFJ: db '    mov rdi, rbp', 0
codeFK: db '    call _fprintf', 0
codeFL: db '', 0
codeFM: db '    mov rsi, code', 0
codeFN: db '    mov rsi, [rsi + rbx * 8]', 0
codeFO: db '    mov rdi, rbp', 0
codeFP: db '    call _fprintf', 0
codeFQ: db '', 0
codeFR: db '    mov rsi, suffix', 0
codeFS: db '    mov rdi, rbp', 0
codeFT: db '    call _fprintf', 0
codeFU: db '', 0
codeFV: db '    inc rbx', 0
codeFW: db '    jmp loop1', 0
codeFX: db 'next1:', 0
codeFY: db '', 0
codeFZ: db '    mov rbx, 9', 0
codeGA: db 'loop2:', 0
codeGB: db '    mov rsi, code', 0
codeGC: db '    mov rsi, [rsi + rbx * 8]', 0
codeGD: db '    cmp rbx, 235', 0
codeGE: db '    je next2', 0
codeGF: db '    mov rdi, rbp', 0
codeGG: db '    call _fprintf', 0
codeGH: db '    mov rsi, newline', 0
codeGI: db '    mov rdi, rbp', 0
codeGJ: db '    call _fprintf', 0
codeGK: db '    inc rbx', 0
codeGL: db '    jmp loop2', 0
codeGM: db 'next2:', 0
codeGN: db '', 0
codeGO: db '    mov rdi, rbp', 0
codeGP: db '    mov rsi, current_index_str', 0
codeGQ: db '    mov rdx, current_index', 0
codeGR: db '    mov rdx, [rdx]', 0
codeGS: db '    dec rdx', 0
codeGT: db '    call _fprintf', 0
codeGU: db '', 0
codeGV: db '    mov rdi, rbp', 0
codeGW: db '    call _fclose', 0
codeGX: db '', 0
codeGY: db '    mov rbp, current_index', 0
codeGZ: db '    mov rbp, [rbp]', 0
codeHA: db '    cmp rbp, 1', 0
codeHB: db '    jle branch2', 0
codeHC: db '', 0
codeHD: db '    mov rdi, buffer', 0
codeHE: db '    mov rsi, cmdcompileexec', 0
codeHF: db '    mov rdx, current_index', 0
codeHG: db '    mov rdx, [rdx]', 0
codeHH: db '    dec rdx', 0
codeHI: db '    mov rcx, rdx', 0
codeHJ: db '    mov r8, rdx', 0
codeHK: db '    mov r9, rdx', 0
codeHL: db '    sub rsp, 8', 0
codeHM: db '    push rdx', 0
codeHN: db '    call _sprintf', 0
codeHO: db '    jmp end', 0
codeHP: db '', 0
codeHQ: db 'branch2:', 0
codeHR: db '    cmp rbp, 1', 0
codeHS: db '    jne end', 0
codeHT: db '', 0
codeHU: db '    mov rdi, buffer', 0
codeHV: db '    mov rsi, cmdcompile', 0
codeHW: db '    mov rdx, current_index', 0
codeHX: db '    mov rdx, [rdx]', 0
codeHY: db '    dec rdx', 0
codeHZ: db '    mov rcx, rdx', 0
codeIA: db '    mov r8, rdx', 0
codeIB: db '    mov r9, rdx', 0
codeIC: db '    call _sprintf', 0
codeID: db '', 0
codeIE: db 'end:', 0
codeIF: db '', 0
codeIG: db '    mov rdi, bashcmd', 0
codeIH: db '    mov rsi, rdi', 0
codeII: db '    mov rdx, dashc', 0
codeIJ: db '    mov rcx, buffer', 0
codeIK: db '    mov r8, 0', 0
codeIL: db '', 0
codeIM: db '    call _execlp', 0
codeIN: db '', 0
codeIO: db '    mov rax, 0', 0
codeIP: db '    pop rbx', 0
codeIQ: db '    pop rbx', 0
codeIR: db '    pop rbp', 0
codeIS: db '    ret', 0
codeIT: db '', 0
codeIU: db '    section .data', 0
codeIV: db 'buff: db 65, 65, 0', 0
codeIW: db 'buffer:', 0
codeIX: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0
codeIY: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0
codeIZ: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0
codeJA: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0

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
    dq codeEG, codeEH, codeEI, codeEJ, codeEK, codeEL, codeEM, codeEN, codeEO, codeEP
    dq codeEQ, codeER, codeES, codeET, codeEU, codeEV, codeEW, codeEX, codeEY, codeEZ
    dq codeFA, codeFB, codeFC, codeFD, codeFE, codeFF, codeFG, codeFH, codeFI, codeFJ
    dq codeFK, codeFL, codeFM, codeFN, codeFO, codeFP, codeFQ, codeFR, codeFS, codeFT
    dq codeFU, codeFV, codeFW, codeFX, codeFY, codeFZ, codeGA, codeGB, codeGC, codeGD
    dq codeGE, codeGF, codeGG, codeGH, codeGI, codeGJ, codeGK, codeGL, codeGM, codeGN
    dq codeGO, codeGP, codeGQ, codeGR, codeGS, codeGT, codeGU, codeGV, codeGW, codeGX
    dq codeGY, codeGZ, codeHA, codeHB, codeHC, codeHD, codeHE, codeHF, codeHG, codeHH
    dq codeHI, codeHJ, codeHK, codeHL, codeHM, codeHN, codeHO, codeHP, codeHQ, codeHR
    dq codeHS, codeHT, codeHU, codeHV, codeHW, codeHX, codeHY, codeHZ, codeIA, codeIB
    dq codeIC, codeID, codeIE, codeIF, codeIG, codeIH, codeII, codeIJ, codeIK, codeIL
    dq codeIM, codeIN, codeIO, codeIP, codeIQ, codeIR, codeIS, codeIT, codeIU, codeIV
    dq codeIW, codeIX, codeIY, codeIZ, codeJA

prefix0: db 99, 111, 100, 101, 0
prefix1: db 58, 32, 100, 98, 32, 39, 0
suffix: db 39, 44, 32, 48, 10, 0
newline: db 10, 0
dotslashsully: db 46, 47, 83, 117, 108, 108, 121, 0
sullypercentddots: db 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 0
cmdcompileexec:
    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,
    db 102, 32, 109, 97, 99, 104, 111, 54, 52, 32, 45, 103,
    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 32,
    db 45, 111, 32, 83, 117, 108, 108, 121, 95, 37, 100, 46,
    db 111, 32, 59, 32, 99, 108, 97, 110, 103, 32, 45, 87,
    db 97, 108, 108, 32, 45, 87, 101, 120, 116, 114, 97, 32,
    db 45, 87, 101, 114, 114, 111, 114, 32, 83, 117, 108,
    db 108, 121, 95, 37, 100, 46, 111, 32, 45, 111, 32, 83,
    db 117, 108, 108, 121, 95, 37, 100, 32, 59, 32, 46, 47,
    db 83, 117, 108, 108, 121, 95, 37, 100, 0
cmdcompile:
    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,
    db 102, 32, 109, 97, 99, 104, 111, 54, 52, 32, 45, 103,
    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 32,
    db 45, 111, 32, 83, 117, 108, 108, 121, 95, 37, 100, 46,
    db 111, 32, 59, 32, 99, 108, 97, 110, 103, 32, 45, 87,
    db 97, 108, 108, 32, 45, 87, 101, 120, 116, 114, 97, 32,
    db 45, 87, 101, 114, 114, 111, 114, 32, 83, 117, 108,
    db 108, 121, 95, 37, 100, 46, 111, 32, 45, 111, 32, 83,
    db 117, 108, 108, 121, 95, 37, 100, 0
str_w: db 119, 0
bashcmd: db 98, 97, 115, 104, 0
dashc: db 45, 99, 0
current_index_str:
    db 99, 117, 114, 114, 101, 110, 116, 95, 105, 110, 100, 101, 120, 58, 32, 100, 113, 32, 37, 100, 10, 0

_main:
    push rbp
    push rbx
    push rbx

    cmp rdi, 1
    jne strt

    mov rdi, [rsi]
    mov rsi, dotslashsully
    call _strcmp
    cmp rax, 0
    jne strt

    mov rax, current_index
    inc qword [rax]

strt:
    mov rdi, buffer
    mov rsi, sullypercentddots
    mov rdx, current_index
    mov rdx, [rdx]
    dec rdx
    call _sprintf

    mov rdi, buffer
    mov rsi, str_w
    call _fopen
    mov rbp, rax

    mov rbx, 0
loop0:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 9
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
    cmp rbx, 235
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

    mov rbx, 9
loop2:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 235
    je next2
    mov rdi, rbp
    call _fprintf
    mov rsi, newline
    mov rdi, rbp
    call _fprintf
    inc rbx
    jmp loop2
next2:

    mov rdi, rbp
    mov rsi, current_index_str
    mov rdx, current_index
    mov rdx, [rdx]
    dec rdx
    call _fprintf

    mov rdi, rbp
    call _fclose

    mov rbp, current_index
    mov rbp, [rbp]
    cmp rbp, 1
    jle branch2

    mov rdi, buffer
    mov rsi, cmdcompileexec
    mov rdx, current_index
    mov rdx, [rdx]
    dec rdx
    mov rcx, rdx
    mov r8, rdx
    mov r9, rdx
    sub rsp, 8
    push rdx
    call _sprintf
    jmp end

branch2:
    cmp rbp, 1
    jne end

    mov rdi, buffer
    mov rsi, cmdcompile
    mov rdx, current_index
    mov rdx, [rdx]
    dec rdx
    mov rcx, rdx
    mov r8, rdx
    mov r9, rdx
    call _sprintf

end:

    mov rdi, bashcmd
    mov rsi, rdi
    mov rdx, dashc
    mov rcx, buffer
    mov r8, 0

    call _execlp

    mov rax, 0
    pop rbx
    pop rbx
    pop rbp
    ret

    section .data
buff: db 65, 65, 0
buffer:
    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
current_index: dq 5
