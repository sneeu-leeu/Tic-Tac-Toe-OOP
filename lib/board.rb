# rubocop:disable Metrics/CyclomaticComplexity
class Board
  attr_reader :tokens
  def initialize(tokens)
    @tokens = tokens
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
