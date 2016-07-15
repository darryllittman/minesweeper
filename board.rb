require 'colorize'
require 'byebug'

require_relative 'tile'

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) { Tile.new } }
  end

  def to_s
    @grid.each do |row|
      p row.map { |tile| tile.to_s }
    end
  end

  def adjacent_bombs(pos)
  end

  def flagged?(pos)
  end

  def has_bomb?(pos)
    self[pos].bomb
  end

  def revealed?(pos)
    self[pos].revealed
  end

  def seed_bombs
    bomb_positions.each do |pos|
      self[pos].bomb = true
    end
  end

  def explode?
    @grid.any? { |row| row.any? { |tile| tile.revealed && tile.bomb }}
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
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
