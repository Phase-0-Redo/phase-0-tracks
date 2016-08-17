require 'pp'
class Santa
  def initialize(gender, ethnicity)
    p "Initializing Santa instance...."
    @location = "Home"
    @gender = gender
    @ethnicity = ethnicity
  end
  @age = 0
  @age = 0
  #sets value of @name
  def get_name
    puts "Whats your name?"
    @name = gets.chomp
  end

  def speak
    p "Ho, ho, ho! Happy holidays"
  end

  def eat_milk_and_cookies(cookie)
    p "#{@name} said hat was a good #{cookie}"
  end

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  # changes array reindeer_ranking from most preferred to least into a hash
  def ranking
    reindeer_hash = {}
    puts "Please rank reindeer with \n numerical value 1 to 9\n 1 being most favorite\n 9 being least."
    @reindeer_ranking.each do |reindeer|
      p reindeer
      #reindeer_hash[reindeer] = (Random.rand(1..9))
      reindeer_hash[reindeer] = gets.to_i
    end
    @reindeer_ranking = reindeer_hash
    p "#{@name} Your favorite reindeer is #{@reindeer_ranking.key(1)}"
    reindeer_arr = @reindeer_ranking.sort_by {|key, value| value }
    p reindeer_arr
    #pp @reindeer_ranking  
  end

  def age
    puts "#{@name} how old are you?"
    @age = gets.to_i
  end
end

#jordan = Santa.new("male", "wookie")
#jordan.get_name
#jordan.speak
#jordan.eat_milk_and_cookies("brookie")
#jordan.ranking
#jordan.age

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

example_genders.length.times do |i|
  santas << Santa.new(example_genders[Random.rand(example_genders.length + 1)], example_ethnicities[Random.rand(example_ethnicities.length + 1)])
end

pp santas
