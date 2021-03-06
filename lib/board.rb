# frozen_string_literal: true

# game board for tic-tac-toe
class Board
  attr_reader :grid

  WIN_CONDITIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
  ].freeze

  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  # rubocop:disable Metrics/AbcSize
  def show_board
    puts ''
    puts '      |     |       '
    puts "   #{grid[0]}  |  #{grid[1]}  |  #{grid[2]}"
    puts '------+-----+------'
    puts "   #{grid[3]}  |  #{grid[4]}  |  #{grid[5]}"
    puts '------+-----+------'
    puts "   #{grid[6]}  |  #{grid[7]}  |  #{grid[8]}"
    puts '      |     |       '
    puts ''
  end

  def valid_move?(input)
    grid[input.to_i - 1] == input.to_i
  end

  def change_board(number, symbol)
    grid[number.to_i - 1] = symbol
  end

  def game_won?
    WIN_CONDITIONS.any? do |set|
      [grid[set[0]], grid[set[1]], grid[set[2]]].uniq.length == 1
    end
  end

  def grid_full?
    grid.none? { |i| i.is_a? Integer }
  end
end
