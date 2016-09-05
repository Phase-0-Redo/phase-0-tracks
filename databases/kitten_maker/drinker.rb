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
    starbucks_size = ["tall", "grande", "venti"]
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
      elsif starbucks_size.include?(answer)
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

  def determine_creature(temp, decaf, shots, size)
    temp = @iced
    decaf = @decaf
    shots = @number_of_shots
    size = @drink_size
    if temp && decaf && shots == 0 && size == "small"
      puts "#{@name} you might be a vampire."
    elsif 
      temp && decaf && shots > 0 && size == "medium"
      puts "#{@name} you might be a ghost."
    elsif 
      temp && decaf && shots > 0 && size == "large"
      puts "#{@name} you might be a yeti."
    elsif
      !temp && !decaf && shots > 0 
      puts "#{@name} you might be a zombie"
    else
      puts "#{@name} you might be a human"
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
  drink_hash ={}
  drink_hash["name"] = drink.name
  drink_hash["decaf"] = drink.decaf
  drink_hash["size"] = drink.size
  drink_hash["hot or cold"] = drink.hot_or_cold
  drink_hash["shot quantity"]= drink.shot_quantity
  #drink.printout(@name, @iced, @decaf)
  drink.determine_creature(@iced, @decaf, @shot_quantity, @drink_size)
  drink
end


$drink_queue = []
valid_input = false
until valid_input
  puts "Can I get an order started for you?\nWhen done order type done, when ready."
    answer = gets.chomp.downcase
    if answer == "yes"

      $drink_queue << new_drink
      

    elsif answer == "no"
      puts "Maybe another time."
      valid_input = true
    elsif answer == "done"
      valid_input = true
    end
end

$drink_queue   
#drink_queue.each do |instance|
#  p instance
#end   

#pp drink_queue