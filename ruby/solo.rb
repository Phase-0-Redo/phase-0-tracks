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
class Drink
  attr_reader :name, :decaf
  attr_accessor :drink_size, :iced, :number_of_shots

  def initialize
    puts "Warming up robobarista..."
    @name = ""
    @decaf = false
  end

  def name
    puts "Hi I'm robobarista Hal 9000.\n What is your name?\n"
    @name = gets.chomp
  end

  def decaf
    valid_input = false
    until valid_input
    puts "#{@name} you seem tired. Is that true? yes or no"
      answer = gets.chomp.downcase
      if answer == "yes"
        puts "No, decaf for you."
        @decaf = false
        valid_input = true
      elsif answer == "no"
        puts "Come on, embrace the dark side."
        @decaf = true
        valid_input = true
      else
        puts "I'm sorry, I have not had my coffee\n one more time please.\n"
      end
    end
  end

  def size
    cup_sizes = ["small", "medium", "large"]
    not_size = ["tall", "grande", "venti"]
    valid_input = false
    until valid_input
        if @decaf == false
          puts "#{@name}, how tired are you?"
          cup_sizes.each do |size|
            p size
          end
        elsif @decaf == true
          puts "#{@name}, how not tired are you?"
          cup_sizes.each do |size|
            p size
          end
        end
      answer = gets.chomp
      if cup_sizes.include?(answer)
        @drink_size = answer
        valid_input = true
      elsif not_size.include?(answer)
        puts "Where do you think you are starbucks?"
      else
        puts "I'm sorry I did not recognize that size."
      end
    end
  end

  def hot_or_cold
    valid_input = false
    until valid_input
      puts "Is this going to be hot or cold?"
    answer = gets.chomp.downcase
      if answer == "hot"
        @iced = false
        valid_input = true
      elsif answer == "cold"
        @iced = true
        valid_input = true
      else
        puts "That does not compute. Hot or Iced?"
      end
    end
  end

  def shot_quantity
    puts "How many shots would you like today?"
    answer = gets.to_i
      if answer < 8
        puts "Shots...\n" * answer
        @number_of_shots = answer
      elsif answer >= 8
        puts "You may want to consult a physician\nbut okay."
        @number_of_shots = answer
      else
        puts "How many?"
      end
  end

  def printout(name, temp, decaf)
    name = @name 
    temp = @iced
    decaf = @decaf
    puts "#{@name} I have your drink."
      if @iced == true
        puts "It's something cold."
      elsif @iced == false
        puts "It's something hot."
      end
  end
end 

def new_drink
  drink = Drink.new
  drink.name
  drink.decaf
  drink.size
  drink.hot_or_cold
  drink.shot_quantity
  drink.printout(@name, @iced, @decaf)
end

#order_1 = Drink.new
#order_1.name
#order_1.decaf
#order_1.size
#order_1.hot_or_cold
#order_1.shot_quantity
#p order_1

drink_queue = []
valid_input = false

until valid_input
  puts "Can I get an order started for you?\nWhen done order type done, when ready."
    answer = gets.chomp.downcase
    if answer == "yes"
      drink_queue << new_drink
    elsif answer == "no"
      puts "Maybe another time."
      valid_input = true
    elsif answer == "done"
      valid_input = true
    end
end
   
drink_queue.each do |instance|
  p instance
end   




