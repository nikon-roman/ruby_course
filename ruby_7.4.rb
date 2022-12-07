def m1(&block)
    return block if block_given?
    'Method without block'
end