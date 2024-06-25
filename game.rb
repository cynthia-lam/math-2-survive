require './player'

class Game

  def initialize
    puts "Player 1, what's your name?"
    p1_name = $stdin.gets.chomp
    @player1 = Player.new(p1_name)

    puts "Player 2, what's your name?"
    p2_name = $stdin.gets.chomp
    @player2 = Player.new(p2_name)

    @current_player = player1

  def change_turn
    if @current_player = player1
      @current_player = player2
    end
    if @current_player = player2
      @current_player = player1
    end
  end
end
