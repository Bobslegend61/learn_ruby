#write your code here
def ftoc(value)
    f = (value - 32) * 5/9
    return f
end

def ctof value
    ((value * 1.8) + 32).round(1)
end

puts ctof(37)