require 'pp'
class Santa
  attr_reader :location
  attr_writer :age, :name, :gender, :ethnicity
  def initialize(gender, ethnicity)
    p "Initializing Santa instance...."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  @position = 0
  @age = 0
  @name = ''
  @location = "Home"
  
  #sets value of @name
  def get_name
    puts "Whats your name?"
    @name = gets.chomp
  end

  #getter methods for attributes
  def age
    puts "#{@name} how old are you?"
    @age = gets.to_i
  end

  def celebrate_birthday
    p @age + 1
  end

  def speak
    p "Ho, ho, ho! Happy holidays"
  end

  def eat_milk_and_cookies(cookie)
    p "#{@name} said hat was a good #{cookie}"
  end

  #@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
 
  # changes array reindeer_ranking from most preferred to least into a hash
  def ranking
    reindeer_hash = {}
    puts "Please rank reindeer with \n numerical value 1 to 9\n 1 being most favorite\n 9 being least."
    @reindeer_ranking.each do |reindeer|
      p reindeer
      reindeer_hash[reindeer] = gets.to_i
    end
    reindeer_hash
    @reindeer_ranking = reindeer_hash
    p "#{@name} Your favorite reindeer is #{@reindeer_ranking.key(1)}"
    reindeer_hash.sort_by {|key, value| value }
    @reindeer_ranking = reindeer_hash
    pp @reindeer_ranking  
    reindeer_arr = []
    @reindeer_ranking.each do |key, value|
      reindeer_arr.insert(value - 1, key)
    end
    @reindeer_ranking = reindeer_arr.compact!
  end

  def get_mad_at
    puts "Who's in trouble?"
    reindeer = gets.chomp.capitalize!
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer

    #@reindeer_ranking.rotate(@reindeer_ranking.index(reindeer))
    p @reindeer_ranking
  end
end

jordan = Santa.new("male", "wookie")
#jordan.get_name
#jordan.speak
#jordan.eat_milk_and_cookies("brookie")
#jordan.ranking
jordan.age
jordan.get_mad_at
jordan.gender = "anti-gender"
jordan.ethnicity = "mohican"
jordan.celebrate_birthday
pp jordan



#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#
##santas = []
##santas << Santa.new("agender", "black")
##santas << Santa.new("female", "Latino")
##santas << Santa.new("bigender", "white")
##santas << Santa.new("male", "Japanese")
##santas << Santa.new("female", "prefer not to say")
##santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
##santas << Santa.new("N/A", "N/A")
#def multiply(x,y)
#  x * y
#end
#
#
#
#counter = 0
#random_gender_integer = Random.rand(1..example_genders.length) 
#random_ethnicities_integer = Random.rand(1..example_ethnicities.length)
#
#random_integer = multiply(random_gender_integer, random_ethnicities_integer)
#
#until counter == random_integer
#  santas << Santa.new(example_genders[Random.rand(example_genders.length + 1)], example_ethnicities[Random.rand(example_ethnicities.length + 1)])
#  puts "There are now #{santas.length}"
#  counter += 1
#end 
#
#pp santas
#p santas.length
#puts "The counter length is #{counter}" 
#puts "Result of random integer based upon example_genders length is #{random_gender_integer}."
#puts "Result of random integer based upon example example_ethnicities length is #{random_ethnicities_integer}."
#p random_integer
#pp @reindeer_ranking


