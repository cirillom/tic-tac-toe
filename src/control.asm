
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
    jmp game_loop

change_player:
    loadn r0, #1
    cmp r7, r0
    jeq change_to_p2
    loadn r7, #1

inp:
    inchar r5
    loadn r1, #255
    cmp r5, r1
    jeq inp
    rts

change_to_p2:
    loadn r7, #10
    rts

can_continue_game:
    rts

p1_win:
    load r0, p1points
    inc r0
    store p1points, r0
    loadn r0, #winx
    loadn r1, $position(eval((40-int(defs["winx_len"]))//2),28)
    call start_print
    call inp
    call clean_last_line
    jmp initialize_game

p2_win:
    load r0, p2points
    inc r0
    store p2points, r0
    loadn r0, #wino
    loadn r1, $position(eval((40-int(defs["wino_len"]))//2),28)
    call start_print
    call inp
    call clean_last_line
    jmp initialize_game
    
end_game:
    loadn r0, #velha
    loadn r1, $position(eval((40-int(defs["velha_len"]))//2),28)
    call start_print
    call inp
    call clean_last_line
    jmp initialize_game

clean_last_line:
    loadn r0, #cleanline
    loadn r1, $position(eval((40-int(defs["cleanline_len"]))//2),28)
    call start_print
    rts
