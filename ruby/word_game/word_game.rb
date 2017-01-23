# game class

class Word_Game
  attr_reader :blank_array

  def initialize(input)
    @guess_count = 0
    @is_over = false
    @word = input
    @letters_array = []
    @blank_array = []
    @letter_index = nil
  end

  def letters
    @letters_array = @word.downcase.split('')
    @letters_array
  end

  def blank
    @blank_array = @letters_array.each do |letter|
      if letter != " " 
        @letter_index = @letters_array.index(letter)
        @letters_array[@letter_index] = "_"
      end
    end
  end

  def guess(letter)
    if

  end 
end



#user interface
puts "Please enter a word or phrase for your friends to guess"
game = Word_Game.new(gets.chomp)
game.letters
game.blank
p game.blank_array
