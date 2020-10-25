class Players
  attr_reader :name, :sign, :choice
  def initialize(name, sign = nil, choice = nil)
    @name = name
    @sign = sign
    @choice = choice
  end
end

class Compare
  def initialize(item1, item2)
    @item1 = item1
    @item2 = item2
  end

  def is_empty? # rubocop:todo Naming/PredicateName
    @item1.empty? && @item2.empty?
  end

  def is_equal? # rubocop:todo Naming/PredicateName
    @item1 == @item2
  end

  def is_missing? # rubocop:todo Naming/PredicateName
    @item1.empty? || @item2.empty?
  end
end
