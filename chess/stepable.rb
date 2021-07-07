module Stepable

    def moves
        x, y = pos
        valid_moves = []
        pos_moves = move_diffs
        pos_moves.each do |mv|
            dx, dy = mv; board_space = @board[dx+x][dy+y]
            if board_space.class == NullPiece || board_space.color != self.color
                valid_moves << [(dx + x),(dy + y)]
            end
        end
        valid_moves
    end

    private

    def move_diffs
        raise "make me"
    end
end