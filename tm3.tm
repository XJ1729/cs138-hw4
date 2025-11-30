alphabet: {0, 1, 2, x, y, z, #}
start: q0
q0   (0 -> #, R q0a) (1 -> #, R q0b) (2 -> #, R q0c) (# -> #, R q0) (_ -> _, R q1ml)
q0a  (0 -> 0, R q0a) (1 -> 1, R q0a) (2 -> 2, R q0a) (# -> #, R q0a) (_ -> x, L q0)
q0b  (0 -> 0, R q0b) (1 -> 1, R q0b) (2 -> 2, R q0b) (# -> #, R q0b) (_ -> y, L q0)
q0c  (0 -> 0, R q0c) (1 -> 1, R q0c) (2 -> 2, R q0c) (# -> #, R q0c) (_ -> z, L q0)
q1ml (x -> x, L q1ml) (y -> y, L q1ml) (z -> z, L q1ml) (# -> #, L q1ml) (_ -> _, R q1)
q1  (x -> _, R q2) (y -> y, R qyl) (_ -> _, R qF) 
q2  (y -> _, R q3) (x -> x, R q2) (z -> z, R q2) (# -> #, R q2) (_ -> _, R qF)
q3  (x -> _, R q2) (y -> y, R q4) (z -> z, R q3) (# -> #, R q3) (_ -> _, R qF)
qyl (y -> y, R q5) (x -> x, R qyl) (z -> z, R qyl) (# -> _, R qyl) (_ -> _, R qF)
q5 (y -> _, R q6) (x -> x, R q5) (z -> z, R q5) (# -> #, R q5) (_ -> _, R qF)
q6 (z -> _, R q7) (x -> x, R q6) (y -> y, R q6) (# -> #, R q6) (_ -> _, R qF)
q7 (y -> _, R q6) (z -> z, R qA) (x -> x, R q7) (# -> #, R q7) (_ -> _, R qF)
qA (_ -> _, R accept)
qF