require 'pry'

# Roch, Paper, Scissors

class RockPaperScissors

  PLAYS = ['rock', 'paper', 'scissors']
  WINS = [
           ['rock', 'scissors'],
           ['paper', 'rock'],
           ['scissors', 'paper']
         ]

  # Get a user move
  def human_select_move
    puts "Rock, Paper, or Scissors?"
    gets.chomp.downcase
  end

  # Get a computer move
  def computer_select_move
    PLAYS.sample
  end

  # Compare the moves - Play...
  def play
    human_move = human_select_move
    computer_move = computer_select_move
    # binding.pry
    puts get_winner(human_move, computer_move)
  end

  # Decide who wins
  def get_winner(human_move, computer_move)
    if human_move == computer_move
      "It's a draw! Let's try again!"
    else
      if WINS.include?([human_move, computer_move])
        "You WIN! #{human_move.capitalize} beats #{computer_move.capitalize}!"
      else
        "You lose. #{computer_move.capitalize} beats #{human_move.capitalize}."
      end
    end
  end
  # Tell the user who won
end

game = RockPaperScissors.new
game.play