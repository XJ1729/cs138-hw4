alphabet: {0, 1, 2, x, y, z}
start: q0
q0 (0 -> 0, R q0a) (1 -> 1, R q0b) (2 -> 2, R q0c) (_ -> _, R q1ml)
q0a (0 -> 0, R q0a) (1 -> 1, R q0a) (2 -> 2, R q0a) (_ -> x, L q0) (x -> x, R q0a) (y -> y, R q0a) (z -> z, R q0a)
q0b (0 -> 0, R q0b) (1 -> 1, R q0b) (2 -> 2, R q0b) (_ -> y, L q0) (x -> x, R q0b) (y -> y, R q0b) (z -> z, R q0b)
q0c (0 -> 0, R q0c) (1 -> 1, R q0c) (2 -> 2, R q0c) (_ -> z, L q0) (x -> x, R q0c) (y -> y, R q0c) (z -> z, R q0c)
q1ml (x -> x, L q1ml) (y -> y, L q1ml) (z -> z, L q1ml) (0 -> 0, L q1ml) (1 -> 1, L q1ml) (2 -> 2, L q1ml) (_ -> _, R q2)
q2 (x -> _, R q3) (0 -> 0, R q2) (1 -> 1, R q2) (2 -> 2, R q2) (y -> y, R q2) (z -> z, R q2) (_ -> _, R qF)
q3 (y -> _, R q4) (0 -> 0, R q3) (1 -> 1, R q3) (2 -> 2, R q3) (x -> x, R q3) (z -> z, R q3) (_ -> _, R qF)
q4 (z -> _, L q5ml) (0 -> 0, R q4) (1 -> 1, R q4) (2 -> 2, R q4)  (x -> x, R q4) (y -> y, R q4) (_ -> _, R qF)
q5ml (x -> x, L q5ml) (y -> y, L q5ml) (z -> z, L q5ml) (0 -> 0, L q5ml) (1 -> 1, L q5ml) (2 -> 2, L q5ml) (_ -> _, R q2)
qA (_ -> _, R accept)
qF