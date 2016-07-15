class Tile
  attr_accessor :revealed, :bomb, :flagged, :number_of_adjacent_bombs

  def initialize
    @revealed = false
    @flagged = false
    @bomb = false
    @number_of_adjacent_bombs = 0
  end

  def reveal!
    @revealed = true
  end

  private


end
