max = 10
puts "Guess a number from 1 to #{max}"
answer = rand(max) + 1

correct = false
while !correct 
    guess = gets
    if (guess.to_i == answer)
        correct = true
    else 
        puts "Incorrect. Guess again."
    end
end

puts "Correct! The number was #{answer}"
