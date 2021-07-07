class Pawn < Piece
    
    def symbol
        color == :white ? "♙" : "♟︎"
    end

    def moves
        forward = forward_steps
        attacks = side_attacks
        moves = []
        forward.each do |move|
            dy, dx = move; x, y = pos
            board_space = @board[dx+x][dy+y]
            board_space.class == NullPiece ?  moves << [dx+x, dy+y] : break
        end

        attacks.each do |attack|
            dy, dx = attack; x, y = pos
            board_space = @board[dx+x][dy+y]
            moves << [(dx+x),(dy+y)] if board_space.color != self.color && !board_space.color.nil?
        end
        moves
    end

    private

    def at_start_row?
        x, y = pos
        x == 1 || x == 6
    end

    def forward_steps
        steps = []
        color == :white ? steps = [[0, 1], [0, 2]] : steps = [[0, -1], [0, -2]]
        at_start_row? ? steps : steps.take(1)
    end

    def side_attacks
        steps = []
        color == :white ? steps = [[1, 1], [-1, 1]] : steps = [[1, -1], [-1, -1]]
    end
end