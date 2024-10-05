ISCNTC:
        jsr MONRDKEY
        bcc not_cntc
        cmp #$03
        beq is_cntc

not_cntc:
        rts

is_cntc:
        ; Fall through
