
require_relative "nullpiece"
require_relative 'queen'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    setup_board
  end

  def setup_board


  # # PIECES = {
  #    "king" => [[0,3]],
  #    "knight" => [[0,1],[0,6]],
  #   "queen" => [[0,4]],
  #    "pawn" => [[1,0],[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],
  #    "bishop" => [[0,2],[0,5]],
  #    "rook" => [[0,0],[0,7]]
  #  }

     pawn_pos_blk = [[1,0],[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7]]
     pawn_pos_blk.each do |pos|
       Queen.new(:white,pos,self)
     end

     pawn_pos_white = [[6,0],[6,1],[6,2],[6,3],[6,4],[6,5],[6,6],[6,7]]
     pawn_pos_white.each do |pos|
       Queen.new(:black,pos,self)
     end
  #  Obj.const_get

  # # hard code 1 set
  # # loop through twice, different x coordinate, switching color
  # #   @grid.map! do |row|
  # #   row.map! do |square|
  #
  # #   end
  # end
end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
  end

  def move(start_pos, end_pos)
    unless move_valid?(start_pos, end_pos)
      raise ArgumentError.new "not a valid move"
    end

    begin
    rescue ArgumentError => e
    end

  end

  def move_piece!(start_pos, end_pos)
  end

  def checkmate?()
    #  def find_king(color)
  end

  def in_bounds?(pos)
    return true if pos[0].between?(0,7) && pos[1].between?(0,7)
    false
  end

end
