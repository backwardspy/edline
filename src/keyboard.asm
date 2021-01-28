#importonce

#import "cia.asm"

.filenamespace keyboard

.const @KEY_DELETE = $0000
.const @KEY_RETURN = $0001
.const @KEY_W = $

.macro @keyboard_init() {
    lda #$FF
    sta cia.DDRA
    lda #$00
    sta cia.DDRB
}
