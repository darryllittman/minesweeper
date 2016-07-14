class Grid

  def initialize
    @grid = Array.new(9) { Array.new(9) }
  end

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
