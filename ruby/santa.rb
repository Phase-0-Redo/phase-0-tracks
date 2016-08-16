
class Santa
  def initialize
    p "Initializing Santa instance...."
    @name = ""
    @location = "Home"
  end

  def speak
    p "Ho, ho, ho! Happy holidays"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}"
  end


end

jordan = Santa.new
jordan.speak
jordan.eat_milk_and_cookies("brookie")