module Stepable

    def moves
        x, y = pos
        valid_moves = []
        pos_moves = move_diffs
        pos_moves.each do |mv|
            dy, dx = mv; board_space = @board[dx+x][dy+y]
            if board_space.class == NullPiece || board_space.color != self.color
                if ((dx + x) <= 7 && (dx + x) >= 0) && ((dy + y) <= 7 && (dy + y) >= 0)
                    valid_moves << [(dx + x),(dy + y)]
                end
            end
        end
        valid_moves
    end

    private

    def move_diffs
        raise "make me"
    end
end