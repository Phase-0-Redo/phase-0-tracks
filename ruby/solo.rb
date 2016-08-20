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
require 'pp'
class Drink_order
  attr_reader :name, :decaf
  attr_accessor :drink_size, :iced, :number_of_shots, :cup_sizes 

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
      puts
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
        puts "I'm sorry, I have not had my coffee\n one more time please.\n"
        puts
      end
    end
    puts
  end

  def size
    cup_sizes = ["small", "medium", "large"]
    not_size = ["tall", "grande", "venti"]
    valid_input = false
    until valid_input
        if @decaf == false
          puts "#{@name}, how tired are you?"
          pp cup_sizes
        elsif @decaf == true
          puts "#{@name}, how not tired are you?"
          pp cup_sizes
        end
      answer = gets.chomp
      puts
      if cup_sizes.include?(answer)
        @drink_size = answer
        valid_input = true
      elsif not_size.include?(answer)
        puts "Where do you think you are starbucks?"
        puts
      else
        puts "I'm sorry I did not recognize that size."
        puts
      end
    end
  end

end 

order_1 = Drink_order.new
order_1.name
order_1.decaf
order_1.size
p order_1

