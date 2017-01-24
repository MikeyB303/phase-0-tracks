# Virus Predictor
 
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
 
# EXPLANATION OF require_relative
# This will pull in data outside of this file from another file within the same directory.
 
require_relative 'state_data'
 
class VirusPredictor
  #Assigns parameters to instance-variables to be used in the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Uses instance-variables to calculate predicted deaths and spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
 
  private
  #Determines number of deaths based on pop density
 
  def predicted_deaths
    # "Iowa" => {population_density: 54.81, population: 3074186}, 307418
    # "Illinois" => {population_density: 231.9, population: 12875255}, 5150102
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
      number_of_deaths =
 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
 
  end
  #predicts spread speed based on pop density of the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
 
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
 
    puts " and will spread across the state in #{speed} months.\n\n"
 
  end
 
end
 
#=======================================================================
 
# DRIVER CODE
 # initialize VirusPredictor for each state
 
STATE_DATA.each do |state, values|
  state = VirusPredictor.new(state, values[:population_density], values[:population])
  state.virus_effects
end
 
 
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
 
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
 
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
 
 
#=======================================================================
# Reflection Section