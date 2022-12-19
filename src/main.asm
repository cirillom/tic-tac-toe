
main:
    jmp initialize_game

game_loop:
    call draw_screen
    loadn r4, #1
    call check_tie
    loadn r4, #2
    call check_win
    loadn r4, #3
    call change_player
    loadn r4, #4
    call make_play
    loadn r4, #5
    jmp game_loop
    