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

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def start
    # ask_question
    # Check if the input matches the correct answer
    # Puts message
    # Call lose_life if needed -> a player method
    # Print current lives
    # switch_player
  end

  def ask_question
    # Ask a question "#{@current_player} what is _ + _" and gets.chomp input
  end 

end


