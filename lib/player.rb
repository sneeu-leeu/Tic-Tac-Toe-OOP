class Players
  attr_reader :name, :sign, :choice
  def initialize(name, sign = nil, choice = nil )
    @name = name
    @sign = sign
    @choice = choice
  end
end

class Compare 
  def initialize(item_1, item_2)
    @item_1 = item_1
    @item_2 = item_2
  end

  def is_empty?
    @item_1.empty? && @item_2.empty?
  end

  def is_equal?
    @item_1 == @item_2
  end

  def is_missing?
    @item_1.empty? || @item_2.empty?
  end

end