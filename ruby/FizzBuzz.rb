(1..100).each do |i|
    print 'Fizz' if i % 3 == 0
    print 'Buzz' if i % 5 == 0
    print i if i % 3 > 0 && i % 5 > 0
    puts ''
end
