
module Pegs where


type Peg  = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _ = []
hanoi n a b c = step_1 ++ step_2 ++ step_3
  where step_1 = hanoi n' a c b
        step_2 = [(a, b)]
        step_3 = hanoi n' c b a
        n' = n - 1

