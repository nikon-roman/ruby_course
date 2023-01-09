def third_order(max)
    count = 0

    begin
        count += 1
        first_val = rand(max)
        puts("What is result #{ first_val } * #{ first_val } * #{ first_val }?")
        second_val = gets.to_i
        return "Good job" if first_val**3 == second_val
        1/0
    rescue
        retry if count < 3
    end

    return "Try next time"
end

puts third_order(5)