
class Santa
  def initialize(gender, ethnicity)
    p "Initializing Santa instance...."
    @name = nil
    @location = "Home"
    @gender = gender
    @ethnicity = ethnicity
  end

  def get_name
    puts "Whats your name?"
    name = gets.chomp
    @name = name
  end

  def speak
    p "Ho, ho, ho! Happy holidays"
  end

  def eat_milk_and_cookies(cookie)
    p "#{@name} said hat was a good #{cookie}"
  end


end

jordan = Santa.new("male", "wookie")
jordan.get_name
jordan.speak
jordan.eat_milk_and_cookies("brookie")
