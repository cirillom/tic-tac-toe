
main:
    loadn r7, #10
    jmp initialize_game

game_loop:
    call draw_screen
    call check_win
    call check_tie
    call change_player
    call make_play
    jmp game_loop
    