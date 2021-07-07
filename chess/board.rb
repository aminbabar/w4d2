require_relative "pieces/piece.rb"
require_relative "pieces/queen.rb"
require_relative "pieces/king.rb"
require_relative "pieces/bishop.rb"
require_relative "pieces/knight.rb"
require_relative "pieces/rook.rb"
require_relative "pieces/pawn.rb"
require_relative "pieces/null_piece.rb"

class Board

    def initialize()
        @rows = Array.new(8) {Array.new(8)}
    end

    def set_up_board

        @rows.map!.with_index do |row, row_num|
            if [2, 3, 4, 5].include?(row_num)
                row.map! {|ele| NullPiece.instance }
            elsif [1, 6].include?(row_num)
                my_color = (row_num == 1 ? (:white) : (:black))
                row.map!.with_index {|ele, col_num| Pawn.new(my_color, @rows,[row_num, col_num])}
            else
                my_color = (row_num == 0 ? (:white) : (:black))
                row.map!.with_index do |ele, col_num|
                    if [0, 7].include? col_num
                        Rook.new(my_color, @rows,[row_num, col_num])
                    elsif [1, 6].include? col_num
                        Knight.new(my_color, @rows,[row_num, col_num])
                    elsif [2, 5].include? col_num
                        Bishop.new(my_color, @rows,[row_num, col_num])
                    elsif col_num == 4
                        King.new(my_color, @rows,[row_num, col_num])
                    else
                        Queen.new(my_color, @rows,[row_num, col_num])
                    end
                end
            end
        end
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

        p self[s_pos]
        p self[s_pos].moves
        if self[s_pos].moves.include?(e_pos)
            self[s_pos].pos = e_pos; self[e_pos] = self[s_pos]
            self[s_pos] = NullPiece.instance
        else
            false
        end
        p @rows
    end


end

# p board = Board.new()
