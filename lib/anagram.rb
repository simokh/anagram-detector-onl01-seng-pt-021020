class Anagram


   attr_accessor :word

  def intialize(word)
    @word = word
  end

  def match(array)
    array.select do |word|
     word.split("").sort == @word.split("").sort
      end
   end
end
