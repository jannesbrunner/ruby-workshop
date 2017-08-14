require "./navigator"
directions = File.read("./input.txt")
navigator = Navigator.new
navigator.follow(directions)

puts "The answer is #{navigator.position}"
