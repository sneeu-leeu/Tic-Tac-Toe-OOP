# rubocop:disable Metrics/CyclomaticComplexity
class Board
  attr_accessor :tokens
  def initialize(tokens)
    @tokens = tokens
  end

  def initial_board
    puts 'This is your game board.'
    puts 'The numbers represent the cell you can choose'

    puts
    puts ' 1 | 2 | 3'
    puts '-----------'
    puts ' 4 | 5 | 6 '
    puts '-----------'
    puts ' 7 | 8 | 9 '
    puts
  end

  def game_board # rubocop:todo Metrics/PerceivedComplexity
    puts " #{@tokens[0] || ' '} | #{@tokens[1] || ' '} | #{@tokens[2] || ' '} "
    puts '-----------'
    puts " #{@tokens[3] || ' '} | #{@tokens[4] || ' '} | #{@tokens[5] || ' '} "
    puts '-----------'
    puts " #{@tokens[6] || ' '} | #{@tokens[7] || ' '} | #{@tokens[8] || ' '} "
    puts
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
