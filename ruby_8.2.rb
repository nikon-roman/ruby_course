def count_repetitions(arr, el)
    count = 0
    arr.each { |x| count += 1 if x == el }
    count
end