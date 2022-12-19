
check_tie:
    loadn r0, #0
    load r1, c1
    cmp r0, r1
    jeq can_continue_game
    load r1, c2
    cmp r0, r1
    jeq can_continue_game
    load r1, c3
    cmp r0, r1
    jeq can_continue_game
    load r1, c4
    cmp r0, r1
    jeq can_continue_game
    load r1, c5
    cmp r0, r1
    jeq can_continue_game
    load r1, c6
    cmp r0, r1
    jeq can_continue_game
    load r1, c7
    cmp r0, r1
    jeq can_continue_game
    load r1, c8
    cmp r0, r1
    jeq can_continue_game
    load r1, c9
    cmp r0, r1
    jeq can_continue_game
    jmp end_game

check_win:
    load r0, c1
    load r1, c2
    add r0, r0, r1
    load r1, c3
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c4
    load r1, c5
    add r0, r0, r1
    load r1, c6
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c7
    load r1, c8
    add r0, r0, r1
    load r1, c9
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c1
    load r1, c4
    add r0, r0, r1
    load r1, c7
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c2
    load r1, c5
    add r0, r0, r1
    load r1, c8
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c3
    load r1, c6
    add r0, r0, r1
    load r1, c9
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c1
    load r1, c5
    add r0, r0, r1
    load r1, c9
    add r0, r0, r1
    loadn r1, #3
    cmp r0, r1
    jeq p1_win
    loadn r1, #30
    cmp r0, r1
    jeq p2_win
        load r0, c3
    load r1, c5
    add r0, r0, r1
    load r1, c7
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
