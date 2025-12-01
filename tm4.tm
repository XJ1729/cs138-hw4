alphabet: {0, 1, x, y, #}
start: q0

// mark 0
q0 (0 -> #, R q1) (_ -> _, R accept)

// mark 1
q1 (0 -> 0, R q1) (x -> x, R q1) (y -> y, R q1) (1 -> y, R q1M)

// marked the one, go back to check for zeroes or just go back
q1M (1 -> 1, L qB) (_ -> _, L qC0)

// go back
qB (0 -> 0, L qB) (1 -> 1, L qB) (x -> x, L qB) (y -> y, L qB) (# -> #, R qF0)

// find zero again
qF0 (x -> x, R qF0) (y -> y, L qR) (0 -> x, R q1)

// reset 0s
qR (x -> 0, L qR) (# -> #, R q1)

// no 1s left to mark, if there are zeros left, reject; otherwise accept
qC0 (y -> y, L qC0) (x -> x, L qC0) (# -> #, R accept)