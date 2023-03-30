class Pizza
  @@count = 0
  
  def initialize(ingredients)
    @@count += 1
    @number = @@count
    @ingredients = ingredients.join(',')
  end
  
  def description
    "Піца № #{ @number } містить [#{ @ingredients }]."
  end
end
  
pizza1 = Pizza.new(['mushroom', 'cheese'])
pizza2 = Pizza.new(['mushroom', 'cheese', 'cherry'])
puts(pizza1.description)
puts(pizza2.description)
  