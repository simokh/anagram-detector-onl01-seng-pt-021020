require 'pry'
class Anagram 

  attr_accessor :word 

  def initialize(word)
    @word = word 
  end

  def match(array)
    array.select do |word|
      word.split("").sort == @word.split("").sort
    end 
  end 
end

# binding.pry
dino = Anagram.new("dino")
dino.word 
dino = dino.match(%w(nido doni zach back cake)) #when evoked it will return ["nido", "doni"]
simo = Anagram.new("simo")
simo.word
simo = simo.match(%w(nido doni zach back cake)) #when evoked it will return []
