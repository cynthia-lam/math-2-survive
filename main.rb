require './player'

puts "Player 1, what's your name?"
p1_name = $stdin.gets.chomp
player1 = Player.new(p1_name)

puts "Player 2, what's your name?"
p2_name = $stdin.gets.chomp
player2 = Player.new(p2_name)