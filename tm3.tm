alphabet: {0, 1, 2, x, a, b, c}
start: q1
q1 (0 -> 0, R q1) (1 -> 1, R q1) (x -> x, R q1) (2 -> x, R q2)
q2 (0 -> 0, R q2) (1 -> 1, R q2) (x -> x, R q2) (2 -> 2, R q2) (a -> a, R q2) (b -> b, R q2) (c -> c, R q2) (_ -> c, L q3)
q3 (2 -> 2, L q3) (x -> x, L q3) (a -> a, L q3) (b -> b, L q3) (c -> c, L q3) (c -> c, L accept) (b -> b, L accept)
q4 (0 -> 0, L q4) (1 -> 1, L q4) (x -> x, L q4) (2 -> 2, L q4) (a -> a, L q4) (b -> b, L q4) (c -> c, L q4) (_ -> _, R q5)
q5 (0 -> 0, R q5) (2 -> 2, R q5) (x -> x, R q5) (1 -> x, R q6)
q6 (0 -> 0, R q6) (1 -> 1, R q6) (x -> x, R q6) (2 -> 2, R q6) (a -> a, R q6) (b -> b, R q6) (c -> c, R q6) (_ -> b, L q7)
q7 (1 -> 1, L q7) (2 -> 2, L q7) (x -> x, L q7) (a -> a, L q7) (b -> b, L q7) (c -> c, L q7) (0 -> 0, L q8) (_ -> _, L q1)
q8 (0 -> 0, L q8) (1 -> 1, L q8) (x -> x, L q8) (2 -> 2, L q8) (a -> a, L q8) (b -> b, L q8) (c -> c, L q8) (_ -> _, R q9)
q9 (2 -> 2, R q1) (1 -> 1, R q1) (x -> x, R q1) (0 -> x, R q10)
q10 (0 -> 0, R q10) (1 -> 1, R q10) (x -> x, R q10) (2 -> 2, R q10) (a -> a, R q10) (b -> b, R q10) (c -> c, R q10) (_ -> a, L q11)
q11 (0 -> 0, L q11) (1 -> 1, L q11) (x -> x, L q11) (2 -> 2, L q11) (a -> a, L q11) (b -> b, L q11) (c -> c, L q11) (_ -> _, R q1)