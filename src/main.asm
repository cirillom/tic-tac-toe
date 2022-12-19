
main:
    call initialize_game
    jmp game_loop

game_loop:
    ;call draw_screen
    call check_tie
    call check_win
    call change_player
    ;call make_play
    jmp game_loop