

class Piece

    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        "Piece"
    end

    def empty?
        @board[pos].class == NullPiece
    end

    def valid_moves
        # moves that are proccessed by move_into_check(moves)
    end

    def symbol
        #graphical rep on print board ???
    end

    private

    def move_into_check?
        #Check our move leaves our king in a checked pos
    end

end