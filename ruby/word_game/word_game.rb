# game class

class Word_Game

  def initialize
    @word = []
    @guess_count = 0
    @is_over = false
  end

  def letters(input)
    @word = @word.push(input)
    @word.split('')
  end





end