@0
D = M
@n
M = D

@100
D = A
@i
M = D
@j
M = 0

$WHILE(n)
    @i
    D = M
    @j
    M = D
    @n
    D = M
    @m
    M = D - 1

    $WHILE(m)
        @j
        D = M
        @100
        A = D + A
        D = M
        @i
        A = M
        A = A + 1
        D = D - M
        @SWAP
        D; JGT
        @CONTINUE
        0; JMP

        (SWAP)
        @j
        D = M
        @100
        A = D + A
        D = M
        @temp
        M = D
        @i
        A = M
        A = A + 1
        D = M
        @j
        A = M
        M = D
        @temp
        D = M
        @i
        A = M
        A = A + 1
        M = D
        (CONTINUE)

        @j
        M = M + 1
        @m
        M = M - 1
    $END

    @i
    M = M + 1
    @n
    M = M - 1
$END

(END)
@END
0; JMP
