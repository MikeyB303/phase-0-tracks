# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end 
# end

# puts Shout.yell_angrily("I hate waking up")
# puts Shout.yelling_happily("I love life")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Angry_gamer
  include Shout
end

class Happy_kids
  include Shout
end

gamer = Angry_gamer.new
kids = Happy_kids.new

puts gamer.yell_angrily("I LOST BECAUSE OF MY CONTROLLER")
puts kids.yelling_happily("RECESS")
