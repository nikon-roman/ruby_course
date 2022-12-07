def sum
    yield(4) + yield(0) + yield(-12)
end  
result = sum{ |x| x < 0 ? x**2 : x }