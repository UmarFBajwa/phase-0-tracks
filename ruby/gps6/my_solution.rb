# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows us to access data other files within the same path.
#require requires you to type in the full path whereas when both files are in the same path, then its easier and quicker to use the shortcut require_relative

require_relative 'state_data'

class VirusPredictor

# Initializing an instance of the class and assigns three parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# Method that activates two other methods below
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths.floor} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

# Makes all following methods not accessible for outside objects

private
# Method that takes population density value and calculates the number of deaths based if it is equal to or grather some value. Then prints of result in a statement.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @population * 0.4
    elsif @population_density >= 150
      @population * 0.3
    elsif @population_density >= 100
      @population * 0.2
    elsif @population_density >= 50
      @population * 0.1
    else
      @population * 0.05
    end
  end

# Method calculates speed of spread based on population density and prints result in a statement.
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

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|

  name_of_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[
    state][:population])

  name_of_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The differences is how we store the key and value into the hash. You can use either "key => value" or "key: value".

# What does require_relative do? How is it different from require?
# require_relative is a shortcut you can use to access date from another file in the same path. Otherwise you need to use require and enter the full path description.

# What are some ways to iterate through a hash?
# You can use .each but as parameters make sure to use |key, value|. Did not realize that when doing so initially as we haven't done so before.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# No need to use instance variables as parameters or even having to call the other methods.

# What concept did you most solidify in this challenge?
# How to iterate through hashes within a hash. Also when and when not to use instance variables as parameters.
