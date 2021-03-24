    global main
    extern fprintf
    extern sprintf
    extern strcmp
    extern fopen
    extern fclose
    extern execlp
    section .text

codeAA: db '    global main', 0
codeAB: db '    extern fprintf', 0
codeAC: db '    extern sprintf', 0
codeAD: db '    extern strcmp', 0
codeAE: db '    extern fopen', 0
codeAF: db '    extern fclose', 0
codeAG: db '    extern execlp', 0
codeAH: db '    section .text', 0
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
codeBI: db '    dq codeIW, codeIX, codeIY, codeIZ, codeJA, codeJB', 0
codeBJ: db '', 0
codeBK: db 'prefix0: db 99, 111, 100, 101, 0', 0
codeBL: db 'prefix1: db 58, 32, 100, 98, 32, 39, 0', 0
codeBM: db 'suffix: db 39, 44, 32, 48, 10, 0', 0
codeBN: db 'newline: db 10, 0', 0
codeBO: db 'dotslashsully: db 46, 47, 83, 117, 108, 108, 121, 0', 0
codeBP: db 'sullypercentddots: db 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 0', 0
codeBQ: db 'cmdcompileexec:', 0
codeBR: db '    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,', 0
codeBS: db '    db 102, 32, 101, 108, 102, 54, 52, 32, 45, 103, 32, 83,', 0
codeBT: db '    db 117, 108, 108, 121, 95, 37, 100, 46, 115, 32, 45, 111,', 0
codeBU: db '    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 111, 32,', 0
codeBV: db '    db 59, 32, 99, 108, 97, 110, 103, 32, 45, 87, 97, 108,', 0
codeBW: db '    db 108, 32, 45, 87, 101, 120, 116, 114, 97, 32, 45, 87,', 0
codeBX: db '    db 101, 114, 114, 111, 114, 32, 45, 110, 111, 45, 112,', 0
codeBY: db '    db 105, 101, 32, 83, 117, 108, 108, 121, 95, 37, 100, 46,', 0
codeBZ: db '    db 111, 32, 45, 111, 32, 83, 117, 108, 108, 121, 95, 37,', 0
codeCA: db '    db 100, 32, 59, 32, 46, 47, 83, 117, 108, 108, 121, 95,', 0
codeCB: db '    db 37, 100, 0', 0
codeCC: db 'cmdcompile:', 0
codeCD: db '    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,', 0
codeCE: db '    db 102, 32, 101, 108, 102, 54, 52, 32, 45, 103, 32, 83,', 0
codeCF: db '    db 117, 108, 108, 121, 95, 37, 100, 46, 115, 32, 45, 111,', 0
codeCG: db '    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 111, 32,', 0
codeCH: db '    db 59, 32, 99, 108, 97, 110, 103, 32, 45, 87, 97, 108, 108,', 0
codeCI: db '    db 32, 45, 87, 101, 120, 116, 114, 97, 32, 45, 87, 101, 114,', 0
codeCJ: db '    db 114, 111, 114, 32, 45, 110, 111, 45, 112, 105, 101, 32,', 0
codeCK: db '    db 83, 117, 108, 108, 121, 95, 37, 100, 46, 111, 32, 45, 111,', 0
codeCL: db '    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 0', 0
codeCM: db 'str_w: db 119, 0', 0
codeCN: db 'bashcmd: db 98, 97, 115, 104, 0', 0
codeCO: db 'dashc: db 45, 99, 0', 0
codeCP: db 'current_index_str:', 0
codeCQ: db '    db 99, 117, 114, 114, 101, 110, 116, 95, 105, 110, 100, 101, 120, 58, 32, 100, 113, 32, 37, 100, 10, 0', 0
codeCR: db '', 0
codeCS: db 'main:', 0
codeCT: db '    push rbp', 0
codeCU: db '    push rbx', 0
codeCV: db '    push rbx', 0
codeCW: db '', 0
codeCX: db '    cmp rdi, 1', 0
codeCY: db '    jne strt', 0
codeCZ: db '', 0
codeDA: db '    mov rdi, [rsi]', 0
codeDB: db '    mov rsi, dotslashsully', 0
codeDC: db '    call strcmp', 0
codeDD: db '    cmp rax, 0', 0
codeDE: db '    jne strt', 0
codeDF: db '', 0
codeDG: db '    mov rax, current_index', 0
codeDH: db '    inc qword [rax]', 0
codeDI: db '', 0
codeDJ: db 'strt:', 0
codeDK: db '    mov rdi, buffer', 0
codeDL: db '    mov rsi, sullypercentddots', 0
codeDM: db '    mov rdx, current_index', 0
codeDN: db '    mov rdx, [rdx]', 0
codeDO: db '    dec rdx', 0
codeDP: db '    call sprintf', 0
codeDQ: db '', 0
codeDR: db '    mov rdi, buffer', 0
codeDS: db '    mov rsi, str_w', 0
codeDT: db '    call fopen', 0
codeDU: db '    mov rbp, rax', 0
codeDV: db '', 0
codeDW: db '    mov rbx, 0', 0
codeDX: db 'loop0:', 0
codeDY: db '    mov rsi, code', 0
codeDZ: db '    mov rsi, [rsi + rbx * 8]', 0
codeEA: db '    cmp rbx, 9', 0
codeEB: db '    je next0', 0
codeEC: db '    mov rdi, rbp', 0
codeED: db '    call fprintf', 0
codeEE: db '    mov rsi, newline', 0
codeEF: db '    mov rdi, rbp', 0
codeEG: db '    call fprintf', 0
codeEH: db '    inc rbx', 0
codeEI: db '    jmp loop0', 0
codeEJ: db 'next0:', 0
codeEK: db '', 0
codeEL: db '    mov rbx, 0', 0
codeEM: db 'loop1:', 0
codeEN: db '    mov rsi, code', 0
codeEO: db '    mov rsi, [rsi + rbx * 8]', 0
codeEP: db '    cmp rbx, 236', 0
codeEQ: db '    je next1', 0
codeER: db '', 0
codeES: db '    mov rsi, prefix0', 0
codeET: db '    mov rdi, rbp', 0
codeEU: db '    call fprintf', 0
codeEV: db '', 0
codeEW: db '    mov rsi, buff', 0
codeEX: db '    mov rdi, rbp', 0
codeEY: db '    call fprintf', 0
codeEZ: db '    mov rsi, buff', 0
codeFA: db '', 0
codeFB: db '    inc byte [rsi + 1]', 0
codeFC: db '    cmp byte [rsi + 1], 91', 0
codeFD: db '    jne loop1_2', 0
codeFE: db '', 0
codeFF: db '    inc byte [rsi]', 0
codeFG: db '    mov byte [rsi + 1], 65', 0
codeFH: db '', 0
codeFI: db 'loop1_2:', 0
codeFJ: db '    mov rsi, prefix1', 0
codeFK: db '    mov rdi, rbp', 0
codeFL: db '    call fprintf', 0
codeFM: db '', 0
codeFN: db '    mov rsi, code', 0
codeFO: db '    mov rsi, [rsi + rbx * 8]', 0
codeFP: db '    mov rdi, rbp', 0
codeFQ: db '    call fprintf', 0
codeFR: db '', 0
codeFS: db '    mov rsi, suffix', 0
codeFT: db '    mov rdi, rbp', 0
codeFU: db '    call fprintf', 0
codeFV: db '', 0
codeFW: db '    inc rbx', 0
codeFX: db '    jmp loop1', 0
codeFY: db 'next1:', 0
codeFZ: db '', 0
codeGA: db '    mov rbx, 9', 0
codeGB: db 'loop2:', 0
codeGC: db '    mov rsi, code', 0
codeGD: db '    mov rsi, [rsi + rbx * 8]', 0
codeGE: db '    cmp rbx, 236', 0
codeGF: db '    je next2', 0
codeGG: db '    mov rdi, rbp', 0
codeGH: db '    call fprintf', 0
codeGI: db '    mov rsi, newline', 0
codeGJ: db '    mov rdi, rbp', 0
codeGK: db '    call fprintf', 0
codeGL: db '    inc rbx', 0
codeGM: db '    jmp loop2', 0
codeGN: db 'next2:', 0
codeGO: db '', 0
codeGP: db '    mov rdi, rbp', 0
codeGQ: db '    mov rsi, current_index_str', 0
codeGR: db '    mov rdx, current_index', 0
codeGS: db '    mov rdx, [rdx]', 0
codeGT: db '    dec rdx', 0
codeGU: db '    call fprintf', 0
codeGV: db '', 0
codeGW: db '    mov rdi, rbp', 0
codeGX: db '    call fclose', 0
codeGY: db '', 0
codeGZ: db '    mov rbp, current_index', 0
codeHA: db '    mov rbp, [rbp]', 0
codeHB: db '    cmp rbp, 1', 0
codeHC: db '    jle branch2', 0
codeHD: db '', 0
codeHE: db '    mov rdi, buffer', 0
codeHF: db '    mov rsi, cmdcompileexec', 0
codeHG: db '    mov rdx, current_index', 0
codeHH: db '    mov rdx, [rdx]', 0
codeHI: db '    dec rdx', 0
codeHJ: db '    mov rcx, rdx', 0
codeHK: db '    mov r8, rdx', 0
codeHL: db '    mov r9, rdx', 0
codeHM: db '    sub rsp, 8', 0
codeHN: db '    push rdx', 0
codeHO: db '    call sprintf', 0
codeHP: db '    jmp end', 0
codeHQ: db '', 0
codeHR: db 'branch2:', 0
codeHS: db '    cmp rbp, 1', 0
codeHT: db '    jne end', 0
codeHU: db '', 0
codeHV: db '    mov rdi, buffer', 0
codeHW: db '    mov rsi, cmdcompile', 0
codeHX: db '    mov rdx, current_index', 0
codeHY: db '    mov rdx, [rdx]', 0
codeHZ: db '    dec rdx', 0
codeIA: db '    mov rcx, rdx', 0
codeIB: db '    mov r8, rdx', 0
codeIC: db '    mov r9, rdx', 0
codeID: db '    call sprintf', 0
codeIE: db '', 0
codeIF: db 'end:', 0
codeIG: db '', 0
codeIH: db '    mov rdi, bashcmd', 0
codeII: db '    mov rsi, rdi', 0
codeIJ: db '    mov rdx, dashc', 0
codeIK: db '    mov rcx, buffer', 0
codeIL: db '    mov r8, 0', 0
codeIM: db '', 0
codeIN: db '    call execlp', 0
codeIO: db '', 0
codeIP: db '    mov rax, 0', 0
codeIQ: db '    pop rbx', 0
codeIR: db '    pop rbx', 0
codeIS: db '    pop rbp', 0
codeIT: db '    ret', 0
codeIU: db '', 0
codeIV: db '    section .data', 0
codeIW: db 'buff: db 65, 65, 0', 0
codeIX: db 'buffer:', 0
codeIY: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0
codeIZ: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0
codeJA: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0
codeJB: db '    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,', 0

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
    dq codeIW, codeIX, codeIY, codeIZ, codeJA, codeJB

