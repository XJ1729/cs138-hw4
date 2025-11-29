alphabet: {0, 1, 2, x, a, b, c}
start: q0
q0 (_ -> _, R q8) (0 -> x, R q1) (1 -> _, R q8) (2 -> _, R q8) (x -> x, R q0) (y -> y, R q0) (z -> z, R q0)
q1 (1 -> y, L q2) (0 -> 0, R q1) (2 -> 2, R q1) (x -> x, R q1) (y -> y, R q1) (z -> z, R q1) (_ -> _, R q8)
q2 (0 -> 0, L q2) (1 -> 1, L q2) (2 -> 2, L q2) (x -> x, L q2) (y -> y, L q2) (z -> z, L q2) (_ -> _, R q3)
q3 (0 -> x, R q1) (1 -> _, R q4) (2 -> 2, R q3) (x -> x, R q3) (y -> y, R q3) (z -> z, R q3) (_ -> _, R q7)
q4 (2 -> z, L q5) (0 -> 0, R q4) (1 -> 1, R q4) (x -> x, R q4) (y -> y, R q4) (z -> z, R q4) (_ -> _, R q8)
q5 (0 -> 0, L q5) (1 -> 1, L q5) (2 -> 2, L q5) (x -> x, L q5) (y -> y, L q5) (z -> z, L q5) (_ -> _, R q6)
q6 (1 -> y, R q4) (0 -> 0, R q6) (2 -> 2, R q6) (x -> x, R q6) (y -> y, R q6) (z -> z, R q6) (_ -> _, R accept)
q7 (1 -> _, R q8) (0 -> 0, R q7) (2 -> 2, R q7) (x -> x, R q7) (y -> y, R q7) (z -> z, R q7) (_ -> _, R accept)