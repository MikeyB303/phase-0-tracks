# game class

class Word_Game

  def initialize(input)
    @guess_count = 0
    @is_over = false
    @word = input
    @letters_array = []
  end

  def letters
    @letters_array = @word.downcase.split('')
    @letters_array.delete(" ")
    @letters_array

  end

end

game = Word_Game.new("Hello World")
p game.letters