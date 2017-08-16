#write your code here

# SIMON SAYS

# ECHO HELLO
def echo greeting
    greeting
end

# SHOUT
def shout what
    what.upcase
end

# REPEAT
def repeat (what, how_many = 2)
  ("#{what} " * how_many).strip
end

# START OF WORD
def start_of_word(word, how_many)
    word[0..how_many - 1]
end

# FIRST WORD
def first_word word
    word.split(" ")[0]
end

# TITLEIZE
def titleize(word)
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"];
    result = ""
    word.split(" ").each_with_index do |arg, i|
        if words_no_cap.include?(arg) && i != 0
          result += " "+arg
        else
          result += " "+arg.capitalize
        end
    end

    return result.strip
end

puts titleize("hello boy")
