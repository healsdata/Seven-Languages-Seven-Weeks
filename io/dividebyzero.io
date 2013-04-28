(5 / 4) println
(5 / 0) println
oldDiv := Number getSlot("/")
Number / := method (divisor, if (divisor == 0, 0, oldDiv(divisor)))
(5 / 4) println
(5 / 0) println
