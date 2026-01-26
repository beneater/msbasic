.segment "CODE"
.ifdef EATER

CLS:
  pha

  lda #$1B
  jsr MONCOUT

  lda #'['
  jsr MONCOUT

  lda #'2'
  jsr MONCOUT

  lda #'J'
  jsr MONCOUT

  pla
  rts
.endif
