#write your code here
def translate word
  vowels = ["a","e","i","o"]
  result = word.split("")
  answer = ""
  if word.split(" ").length == 1
    word.split("").each_with_index do |arg, i|
      if vowels.include? arg
          return result.join("")+"ay"
          exit
      else
        result.shift
        result.push(arg)
      end
    end
  else
    word.split(" ").each do |w|
      check = w
      w.split("").each_with_index do |arg, i|
        if vowels.include? arg
            answer += check+"ay"
            break
        else
            check = check.delete arg
            check += arg
        end
      end
       answer += " "
    end
    return answer.strip
  end
end

puts translate("eat pie lie")
