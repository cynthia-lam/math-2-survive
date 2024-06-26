require './player'

class Game

  def initialize
    puts "Player 1, what's your name?"
    p1_name = $stdin.gets.chomp
    @player1 = Player.new(p1_name)

    puts "Player 2, what's your name?"
    p2_name = $stdin.gets.chomp
    @player2 = Player.new(p2_name)

    @current_player = @player1
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def start
    ask_question

    # Print current lives
    puts "Lives remaining: #{@current_player.lives}"
    puts "-----NEW TURN-----"
    switch_player
  end

  def ask_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    correct_answer = num1 + num2

    puts "#{@current_player.name}: What does #{num1} + #{num2} equal?"
    player_answer = gets.chomp.to_i

    if player_answer == correct_answer
      puts "Correct!"
    else
      puts "Incorrect. The correct answer was #{correct_answer}."
      @current_player.lose_life
    end
  end 

  def game_over?
    !@player1.alive? || !@player2.alive?
  end

end


