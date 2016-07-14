require_relative 'board'

class Game

  def initialize
    @grid = Board.new.seed_bombs
  end

  def over?
    @grid.bomb_revealed?(pos)
  end

  private
  
  attr_accessor :grid
end
