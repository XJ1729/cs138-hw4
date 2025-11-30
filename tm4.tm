alphabet: {0, 1, x, y, #}
start: q0
q0 (0 -> 0, R q0a) (1 -> 1, R q0b) (_ -> _, R q1ml)
q0a (0 -> 0, R q0a) (1 -> 1, R q0a) (_ -> x, L q0)
q0b (0 -> 0, R q0b) (1 -> 1, R q0b) (_ -> y, L q0)
q1ml (0 -> 0, L q1ml) (1 -> 1, L q1ml) (x -> x, L q1ml) (y -> y, L q1ml) (_ -> _, R q2)
q2 (x -> _, R q3) (_ -> _, R qF)
q3 (y -> _, R q2) (_ -> _, R qA)
qA (_ -> _, R accept)