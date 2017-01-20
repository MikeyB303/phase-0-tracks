class Santa
  
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
  
  #getters
  def age
    puts @age
  end

  def ethnicity
    puts @ethnicity
  end

  def reindeer_ranking
    puts @reindeer_ranking
  end
end

santa = Santa.new("agender", "Japanese")

santa.speak
santa.eat_milk_and_cookies("double chocolate chip crunch")
santa.get_mad_at("Vixen")
santa.reindeer_ranking
santa.celebrate_birthday
santa.gender = "Female"
santa.age
santa.ethnicity
