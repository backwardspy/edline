#importonce

#import "cia.asm"

.filenamespace keyboard

// key matrix constants
// high byte is inverted row mask
// low byte is key mask
.const @KEY_DELETE = $fe01
.const @KEY_RETURN = $fe02
.const @KEY_W = $fd02
.const @KEY_A = $fd04
.const @KEY_S = $fd20
.const @KEY_D = $fb04

.macro @keyboard_init() {
    lda #$FF
    sta cia.data_direction_port_a
    lda #$00
    sta cia.data_direction_port_b
}

// set A nonzero if key is pressed, zero otherwise
.macro @key_pressed(key) {
    lda #>key   // load inverted row mask
    sta cia.data_port_a
    lda cia.data_port_b
    and #<key   // mask with key mask
}
