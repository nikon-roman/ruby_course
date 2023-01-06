class Pizza
    @@count = 0
    
    def initialize(d, ingredients)
      @@count += 1
      d == 25 || d == 50 ? @d = d : @d = 0
      if @d == 25 || @d == 50 
        @number = @@count
      else
        @number = 0
        @@count -= 1
      end
      @d == 25 || @d == 50 ? @ingredients = ingredients.join(',') : @ingredients
    end
    
    def description
      "Піца № #{ @number } (діагональ = #{@d}) містить [#{ @ingredients }]."
    end
  end
  
  pizza1 = Pizza.new(10, ["mushroom", "cheese"])
  pizza2 = Pizza.new 25, ["mushroom", "cheese", "cherry"]
  pizza3 = Pizza.new 25, ["mushroom", "cheese", "cherry"]
  pizza4 = Pizza.new(10, ["mushroom", "cheese"])
  pizza5 = Pizza.new 25, ["mushroom", "cheese", "cherry"]
  puts pizza4.description 