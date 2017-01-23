require_relative 'word_game'

describe Word_Game do
  let(:game) {Word_Game.new("Hello World")}

  it "takes a word, separates the 
  letters into an array" do
    expect(game.letters).to eq 
    ["h","e","l","l","o","w","o","r","l","d"]
  end

  it "creates an array of _ based on input word length" do
    expect(game.blank("Hello World")).to eq 
    ["_""_""_""_""_"" ""_""_""_""_""_"]
  end

  it "replaces _ with correct guesses" do
    expect(game.guess("l")).to eq 
    ["_""_""l""l""_"" ""_""_""_""_""_"]
  end

  it "adds guessed letters to array" do
    expect(game.guesses).to eq ["l"]
  end

end