require 'colorize'
require 'byebug'

require_relative 'tile'

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) { Tile.new } }
  end

  def adjacent_bombs(pos)
  end

  def flagged?(pos)
  end

  def revealed?(pos)
  end

  def seed_bombs
    bomb_positions.each do |pos|
      self[pos].bomb = true
    end
  end

  def revealed_bomb?(pos)
    self[pos].to_s
  end

  def [](pos)
    x,y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    byebug
    x,y = pos
    @grid[x][y] = value
  end

  private

  def bomb_positions
    results = []

    while results.size < 10
      pos = []
      2.times { pos << (0..8).to_a.sample }
      results << pos unless results.include?(pos)
    end

    results
  end
end
