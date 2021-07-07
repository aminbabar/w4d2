require_relative "../stepable"

class King < Piece
    include Stepable
    KINGS_STEPS = 
    [
     [0, 1], [0, -1],
     [1, 0], [-1, 0], 
     [1, 1], [-1, -1], 
     [1, -1],[-1, 1]
    ].freeze
    def symbol
        color == :white ? "♔" : "♚"
    end

    protected
    def move_diffs
        KINGS_STEPS
    end

end