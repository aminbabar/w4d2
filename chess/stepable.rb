module Stepable
    def moves
        x, y = pos
        valid_moves = []
        pos_moves = move_diffs
        pos_moves.each do |mv|
            dx, dy = mv
            valid_moves << [(dx + x),(dy + y)] if @board[dx + x][dy + y].class == NullPiece
        end
        valid_moves
    end

    private

    def move_diffs
        
    end
end