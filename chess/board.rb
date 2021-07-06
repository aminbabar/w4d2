require_relative "piece.rb"


class Board

    def self.new_board
        board = Array.new(8) {Array.new(8)}

        board.map!.with_index do |row, i|
            if [0,1,6,7].include?(i)
                row.map {|ele| Piece.new()}
            else
                row
            end
        end
    end

    def initialize()
        @rows = Board.new_board
    end

    def []=(position, value)
        row, col = position
        @rows[row][col] = value
    end

    def [](position)
        row, col = position
        @rows[row][col]
    end

    # def inspect
    #     @rows.each do |row|
    #         puts row.join(" ")
    #     end
    # end


    def move_piece(s_pos, e_pos)
        if !self[s_pos].nil? && self[e_pos].class != Piece
            self[e_pos] = self[s_pos]
            self[s_pos] = nil
        else
            raise
        end
    end


end

p board = Board.new()
