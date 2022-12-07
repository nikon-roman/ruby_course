def matrix_params(arr)
    m = u = o = 0

    #обчислення суми усіх чисел в масиві
    total = 0
    arr.each do |i| 
        i.each do |j|
            total += j
        end
    end

    #обчислення суми головної діагоналі
    for i in 0...arr.size do
        m += arr[i][i]
    end

    #обчислення суми над головною діагоналлю
    for i in 0...arr.size do
        for j in i...arr.size do
            u += arr[i][j]  
        end
    end
    u -= m

    #обчислення суми під головною діагоналлю
    o = total - m - u

    {'m'=> m, 'u'=> u, 'o'=> o}
end

puts(matrix_params([[1,2,3],[4,5,6],[7,8,9]]))