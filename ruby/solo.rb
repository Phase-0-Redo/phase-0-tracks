=begin

class Coffee
  attr_reader name:,
  attr_accessor size
possible attributes
  name = string
  size => string
  iced => boolean
  decaf => boolean
  flavor => string
  pumpts of flavor => integer
  number of shots => integer
  milk type => string
  custom => string

possible methods
  size => compares a string to an array 
    if present stores size, else asks again
  iced => stores value as true or false using an until loop
  decaf => stores value as true or false using an until loop
  flavor => asks customers input for flavor and stores
  pumps => asks customers input for number of pumps and stores
  shots => asks customers input for number of shots
  milk =>asks for customers input for milk type
  custom => ask for custom inputs
=end

class Drink_order
  attr_reader :name, :decaf
  attr_accessor :size, :iced, :number_of_shots 

  def initialize
    puts "Making drink..."
    @name = ""
    @decaf = false
    puts
  end

  def name
    puts "Hi I'm robobarista Hal 9000.\n Can I get your name?\n"
    @name = gets.chomp
    puts
  end

  def decaf
    valid_input = false
    until valid_input
    puts "#{@name} you seem tired. Is that true? yes or no?"
      answer = gets.chomp.downcase
      if answer == "yes"
        puts
        puts "No, decaf for you."
        @decaf = false
        valid_input = true
      elsif answer == "no"
        puts
        puts "Come on, embrace the dark side."
        @decaf = true
        valid_input = true
      else
        puts "I'm sorry, I have not had my coffee this morning\n one more time please.\n"
      end
    end
    puts
  end
  

end

order_1 = Drink_order.new
order_1.name
order_1.decaf
p order_1

