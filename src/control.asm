
c1: var #1 static c1, #0
c2: var #1 static c2, #0
c3: var #1 static c3, #0
c4: var #1 static c4, #0
c5: var #1 static c5, #0
c6: var #1 static c6, #0
c7: var #1 static c7, #0
c8: var #1 static c8, #0
c9: var #1 static c9, #0

p1points: var #1 static p1points, #0
p2points: var #1 static p2points, #0

initialize_game:
    loadn r1, #0
    store c1, r1
    store c2, r1
    store c3, r1
    store c4, r1
    store c5, r1
    store c6, r1
    store c7, r1
    store c8, r1
    store c9, r1
    rts

change_player:
    loadn r0, #1
    cmp r7, r0
    jeq change_to_p2
    loadn r7, #1

inp:
    inchar r0
    loadn r1, #255
    cmp r0, r1
    jeq inp
    rts

change_to_p2:
    loadn r7, #3
    rts

end_game:

can_continue_game:
    rts

p1_win:
    load r0, p1points
    inc r0
    store p1points, r0
    call initialize_game
    jmp game_loop

p2_win:
    load r0, p2points
    inc r0
    store p2points, r0
    call initialize_game
    jmp game_loop