prefix0: db 99, 111, 100, 101, 0
prefix1: db 58, 32, 100, 98, 32, 39, 0
suffix: db 39, 44, 32, 48, 10, 0
newline: db 10, 0
dotslashsully: db 46, 47, 83, 117, 108, 108, 121, 0
sullypercentddots: db 83, 117, 108, 108, 121, 95, 37, 100, 46, 115, 0
cmdcompileexec:
    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,
    db 102, 32, 101, 108, 102, 54, 52, 32, 45, 103, 32, 83,
    db 117, 108, 108, 121, 95, 37, 100, 46, 115, 32, 45, 111,
    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 111, 32,
    db 59, 32, 99, 108, 97, 110, 103, 32, 45, 87, 97, 108,
    db 108, 32, 45, 87, 101, 120, 116, 114, 97, 32, 45, 87,
    db 101, 114, 114, 111, 114, 32, 45, 110, 111, 45, 112,
    db 105, 101, 32, 83, 117, 108, 108, 121, 95, 37, 100, 46,
    db 111, 32, 45, 111, 32, 83, 117, 108, 108, 121, 95, 37,
    db 100, 32, 59, 32, 46, 47, 83, 117, 108, 108, 121, 95,
    db 37, 100, 0
cmdcompile:
    db 110, 97, 115, 109, 32, 45, 87, 97, 108, 108, 32, 45,
    db 102, 32, 101, 108, 102, 54, 52, 32, 45, 103, 32, 83,
    db 117, 108, 108, 121, 95, 37, 100, 46, 115, 32, 45, 111,
    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 46, 111, 32,
    db 59, 32, 99, 108, 97, 110, 103, 32, 45, 87, 97, 108, 108,
    db 32, 45, 87, 101, 120, 116, 114, 97, 32, 45, 87, 101, 114,
    db 114, 111, 114, 32, 45, 110, 111, 45, 112, 105, 101, 32,
    db 83, 117, 108, 108, 121, 95, 37, 100, 46, 111, 32, 45, 111,
    db 32, 83, 117, 108, 108, 121, 95, 37, 100, 0
