
static_elements:    
    loadn r0, #titulo
    loadn r1, $position(eval((40-int(defs["titulo_len"]))//2),0)
    call start_print

    loadn r0, #p1
    loadn r1, $position(0,3)
    call start_print

    loadn r0, #px
    loadn r1, $position(eval((int(defs["p1_len"])-int(defs["px_len"]))//2),5)
    call start_print

    loadn r0, #p2
    loadn r1, $position(eval(40-int(defs["p1_len"])),3)
    call start_print

    loadn r0, #po
    loadn r1, $position(eval((40-int(defs["p1_len"]))+((int(defs["p2_len"])-int(defs["po_len"]))//2)),5)
    call start_print

    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),6)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),7)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),8)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),9)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),10)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),11)
    call start_print
    loadn r0, #tictacline2
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),12)
    call start_print
        loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),13)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),14)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),15)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),16)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),17)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),18)
    call start_print
    loadn r0, #tictacline2
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),19)
    call start_print
        loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),20)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),21)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),22)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),23)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),24)
    call start_print
    loadn r0, #tictacline1
    loadn r1, $position(eval((40-int(defs["tictacline1_len"]))//2),25)
    call start_print
    rts