class Pizza
  @@count = 0
  attr_reader :d, :number
  attr_writer :ingredients

  def initialize(d, ingredients = [])
    @@count += 1   
    @d = d
    @number = @@count
    @ingredients = ingredients
  end
  
  def description
    "Піца № #{ @number } (діагональ = #{@d}) містить [#{ @ingredients.join }]."
  end
end

pizza1 = Pizza.new(24)
puts pizza1.ingredients = []
puts pizza1.description