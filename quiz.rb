divider = 21
counter = 1
while true
    print("Введіть число, яке буде ділитися на #{ divider }: ")
    answer = gets.to_i
    if answer == divider
        puts("Число не повинно дорівнювати #{ divider }")
        counter += 1
        if counter > 5
            puts("Кількість спроб завершилася :(")
            break
        end 
    elsif answer % divider == 0
        puts("Чудово")
        break
    else
        puts("Невірно. Спробуйте ще раз")
        counter += 1
        if counter > 5
            puts("Кількість спроб завершилася :(")
            break
        end 
    end
end