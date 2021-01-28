#import "keyboard.asm"

BasicUpstart2(start)

* = $1000 "Code"
start:
        keyboard_init()

keyscan:
        lda #%0111111
        sta cia.PRA
!:      lda cia.PRB
        and #%00010000
        bne !-
        rts
