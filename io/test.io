Greeting := Object clone
Greeting message := "Hello, World"
Greeting open := method(self message println)
Greeting open

birthdayCard := Greeting clone
birthdayCard message = "Happy Birthday"
birthdayCard open


