class Tile
  attr_accessor :revealed, :bomb, :flagged
  def initialize
    @revealed = false
    @flagged = false
    @bomb = false
  end

  def to_s
    bomb
  end

  def reveal!
    @revealed = true
  end

  private


end
