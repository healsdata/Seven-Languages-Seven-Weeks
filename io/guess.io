theNumber := (Random value(100) + 1) floor
standardIO := File standardInput()

previousGuess := nil;

10 repeat (
	"Pick a number, 1 to 100..." println;
        theGuess := standardIO readLine() asNumber();
        if (
		theGuess == theNumber, 
		"Correct!" println; break;,
		"Nope -> " print;
		if (
			previousGuess == nil,
			"",
			if (
				(theNumber - previousGuess) abs > (theNumber - theGuess) abs,
				"Warmer" println,
				if (
					(theNumber - previousGuess) abs == (theNumber - theGuess) abs, 
					"Spinning" println,
					"Colder" println
				)
			)
		); previousGuess = theGuess

	)  
)
