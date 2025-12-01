alphabet: {0, 1, x, X, y, #}
start: q0

q0 (0 -> #, R q01) (_ -> _, R accept)

q01 (0 -> 0, R q01) (# -> #, R q01) (1 -> X, R qRS)

qRS  (x -> x, R qRS) (0 -> x, R qP) (# -> x, R qP) (1 -> 1, R qZD)

qP (x -> x, R qP) (0 -> 0, R qP) (# -> #, R qP) (y -> y, R qP) (X -> X, R qC) (1 -> 1, R qC) 

qC (y -> y, R qC) (1 -> X, L qB)

qB (X -> y, L qB) (y -> y, L qB) (1 -> 1, L qB) (x -> x, R qRS) (# -> #, R qRS) (0 -> 0, R qRS)

qZD (y -> y, R qCR) (X -> X, R qCR) (1 -> 1, R qCR) (_ -> _, R qCR)

qCR (y -> y, R qCR) (X -> X, R qCR) (1 -> 1, L qCL) (_ -> _, L accept)

qCL (y -> y, L qCL) (X -> X, L qCL) (1 -> 1, L qCL) (x -> 0, L qCL) (0 -> 0, L qCL) (# -> #, R qRS)