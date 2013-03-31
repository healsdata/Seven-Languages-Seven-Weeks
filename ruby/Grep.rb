puts 'Filename?'
filename = gets.chomp!

puts 'Match?'
matchWhat = gets.chomp!

File.open(fileame, 'r').each {|f|
   puts f if f.match(matchWhat)
}
