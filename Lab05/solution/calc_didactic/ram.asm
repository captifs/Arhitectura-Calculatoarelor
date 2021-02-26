; calculeaza recursiv suma numerelor de la 1 la n
; RC - rezultatul
; RA - n = 10
; BB - pentru adresa

; initializari
mov     RA,             0x000a          ; 0010 000 0 11 000 000     0304 000a
mov     RC,             0x0000          ; 0010 000 0 11 000 010     4304 0000
mov     BB,             0x0000          ; 0010 000 0 11 000 111     e304 0000
mov     IS,             0x0000          ; 0010 000 0 11 000 011     c304 0000
call    BB+0x0016                       ; 0000 100 0 10 000 111     e110 0016
jmp     BB+0x000a                       ; 0000 101 0 10 000 111     e150 000a

; urmeaza 10 cuvinte cu valoarea 0000

; functie care calculeaza suma numerelor de la 1 la n
; RA -> n
; RC -> suma
cmp     RA,             0x0001          ; 0110 010 0 11 000 000     0326 0001
jne     +4                              ; 1001 110 0 00 000 100     2039
mov     RC,             0x0001          ; 0010 000 0 11 000 010     4304 0001
ret                                     ; 1000 100 0 00 000 000     0011
push    RA                              ; 0000 010 0 11 000 000     0320
sub     RA,             0x0001          ; 0111 010 0 11 000 000     032e 0001
call    BB+0x0016                       ; 0000 100 0 10 000 111     e110 0016
pop     RA                              ; 0000 011 0 11 000 000     0360
add     RC, RA                          ; 0101 000 0 11 000 010     430a
ret                                     ; 1000 100 0 00 000 000     0011
