class Puppy

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

spot = Puppy.new
spot.fetch("ball")
spot.speak(5)
spot.rollover
spot.dog_years(3)
spot.favorite_food("chicken")