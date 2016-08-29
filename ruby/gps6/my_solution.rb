# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# almost like a copy and paste of file info
# require_relative takes the data from another file and inputs into the file
# require uses ruby built in
require_relative 'state_data'

class VirusPredictor

  #assigning the parameters to attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # its calls other methods and passes back the results when virus effects
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # comparing the population density and calculate the number of deaths per state
  def predicted_deaths
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # compares pop density of state and creates a time frame 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

=begin
run an iteration over STATE_DATA, 
where we print out our pair of key and value, 
with our STATE as the key, info as our value
=end
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
  
end

#REFLECTION
=begin
There is difference between the hash syntax
 because the keys in STATE_DATA are strings. 
Strings as keys require a hash rocket. 
The values for each key are hashes. 
Within each hash there is another key,
 but this time it is a symbol and it uses colon.
Require relative takes in the data or code from
 a relative file and interpolates it into the file.
 It's a local version of require.
Require loads the data from all different areas of Ruby.
Ways to iterate through a hash are with .each, .each_pair, .reject, .select, .delete_if.
The use of instance variables stood out in refactoring.
Two concepts seemed to solidify more.
 One was calling nested data especially when using an iteration.
 The second was the use of instance variables within instance methods.
=end



