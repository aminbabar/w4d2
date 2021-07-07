class Knight < Piece

    def symbol
        color == :white ? "♘" : "♞"
    end

    def move_diffs
        MOVES = [
            [-2, -1],
            [-2,  1],
            [-1, -2],
            [-1,  2],
            [ 1, -2],
            [ 1,  2],
            [ 2, -1],
            [ 2,  1]
          ]
    end
end