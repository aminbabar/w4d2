module Slideable
    HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [1, -1], [-1,1]]

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
            x += dx
            y += dy
            self.board[x][y].class == NullPiece ? moves << [x,y] : break
        end
        moves
    end

end