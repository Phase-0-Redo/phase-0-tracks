require 'pp'
class Santa
  attr_reader :location, :name
  attr_writer :age, :gender, :ethnicity, :position
  def initialize(gender, ethnicity)
    p "Initializing Santa instance...."
    @gender = gender
    @ethnicity = ethnicity
    @position = 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  
  @age = 0
  @name = ''
  @location = "Home"
  
  #sets value of @name
  def get_name
    puts "Whats your name?"
    @name = gets.chomp
    puts
  end

  def age
    puts "#{@name} how old are you?"
    @age = gets.to_i
    puts
  end

  def celebrate_birthday
    p @age + 1
    puts
  end

  def speak
    p "Ho, ho, ho! Happy holidays"
    puts
  end

  def eat_milk_and_cookies(cookie)
    p "#{@name} said hat was a good #{cookie}"
    puts
  end
 
  # changes array reindeer_ranking from most preferred to least into a hash
  def ranking
    reindeer_hash = {}
    reindeer_arr = []
    puts "Please rank reindeer with \n numerical value 1 to 9\n 1 being most favorite\n 9 being least.\n"
      @reindeer_ranking.each do |reindeer|
        p reindeer
        reindeer_hash[reindeer] = gets.to_i
      end
    @reindeer_ranking = reindeer_hash
    p "#{@name} Your favorite reindeer is #{@reindeer_ranking.key(1)}"
    reindeer_hash.sort_by {|key, value| value }
      @reindeer_ranking.each do |key, value|
        reindeer_arr.insert(value - 1, key)
      end
    @reindeer_ranking = reindeer_arr.compact!
    puts
  end

  def get_mad_at
    valid_input = false
    until valid_input == true  
      puts "Which reindeer is in trouble?"
      reindeer = gets.chomp.capitalize!
        if @reindeer_ranking.include?(reindeer) == false
          puts "Sorry one of Santa's known reindeers." 
        elsif @reindeer_ranking.include?(reindeer) == true
          @reindeer_ranking.delete(reindeer)
          @reindeer_ranking << reindeer
          valid_input = true
        end
    end
    p @reindeer_ranking
    puts
  end
  puts
end

def multiply(x,y)
  x * y
end

def new_age
  new_age = (1..140).to_a
  @age = new_age.sample
end

#jordan = Santa.new("male", "wookie")
#jordan.get_name
#jordan.speak
#jordan.eat_milk_and_cookies("brookie")
#jordan.ranking
#jordan.age
#jordan.name
#jordan.get_mad_at
#jordan.gender = "anti-gender"
#jordan.ethnicity = "mohican"
#jordan.celebrate_birthday
#jordan.age = "#{new_age}"
#jordan.gender = "stormtrooper"
#
#pp jordan



santas = []
example_genders = ["agender", "bigender", "cis", "female", "gender fluid", "male", "neither", "pangender", "transgender", "N/A"]
example_ethnicities = ["black", "latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "wookie", "sith", "antarctican", "Japanese-Norwegian", "N/A"]

counter = 0
random_gender_integer = Random.rand(1..example_genders.length) 
random_ethnicities_integer = Random.rand(1..example_ethnicities.length)
random_integer = multiply(random_gender_integer, random_ethnicities_integer)

#until counter == random_integer
#  santas << Santa.new(example_genders[Random.rand(example_genders.length + 1)], example_ethnicities[Random.rand(example_ethnicities.length + 1)])
#  puts "There are now #{santas.length}"
#  counter += 1
#end

until counter == 30

  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "There are now #{santas.length}"
  @position = "#{santas.length}"
  p @position
  counter += 1
end 


pp santas
#p santas.length
#puts "The counter length is #{counter}" 
#puts "Result of random integer based upon example_genders length is #{random_gender_integer}."
#puts "Result of random integer based upon example example_ethnicities length is #{random_ethnicities_integer}."
#p random_integer
#pp @reindeer_ranking


