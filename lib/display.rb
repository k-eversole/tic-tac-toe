# frozen_string_literal: true

# Text needed to play tic-tac-toe
class Display
  def self.welcome
    puts 'XXXXX   TIC TAC TOE   XXXXX'
  end

  def self.name_prompt(num)
    puts "Player #{num}, please enter your name."
  end

  def self.turn_prompt(name)
    puts "#{name}, it is your turn."
  end

  def self.invalid_move
    puts 'That is not a valid move. Please try again.'
  end

  def self.tie_message
    puts 'Well done. You both lose. GOOD DAY SIR.'
  end

  def self.win_message(winner)
    puts "Congratulations #{winner}, you are the victor!"
  end
end
