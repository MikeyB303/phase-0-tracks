class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do |bork|
    puts "woof"
    end
  end

  def roll_over
    puts "*Rolls Over*"
  end

  def dog_years(age)
    dog_age = age * 7
    puts dog_age
  end

  def human_years(dog_yrs)
    human_age = dog_yrs/7
    puts human_age
  end
  
  def initialize
    puts "Initializing new puppy method..."
  end
end

wilson = Puppy.new
wilson.fetch("ball")
wilson.speak(3)
wilson.roll_over
wilson.dog_years(23)
wilson.human_years(161)


class Skier
  def turn 
    puts "*Turns*"
  end

  def front_flip
    puts "*Does a sick front flip*"
  end
  def initialize
    puts "A new skier is heading down the slope!"
  end
end
the_slopes = {

}
counter = 1
until counter == 51
  new_skier = Skier.new
  the_slopes["skier#{counter}"] = new_skier
  counter += 1
end

the_slopes.each { |skier, action|
  puts "#{skier} #{action.turn} #{action.front_flip}"
}