str_w: db 119, 0
bashcmd: db 98, 97, 115, 104, 0
dashc: db 45, 99, 0
current_index_str:
    db 99, 117, 114, 114, 101, 110, 116, 95, 105, 110, 100, 101, 120, 58, 32, 100, 113, 32, 37, 100, 10, 0

main:
    push rbp
    push rbx
    push rbx

    cmp rdi, 1
    jne strt

    mov rdi, [rsi]
    mov rsi, dotslashsully
    call strcmp
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
    call sprintf

    mov rdi, buffer
    mov rsi, str_w
    call fopen
    mov rbp, rax

    mov rbx, 0
loop0:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 9
    je next0
    mov rdi, rbp
    call fprintf
    mov rsi, newline
    mov rdi, rbp
    call fprintf
    inc rbx
    jmp loop0
next0:

    mov rbx, 0
loop1:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 236
    je next1

    mov rsi, prefix0
    mov rdi, rbp
    call fprintf

    mov rsi, buff
    mov rdi, rbp
    call fprintf
    mov rsi, buff

    inc byte [rsi + 1]
    cmp byte [rsi + 1], 91
    jne loop1_2

    inc byte [rsi]
    mov byte [rsi + 1], 65

loop1_2:
    mov rsi, prefix1
    mov rdi, rbp
    call fprintf

    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    mov rdi, rbp
    call fprintf

    mov rsi, suffix
    mov rdi, rbp
    call fprintf

    inc rbx
    jmp loop1
next1:

    mov rbx, 9
loop2:
    mov rsi, code
    mov rsi, [rsi + rbx * 8]
    cmp rbx, 236
    je next2
    mov rdi, rbp
    call fprintf
    mov rsi, newline
    mov rdi, rbp
    call fprintf
    inc rbx
    jmp loop2
next2:

    mov rdi, rbp
    mov rsi, current_index_str
    mov rdx, current_index
    mov rdx, [rdx]
    dec rdx
    call fprintf

    mov rdi, rbp
    call fclose

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
    call sprintf
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
    call sprintf

end:

    mov rdi, bashcmd
    mov rsi, rdi
    mov rdx, dashc
    mov rcx, buffer
    mov r8, 0

    call execlp

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
