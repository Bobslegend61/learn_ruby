class Book
# write your code here
  attr_accessor :title

  def title=(book)
    exp = ["a","and","the","to","is","an","there","in","for","at","on","of"]
    @title = book.split(" ").map.with_index do |w, i|
      if !exp.include?(w) || (i == 0 && exp.include?(w))
        w.capitalize
      else
        w
      end
    end.join(" ")
  end
end
