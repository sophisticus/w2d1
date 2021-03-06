require_relative 'piece'


class Queen < SlidingPiece

  attr_reader :symbol
  
  def symbol
    @color == :white ? ♕ : ♛
  end

  protected

  def move_dirs
    horizontal_dirs + diagonal_dirs
  end


end


# hard code 1 set
# loop through twice, different x coordinate, switching color
