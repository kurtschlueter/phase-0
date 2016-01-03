# Virus Predictor

# I worked on this challenge [with: Marshall Sosland].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
# require_relative says that this program needs another file and gives the relative path.  - used for local files
# require is used for the absolute path - used for external libraries or sources

require_relative 'state_data'

class VirusPredictor

  #creating instance variables for state, pop density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

    # private

  #this method calls the other two methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # this method calculates the number of deaths in a state based on its pop and pop density
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 150..199 then number_of_deaths = (@population * 0.3).floor
      when 100..149 then number_of_deaths = (@population * 0.2).floor
      when 50..99 then number_of_deaths = (@population * 0.1).floor
      when 0..49 then number_of_deaths = (@population * 0.05).floor
      else
        number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #this method calcs the speed that the virus will spread based on pop density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case @population_density
      when 150..199 then speed = 1
      when 100..149 then speed = 1.5
      when 50..99 then speed = 2
      when 0..49 then speed = 2.5
      else
        speed = 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
  a = VirusPredictor.new(key, value[:population_density], value[:population])
  a.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One is a symbol and the other is a string. A symbols gets set once and stored only once so it is momre efficient and takes less data. A symbol, however, can never be changed. It is set permanently at the onset.

# What does require_relative do? How is it different from require?
  # Locally, require_relative gives access to a file from an alternate path. require gives access to a file from an absolute path. Require also has public functionality as well. It can be used for external libraries or sources.

# What are some ways to iterate through a hash?
  # We used .each. That is all we needed for this assignment.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The inputs were not needed since they were all defined during initialization. It was redundant.

# What concept did you most solidify in this challenge?
  # Refactoring to be honest. The guide pushed us to try and use the case when statement instead of the if else statement. I thought it was a waste of time but the switch case looks way better. I was wrong.