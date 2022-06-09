class Board
attr_reader :board
    def initialize
        @board = Array.new(9) {Array.new(9, " ")}
        @size = 9 * 9
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos,value)
        row, col = pos
        @board[row][col] = value
    end

    def set_bombs
        i = 0

        while i < 10
        row = (0...9).to_a.sample
        col = (0...9).to_a.sample
            if @board[row][col] != :B
                board[row][col] = :B
                i +=1
            end
        end
    end

    def is_bomb?(pos_arr)

        if self[pos_arr] == :B
            return true
        else   
            false
        end
    end
    def render
        puts "  #{(0..8).to_a.join(" ")}"
        board.each.with_index do |row,i|
            puts "#{i} #{row.join(" ")}"
        end
    end
    def reveal


    end
end