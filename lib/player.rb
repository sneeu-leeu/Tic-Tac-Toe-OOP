class Players
  attr_reader :name, :sign, :choice
  def initialize(name, sign = nil, choice = nil)
    @name = name
    @sign = sign
    @choice = choice
  end
end

class Compare
  def initialize(item_1, item_2) # rubocop:todo Naming/VariableNumber
    @item_1 = item_1 # rubocop:todo Naming/VariableNumber
    @item_2 = item_2 # rubocop:todo Naming/VariableNumber
  end

  def is_empty? # rubocop:todo Naming/PredicateName
    @item_1.empty? && @item_2.empty?
  end

  def is_equal? # rubocop:todo Naming/PredicateName
    @item_1 == @item_2
  end

  def is_missing? # rubocop:todo Naming/PredicateName
    @item_1.empty? || @item_2.empty?
  end
end
