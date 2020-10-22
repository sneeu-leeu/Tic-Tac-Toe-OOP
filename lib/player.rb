class Players
  attr_accessor :name
  def initialize(name)
    @name = name
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