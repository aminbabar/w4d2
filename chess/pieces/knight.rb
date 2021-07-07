require_relative "../stepable"

class Knight < Piece
    include Stepable
    KNIGHT_STEPS = [
        [-2, -1],
        [-2,  1],
        [-1, -2],
        [-1,  2],
        [ 1, -2],
        [ 1,  2],
        [ 2, -1],
        [ 2,  1]
    ].freeze
    def symbol
        color == :white ? "♘" : "♞"
    end

    def move_diffs
        KNIGHT_STEPS
    end
end