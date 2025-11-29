alphabet: {0, 1, x, y, z}
start: q0
q0 (0 -> 0, R q0) (1 -> 1, R q1) (_ -> _, R reject) (x -> x, R q0)
q1 (1 -> 1, R q1) (0 -> 0, R q8) (_ -> _, L q2) 
q2 (x -> x, L q2) (y -> y, L q2) (z -> z, L q2) (1 -> 1, L q2) (0 -> x, R q3) (_ -> _, R q7)
q3 (x -> x, R q3) (y -> y, R q3) (z -> z, R q3) (0 -> 0, R q3) (1 -> y, L q5) (_ -> _, R q8) 
q4 (x -> x, L q4) (y -> y, L q4) (z -> z, L q4) (1 -> 1, L q4) (0 -> x, R q5) (_ -> _, R q2) 
q5 (x -> x, R q5) (y -> y, R q5) (z -> z, R q5) (0 -> 0, R q5) (1 -> z, L q6) (_ -> _, R q8)
q6 (x -> x, L q6) (y -> y, L q6) (z -> z, L q6) (1 -> 1, L q6) (0 -> x, R q5) (_ -> _, R q2)
q7 (y -> y, R q7) (z -> z, R q7) (1 -> 1, R q8) (_ -> _, R accept)