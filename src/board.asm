
check_tie:
    loadn r0, #0
    loadn r1, #c1
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c2
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c3
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c4
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c5
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c6
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c7
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c8
    cmp r0, r1
    jeq can_continue_game
    loadn r1, #c9
    cmp r0, r1
    jeq can_continue_game
    jmp end_game

check_win:
    loadn r0, #c1
    loadn r1, #c2
    add r0, r0, r1
    loadn r1, #c3
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c4
    loadn r1, #c5
    add r0, r0, r1
    loadn r1, #c6
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c7
    loadn r1, #c8
    add r0, r0, r1
    loadn r1, #c9
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c1
    loadn r1, #c4
    add r0, r0, r1
    loadn r1, #c7
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c2
    loadn r1, #c5
    add r0, r0, r1
    loadn r1, #c8
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c3
    loadn r1, #c6
    add r0, r0, r1
    loadn r1, #c9
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c1
    loadn r1, #c5
    add r0, r0, r1
    loadn r1, #c9
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        loadn r0, #c3
    loadn r1, #c5
    add r0, r0, r1
    loadn r1, #c7
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win

    rts

make_play:
    call inp ;inp em r0
    loadn r1, #49
    cmp r0, r1
    jeq casa1
    loadn r1, #50
    cmp r0, r1
    jeq casa2
    loadn r1, #51
    cmp r0, r1
    jeq casa3
    loadn r1, #52
    cmp r0, r1
    jeq casa4
    loadn r1, #53
    cmp r0, r1
    jeq casa5
    loadn r1, #54
    cmp r0, r1
    jeq casa6
    loadn r1, #55
    cmp r0, r1
    jeq casa7
    loadn r1, #56
    cmp r0, r1
    jeq casa8
    loadn r1, #57
    cmp r0, r1
    jeq casa9
    loadn r1, #118
    cmp r0, r1
    jeq initialize_game

casa1:
    loadn r0, #c1
    load r1, #0
    cmp r0, r1
    jne make_play
    store c1, r7
    rts

casa2:
    loadn r0, #c2
    load r1, #0
    cmp r0, r1
    jne make_play
    store c2, r7
    rts

casa3:
    loadn r0, #c3
    load r1, #0
    cmp r0, r1
    jne make_play
    store c3, r7
    rts

casa4:
    loadn r0, #c4
    load r1, #0
    cmp r0, r1
    jne make_play
    store c4, r7
    rts

casa5:
    loadn r0, #c5
    load r1, #0
    cmp r0, r1
    jne make_play
    store c5, r7
    rts

casa6:
    loadn r0, #c6
    load r1, #0
    cmp r0, r1
    jne make_play
    store c6, r7
    rts

casa7:
    loadn r0, #c7
    load r1, #0
    cmp r0, r1
    jne make_play
    store c7, r7
    rts

casa8:
    loadn r0, #c8
    load r1, #0
    cmp r0, r1
    jne make_play
    store c8, r7
    rts

casa9:
    loadn r0, #c9
    load r1, #0
    cmp r0, r1
    jne make_play
    store c9, r7
    rts
