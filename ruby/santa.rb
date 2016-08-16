
class Santa
  def initialize(gender, ethnicity)
    p "Initializing Santa instance...."
    @name = nil
    @location = "Home"
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

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


  # changes array reindeer_ranking from most preferred to least into a hash
  def ranking
    reindeer_hash = {}
    puts "Please rank reindeer with \n numerical value 9 to 1\n 9 being most favorite\n 1 being least."
    @reindeer_ranking.each do |reindeer|
      p reindeer
      reindeer_hash[reindeer] = gets.to_i
    end
    @reindeer_ranking = reindeer_hash
    
    
    p "Your favorite reindeer is #{@reindeer_ranking.key(9)}"
    p @reindeer_ranking.sort_by {|key, value| value }
    p @reindeer_ranking  
  end
end

jordan = Santa.new("male", "wookie")
jordan.get_name
jordan.speak
jordan.eat_milk_and_cookies("brookie")
jordan.ranking

