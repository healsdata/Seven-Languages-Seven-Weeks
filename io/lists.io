XList := Object clone
XList rows := list()
XList dim := method (x, y,
	rows = list()
        columns := list()
        for (i, 1, x, columns append(0))
        for (i, 1, y, rows append(columns clone))
)
XList set := method (x, y, value,
	rows at(x - 1) atPut(y - 1,value)
)
XList get := method (x, y,
	rows at(x - 1) at(y - 1)
)
XList sum := method(
        theSum := 0
	for (i, 0, rows size - 1, theSum = theSum + rows at(i) sum)
)
XList average := method(
        if (rows size == 0, 0, 
		if (rows at(0) size == 0, 0, 
			sum() / (rows size * rows at(0) size)
		)
	)
)

myList := XList clone
myList dim(6,6)
myList set(1,1, 11)
myList set(3,4, 42)
myList get(3,4) println
myList get(4,4) println
myList get(4,3) println
myList get(6,6) println
#myList get(7,6) println

myList sum println
myList average println
