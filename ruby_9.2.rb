def remove_vowels(str)
    if str.count('AEIOUaeoiu') == 0
        return str
    else
        return str.gsub(/["aeoiu"]/i, '')
    end
end