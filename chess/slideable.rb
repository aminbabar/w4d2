module Slideable
    HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]].freeze
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [1, -1], [-1,1]].freeze

   def horizontal_dirs
    moves = []
    HORIZONTAL_DIRS.each {|dir|moves += grow_unblocked_moves_in_dir(dir[0], dir[1])}
    moves
   end 

   def diagonal_dirs
    moves = []
    DIAGONAL_DIRS.each {|dir| moves += grow_unblocked_moves_in_dir(dir[0], dir[1])}
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
        x += dy; y += dx
        while x <=7 && x >= 0 && y <= 7 && y >=0
            if board[x][y].class == NullPiece
                moves << [x, y]
            elsif !empty? && board[x][y].color != self.color
                moves << [x, y]
               break
            end
            x += dy; y += dx
        end
        moves
    end

end
