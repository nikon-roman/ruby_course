class Pizza
  @@count = 0
  @@fail = 0

  def initialize(d, ingredients)
    @@count += 1
  
    if d == 25 || d == 50
      @d = d
      @number = @@count
      @ingredients = ingredients.join(',')
    else
      @d = 0
      @@fail += 1
      @number = 0
      @@count -= 1
      @ingredients
    end
  end
  
  def description
    "Піца № #{ @number } (діагональ = #{@d}) містить [#{ @ingredients }]."
  end
  
  def self.failInstance
    @@fail
  end
end

pizza1 = Pizza.new(10, ["mushroom", "cheese"])
pizza2 = Pizza.new 25, ["mushroom", "cheese", "cherry"]
pizza3 = Pizza.new 50, ["mushroom"]
pizza4 = Pizza.new 100, ["mushroom", "cheese", "cherry"]
puts pizza1.description, pizza2.description, pizza3.description, pizza4.description
puts Pizza.failInstance