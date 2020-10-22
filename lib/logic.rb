class Logic
    attr_reader :arr, :player_position, :board
    @@arr =[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

    def initialize(player_position)
        @player_position = player_position
    end
    
    def winning_position?
            @@arr.any? do |combination|
              return true if combination.all? { |element| @player_position.include?(element) }
            end
            false    
    end 
end

class Position
    attr_accessor :choice
    def initialize(choice, board)
        @choice = choice
        @board  = board
    end

    def inside?
        @board.include?(@choice)
    end
end

class ArrayOperation
    def initialize(arr,pos)
        @arr = arr
        @pos = pos
    end
    def to_deleteArr
        @arr.delete(@pos)
    end
end

