#write your code here

# ADD
def add(a,b)
    a + b
end

# SUBTRACT
def subtract(a,b)
    a - b
end

# SUM
def sum(a)
    result = 0;
    if a.length == 0
        return result
    else
        a.each do |n|
            result += n
        end
    end

    return result
end

# MULTIPLY
def multiply a
    result = 1
    a.each do |n|
        result *= n
    end

    return result
end

# POWER
def power(a,b)
    a**b
end

# FACTORIAL
def factorial a
    if a == 0 || a == 1
        1
    else
        a * factorial(a-1)
    end
    
end

puts factorial(10)