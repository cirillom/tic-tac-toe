
draw_screen:
    call static_elements
    call draw_vals
    call print_score1
    call print_score2
    rts

draw_vals:
    load r0, c1
    loadn r1, #1
    cmp r0, r1
    ceq draw_x1
    loadn r1, #10
    cmp r0, r1
    ceq draw_o1
    loadn r1, #0
    cmp r0, r1
    ceq draw_1

    load r0, c2
    loadn r1, #1
    cmp r0, r1
    ceq draw_x2
    loadn r1, #10
    cmp r0, r1
    ceq draw_o2
    loadn r1, #0
    cmp r0, r1
    ceq draw_2

    load r0, c3
    loadn r1, #1
    cmp r0, r1
    ceq draw_x3
    loadn r1, #10
    cmp r0, r1
    ceq draw_o3
    loadn r1, #0
    cmp r0, r1
    ceq draw_3

    load r0, c4
    loadn r1, #1
    cmp r0, r1
    ceq draw_x4
    loadn r1, #10
    cmp r0, r1
    ceq draw_o4
    loadn r1, #0
    cmp r0, r1
    ceq draw_4

    load r0, c5
    loadn r1, #1
    cmp r0, r1
    ceq draw_x5
    loadn r1, #10
    cmp r0, r1
    ceq draw_o5
    loadn r1, #0
    cmp r0, r1
    ceq draw_5

    load r0, c6
    loadn r1, #1
    cmp r0, r1
    ceq draw_x6
    loadn r1, #10
    cmp r0, r1
    ceq draw_o6
    loadn r1, #0
    cmp r0, r1
    ceq draw_6

    load r0, c7
    loadn r1, #1
    cmp r0, r1
    ceq draw_x7
    loadn r1, #10
    cmp r0, r1
    ceq draw_o7
    loadn r1, #0
    cmp r0, r1
    ceq draw_7

    load r0, c8
    loadn r1, #1
    cmp r0, r1
    ceq draw_x8
    loadn r1, #10
    cmp r0, r1
    ceq draw_o8
    loadn r1, #0
    cmp r0, r1
    ceq draw_8

    load r0, c9
    loadn r1, #1
    cmp r0, r1
    ceq draw_x9
    loadn r1, #10
    cmp r0, r1
    ceq draw_o9
    loadn r1, #0
    cmp r0, r1
    ceq draw_9

    rts

draw_x1:
    loadn r0, #px
    loadn r1, $position(11,9)
    call start_print
    rts

draw_o1:
    loadn r0, #po
    loadn r1, $position(11,9)
    call start_print
    rts

draw_1:
    loadn r0, #one
    loadn r1, $position(11,9)
    call start_print
    rts


draw_x2:
    loadn r0, #px
    loadn r1, $position(19,9)
    call start_print
    rts

draw_o2:
    loadn r0, #po
    loadn r1, $position(19,9)
    call start_print
    rts

draw_2:
    loadn r0, #two
    loadn r1, $position(19,9)
    call start_print
    rts


draw_x3:
    loadn r0, #px
    loadn r1, $position(27,9)
    call start_print
    rts

draw_o3:
    loadn r0, #po
    loadn r1, $position(27,9)
    call start_print
    rts

draw_3:
    loadn r0, #three
    loadn r1, $position(27,9)
    call start_print
    rts


draw_x4:
    loadn r0, #px
    loadn r1, $position(11,16)
    call start_print
    rts

draw_o4:
    loadn r0, #po
    loadn r1, $position(11,16)
    call start_print
    rts

draw_4:
    loadn r0, #four
    loadn r1, $position(11,16)
    call start_print
    rts


draw_x5:
    loadn r0, #px
    loadn r1, $position(19,16)
    call start_print
    rts

draw_o5:
    loadn r0, #po
    loadn r1, $position(19,16)
    call start_print
    rts

draw_5:
    loadn r0, #five
    loadn r1, $position(19,16)
    call start_print
    rts


draw_x6:
    loadn r0, #px
    loadn r1, $position(27,16)
    call start_print
    rts

draw_o6:
    loadn r0, #po
    loadn r1, $position(27,16)
    call start_print
    rts

draw_6:
    loadn r0, #six
    loadn r1, $position(27,16)
    call start_print
    rts


draw_x7:
    loadn r0, #px
    loadn r1, $position(11,23)
    call start_print
    rts

draw_o7:
    loadn r0, #po
    loadn r1, $position(11,23)
    call start_print
    rts

draw_7:
    loadn r0, #seven
    loadn r1, $position(11,23)
    call start_print
    rts


draw_x8:
    loadn r0, #px
    loadn r1, $position(19,23)
    call start_print
    rts

draw_o8:
    loadn r0, #po
    loadn r1, $position(19,23)
    call start_print
    rts

draw_8:
    loadn r0, #eight
    loadn r1, $position(19,23)
    call start_print
    rts


draw_x9:
    loadn r0, #px
    loadn r1, $position(27,23)
    call start_print
    rts

draw_o9:
    loadn r0, #po
    loadn r1, $position(27,23)
    call start_print
    rts

draw_9:
    loadn r0, #nine
    loadn r1, $position(27,23)
    call start_print
    rts

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

print_score1:
    push r4
    push r5
    push r6
    push r3
        loadn r4, $position(6,6)
        load r3, p1points
        loop_print_score1:
            loadn r6, #10
            mod r5, r3, r6
            div r3, r3, r6
            loadn r6, #48
            add r5, r5, r6

            loadn r0, #2304
            add r5, r5, r0

            outchar r5, r4
            dec r4
            loadn r6, #0
            cmp r3, r6
            jne loop_print_score1
            loadn r6, $position(1,6)
        loop_print_zero_score1:
            cmp r4, r6
            jeq leave_print_score1
            loadn r5, #48

            loadn r0, #2304
            add r5, r5, r0

            outchar r5, r4
            dec r4
            jmp loop_print_zero_score1
leave_print_score1:
    pop r3
    pop r6
    pop r5
    pop r4
    rts

print_score2:
    push r4
    push r5
    push r6
    push r3
        loadn r4, $position(36,6)
        load r3, p2points
        loop_print_score2:
            loadn r6, #10
            mod r5, r3, r6
            div r3, r3, r6
            loadn r6, #48
            add r5, r5, r6

            loadn r0, #3072
            add r5, r5, r0

            outchar r5, r4
            dec r4
            loadn r6, #0
            cmp r3, r6
            jne loop_print_score2
            loadn r6, $position(31,6)
        loop_print_zero_score2:
            cmp r4, r6
            jeq leave_print_score2
            loadn r5, #48

            loadn r0, #3072
            add r5, r5, r0

            outchar r5, r4
            dec r4
            jmp loop_print_zero_score2
leave_print_score2:
    pop r3
    pop r6
    pop r5
    pop r4
    rts
