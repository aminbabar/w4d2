module Slideable
    HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]].freeze
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [1, -1], [-1,1]].freeze

   def horizontal_dirs
    moves = []
    HORIZONTAL_DIRS.each {|dir|moves += grow_unblocked_moves_in_dir(dir)}
    moves
   end 

   def diagonal_dirs
    moves = []
    DIAGONAL_DIRS.each {|dir| moves += grow_unblocked_moves_in_dir(dir)}
    moves
   end

   def moves
        move_dirs
   end

    private

    def move_dirs
        horizontal_dirs += diagonal_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        x, y = self.pos
        moves = []

        while x < 8 && x >= 0 && y < 8 && y >=0
            x += dy; y += dx
            if self.board[x][y].class == NullPiece || @board[dx + x][dy + y].color != self.color
                moves << [x,y]
            else
               break
            end
        end
        moves
    end

end
