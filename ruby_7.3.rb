def check_password(arg1, arg2)
    proc{ |x1, x2| x1 == arg1 && x2 == arg2 ? true : false }
end