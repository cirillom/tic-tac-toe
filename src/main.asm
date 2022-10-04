
main:
    loadn r0, #teto
    loadn r1, $position(eval((40-int(defs["teto_len"]))//2),0)
    call start_print
    halt

start_print:
    loadi r2, r0
    loadn r3, #'\0'
    cmp r2, r3
    jeq end_print
    loadn r3, #'\n'
    cmp r2, r3
    jeq before_jmp_print
    outchar r2, r1
    inc r1
    ;r2 is the next character
    ;r3 is a temporary value

before_jmp_print:
    inc r0
    jmp start_print

end_print:
    rts
