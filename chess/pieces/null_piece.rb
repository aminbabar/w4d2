require "singleton"

class NullPiece < Piece
    include Singleton

    def initialize
        @color = nil
    end

    def symbol
        nil
    end

    def moves
        nil
    end
end