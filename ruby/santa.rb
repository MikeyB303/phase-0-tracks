class Santa
  #attr_reader :age, :ethnicity, :reindeer_ranking (couldn't get these to work)
  #attr_accessor :gender
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  #setters
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)  
    @reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age=(new_age)
    @age = new_age
  end

  def ethnicity=(new_ethnicity)
    @ethnicity = new_ethnicity
  end

  #getters
  def age
    puts @age
  end

  def ethnicity
    puts @ethnicity
  end

  def gender
    puts @gender
  end

  def reindeer_ranking
    puts @reindeer_ranking
  end
end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", 
  "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
counter = 0

until counter == 100
  puts "creating new Santa."
  santa = Santa.new("default", "default")
  santa.gender = genders.sample
  santa.ethnicity = ethnicities.sample
  santa.age = rand(140)
  puts santa.gender
  puts santa.ethnicity
  puts santa.age
  counter += 1 

end

