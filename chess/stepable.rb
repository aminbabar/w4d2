module Stepable

    def moves
        x, y = pos
        valid_moves = []
        pos_moves = move_diffs
        pos_moves.each do |mv|
            dx, dy = mv; cur_piece = @board[dx+x][dy+y]
            if cur_piece.class == NullPiece || cur_piece.color != self.color
                valid_moves << [(dx + x),(dy + y)]
            end
        end
        valid_moves
    end

    private

    def move_diffs
        raise "make me dummy"
    end
end