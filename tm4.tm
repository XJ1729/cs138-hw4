alphabet: {0, 1, x, y}
start: q0
q0 (0 -> x, R q1) (1 -> 1, R qF) (x -> x, R q6) (_ -> _, R accept)
q1 (0 -> 0, R q1) (x -> x, R q1) (y -> y, R q1) (1 -> y, R q2) (_ -> _, R qF)
q2 (1 -> 1, R q2) (x -> x, R q2) (y -> y, R q2) (_ -> _, L q3)
q3 (y -> y, L q4) (0 -> 0, L q5) (1 -> 1, L q5) 
q4 (x -> x, L q4) (y -> y, L q4) (0 -> 0, L q5) (1 -> 1, L q5) (_ -> _, L accept)
q5 (0 -> 0, L q5) (1 -> 1, L q5) (x -> x, L q5) (y -> y, L q5) (_ -> _, R q0)
q6 (x -> x, R q6) (0 -> x, R q1) (y -> y, L q7) 
q7 (x -> 0, L q7) (_ -> _, R q0)
qF