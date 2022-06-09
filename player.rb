class Player

    def get_pos
        p "please give me a position in the form of '2,3'"

        str = gets.chomp

        pos = str.split(",").map {|char| char.to_i}

        return pos
    end

end