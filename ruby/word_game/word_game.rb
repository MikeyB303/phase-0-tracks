# game class

class Word_Game
  attr_reader :blank_array
  attr_reader :letters_array
  attr_reader :is_over
  attr_reader :guesses
  attr_reader :guess_count

  def initialize(input)
    @guess_count = input.length
    @guesses = 0
    @is_over = false
    @word = input
    @letters_array = []
    @blank_array = []
    @letter_index = nil
    @guess_bank = []
  end

  def letters
    @letters_array = @word.downcase.split('')
    @letters_array
  end

  def blank
    @letters_array.each do |letter|
      if letter != " " 
        @blank_array.push("_")
      else
        @blank_array.push(" ")
      end
    end
  end

  def guess(guess)
    if @guess_bank.include?(guess)
      puts "You already guessed that letter!"
    elsif @letters_array.include?(guess)
      correct_index = @letters_array.each.with_index.find_all{ |a,i| a == "#{guess}"}.map{ |a,b| b }
      correct_index.each do |index|
        @blank_array[index] = guess
      end

    else
      puts "That letter does not belong to the word or phrase. Try again!"
      @guesses += 1
      @guess_bank.push(guess)
    end
  end
end



#user interface
puts "Please enter a word or phrase for your friends to guess"
game = Word_Game.new(gets.chomp)
game.letters
game.blank
p game.blank_array
until game.letters_array == game.blank_array|| game.guesses >= game.guess_count
  puts "guess a letter. #{game.guess_count - game.guesses} guess(es) remaining"
  game.guess(gets.chomp)
  p game.blank_array
end
if game.letters_array == game.blank_array
  puts "Great job!! I knew you could do it!"
end
if game.guesses >= game.guess_count
  puts "Hahaha! I knew you wouldn't get it!"
end
