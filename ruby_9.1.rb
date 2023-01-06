def palindrome? (str)
    str = str.downcase
    str == str.reverse ? true : false
 end