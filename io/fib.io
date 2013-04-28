fib := method(nth,
    if (nth < 2, nth, fib(nth-1) + fib(nth-2))
)
fib(0) println
fib(1) println
fib(4) println
fib(8) println
