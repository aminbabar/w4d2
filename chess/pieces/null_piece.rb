class NullPiece < Piece
    attr_reader :color, symbol
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