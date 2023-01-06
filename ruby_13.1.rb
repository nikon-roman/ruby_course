def sqrt(a)
    raise StandardError, "The root of a negative number does not exist in rational numbers" if a < 0

    Math.sqrt(a).round(4)
end
    
puts sqrt(-16)