require 'pp'

class Puppy
  def initialize
    puts "initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof! " * integer
  end

  def rollover
    puts "*rollover*"
  end

  def dog_years(human_years)
    dog_age = human_years * 7
    p dog_age
  end

  def favorite_food(flavor)
    puts "My favorite flavor of food is #{flavor}."
  end
end

class Kitty
  def initialize
    puts "initializing new kitty instance"
  end

  def purr
    puts "PURR!!"
  end

  def cat_years(human_years)
    cat_years = human_years * 9
    p cat_years
  end
end



#spot = Puppy.new
#spot.fetch("ball")
#spot.speak(5)
#spot.rollover
#spot.dog_years(3)
#spot.favorite_food("chicken")
#
#hello = Kitty.new
#hello.purr
#hello.cat_years(2)
kitty_array = []
x = 0
i = 50

while x < i
  kitty_array << Kitty.new 
  puts "new instance #{x}"
  x += 1
end

pp kitty_array

kitty_array.each do |instance|
  instance.purr
  instance.cat_years(2)
end