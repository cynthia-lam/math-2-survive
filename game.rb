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
    if @current_player = player1
      @current_player = player2
    end
    if @current_player = player2
      @current_player = player1
    end
  end

  def start
    # Ask a question "#{@current_player} what is _ + _" and gets.chomp input
    # Check if the input matches the correct answer
    # Puts message
    # Call lose_life if needed
    # Print current lives
    # Switch player
  end


end


