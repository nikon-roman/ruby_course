class PhoneFormatException < StandardError
    def initialize(phone)
        @phone = phone
    end

    def to_s
        "Phone number #{ @phone } is incorrect. You should enter phone in format +38dddddddddd"
    end
end

module Validation
    def phone_valid?(phone)
        phone.match?(/\+38\d{10}/)
    end
end

class User
    include Validation

    attr_reader :name
        
    def initialize(name)
        @name = name
    end

    def phone=(phone)
        if phone_valid?(phone)
            @phone = phone
        else
            raise PhoneFormatException.new(phone)
        end
    end
end

user = User.new('Name')
user.phone = '80677605971'