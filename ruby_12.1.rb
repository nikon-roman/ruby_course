module ConsoleInput

    def string
        puts('Enter any string')
        gets.chomp
    end

    def number
        puts('Enter any number')
        value = gets.chomp
        re = /[\.,]/
        value.match?(re) ? value.to_f : value.to_i
    end

    def hash
        puts("Enter hash in format 'key: value' or 'key => value'")
        value = gets.chomp
        re = /.: ./
        if value.match?(re) 
            value = value.split(": ")
        else
            value = value.split(" => ")
        end
        value2 = {}
        value2[value[0]] = value[1]
        value2
    end

    def symbol
        puts('Enter any letters')
        gets.chomp.to_sym
    end
end