# frozen_string_literal: true

require_relative 'display'
require_relative 'game'
require_relative 'board'
require_relative 'player'

def play_game
  current_game = Game.new
  current_game.run_game
  play_again
end

def play_again
  puts 'Would you like to play again? Y/N'
  input = gets.chomp
  if input.downcase == 'y'
    play_game
  else puts 'Thanks for playing!'
  end
end

play_game
