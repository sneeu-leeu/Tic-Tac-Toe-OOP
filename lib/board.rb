class Board
  attr_reader :display_board
  def initialize(display_board = [1, 2, 3, 4, 5, 6, 7, 8, 9])
    @display_board = display_board
  end

  def display
    tables = ''
    display_board.each_with_index do |element, index|
      tables += element.to_s if [2, 5, 8].include?(index)
      tables += "\n-----------\n" if [2, 5].include?(index)
      tables += "#{element} | " unless [2, 5, 8].include?(index)
    end
    tables
  end

  def update_board(position, sign)
    display_board[position] = sign
  end

  def is_valid?(content) # rubocop:todo Naming/PredicateName
    @display_board.include?(content)
  end
end
