;; Initializare registre:

inc     RA                              ; 0001 000 0 11 000 000     0308
inc     RA                              ; 0001 000 0 11 000 000     0308
inc     RA                              ; 0001 000 0 11 000 000     0308
; RA should be 3

inc     RB                              ; 0001 000 0 11 000 001     8308
; RB should be 1
; IND should be _____ (0000)

dec     RC                              ; 0001 001 0 11 000 010     4348
neg     RC                              ; 0001 010 0 11 000 010     4328
; RC should be 1
; IND should be ____C (0001)

not     IS                              ; 0001 011 0 11 000 011     c368
; IS should be ffff
; IND should be PS___ (0018)

inc     XA                              ; 0001 000 0 11 000 100     2308
shl     XA                              ; 0001 100 0 11 000 100     2318
; XA should be 2
; IND should be _____ (0000)

dec     XB                              ; 0001 001 0 11 000 101     a348
shr     XB                              ; 0001 101 0 11 000 101     a358
dec     XB                              ; 0001 001 0 11 000 101     a348
; XB should be 32766 (7ffe)
; IND should be ___OC (0003)

dec     BA                              ; 0001 001 0 11 000 110     6348
sar     BA                              ; 0001 110 0 11 000 110     6338
; BA should be -1 (ffff)
; IND should be PS__C (0019)

;;------------------------------------------------------------------------------

;; Instructiuni pentru testare:

add     RA, RB                          ; 0101 000 0 11 001 000     130a
; RA should be 4
; IND should be _____ (0000)

sar     BA                              ; 0001 110 0 11 000 110     6338
; BA should be -1 (ffff)
; IND should be PS__C (0019)

adc     RB, IS                          ; 0101 001 1 11 001 011     d3ca
; RB should be 1
; IND should be _____ (0000)

cmp     RA, XA                          ; 0100 010 0 11 100 000     0722
; RA should be 4
; IND should be _____ (0000)

sar     BA                              ; 0001 110 0 11 000 110     6338
; BA should be -1 (ffff)
; IND should be PS__C (0019)

sbb     IS, XB                          ; 0101 011 1 11 011 101     bbea
; IS should be -32768 (8000)
; IND should be _S__C (0009)

test    RA, IS                          ; 0100 100 0 11 011 000     1b12
; RA should be 4
; IND should be P_Z__ (0014)

or      RC, BA                          ; 0101 101 1 11 010 110     6bda
; RC should be -1 (ffff)
; IND should be PS___ (0018)

xor     IS, XA                          ; 0101 110 0 11 100 011     c73a
; IS should be 32770 (8002)
; IND should be PS___ (0018)