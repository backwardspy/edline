#import "kernal.asm"
#import "vic.asm"

BasicUpstart2(start)

* = $1000 "Code"
start:
    jsr kernal.screen_init
    lda #BLACK
    sta vic.border_colour
    sta vic.background_colour

loop:
    jsr kernal.get_input
    beq loop
    jsr kernal.char_out
    jmp loop

end:
    rts
