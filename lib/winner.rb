class Winner
  attr_reader :choices
  # rubocop:todo Style/ClassVars
  # rubocop:todo Naming/VariableName
  @@WINNING_POS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  # rubocop:enable Naming/VariableName
  # rubocop:enable Style/ClassVars

  def initialize(choices)
    @choices = choices
  end

  def real_win?
    @@WINNING_POS.any? do |combination|
      return true if combination.all? { |element| @choices.include?(element) }
    end
    false
  end
end
