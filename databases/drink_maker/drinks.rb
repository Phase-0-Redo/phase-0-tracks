require 'pp'

# array for storing drinks
$drinks_arr = []

#def new_drink

#each drink is hash itself
$drink = {
  customer_name: nil,
  drink_type: nil,
  decaf: false,
  shots: 0,
  flavor: nil,
  pumps_flavor: 0,
  milk: nil,
  other: nil
}


#user input for customer name
def customer_name
  puts "Whats your name?"

  #customer = gets.chomp
  $drink[:customer_name] = gets.chomp
  #puts
end

#user input for drink type
def drink_type
  puts "What can I get for you?"
  #type = gets.chomp
  $drink[:drink_type] = gets.chomp
  puts
end

#user input for decaf
def decaf
  puts "Do you want to make this decaf?"
  answer = gets.chomp
    if answer == "no" || answer == "nope"
      #decaf = false
      $drink[:decaf] = 'false'
    elsif answer == "yes"
      #decaf = true
      $drink[:decaf] = 'true'
    end
  puts
end


#user input for shots
def shots
  puts "How many shots would you like?"
  #shots = gets.to_i
  $drink[:shots] = gets.to_i
  puts
end 
  #puts

#user input for flavor
  def flavor
    puts "Would you like any flavor?"
    answer = gets.chomp.downcase
      if answer == "yes"
        puts "What kind of flavor?"
        #flavor = gets.chomp
        $drink[:flavor] = gets.chomp
        puts
      elsif answer == "no"
        puts "I love the pure taste of a drink"
        #flavor = nil
        $drink[:flavor] = nil
        puts
      else
        puts "I am sorry that does not compute"
        puts
      end
      #return flavor
  end

  #user input for amount of flavor
  def pumps
      if $drink[:flavor] == nil
      #if drink[:flavor] == nil
        #puts "No worries"
        #pumps = 0
        $drink[:pumps_flavor] = 0
        puts
      else
      #elsif drink[:flavor] 
        puts "How many pumps?"
        $drink[:pumps_flavor] = gets.to_i
        puts
      end
  end


#user input for milk type
def milk
  puts "Got milk? What kind can I get you?"
  answer = gets.chomp.downcase
    if answer == "no" || answer == "none"
      #milk = nil
      $drink[:milk] = nil
    else
      #milk = answer
      $drink[:milk] = answer
    end
    puts
end

#user input for other
def other
  puts "Any other input?"
  answer = gets.chomp.downcase
    if answer == "no" || answer == "nope"
      #other = nil
      $drink[:other] = nil
    elsif answer == "yes"
      puts "What can we do for you?"
      #other = gets.chomp
      $drink[:other] = gets.chomp
    else
      $drink[:other] = "#{answer}"
    end
  
  #p drink
end
#end
#initial drink order
#drinks_arr << new_drink

def drink_builder
  customer_name
  drink_type
  decaf
  shots
  flavor
  pumps
  milk
  other
  #drink = {}
  #drink[:name] = customer_name
  #drink[:type] = drink_type
  #drink[:decaf] = decaf
  #drink[:shots] = shots
  #drink[:flavor] = flavor
  #drink[:pumps] = pumps
  #drink[:milk] = milk
  #drink[:other] = other
pp $drink
end

drink_builder
 

  #adds into the array until user is done
#  valid_input = false
#  until valid_input
#    puts "Do you want to place an order?"
#    answer = gets.chomp.downcase
#      if answer == "yes"
#        $drinks_arr << new_drink
#        pp $drinks_arr
#      elsif answer == "no"
#        valid_input = true
#      else 
#        puts "Well maybe another time."
#      end
#  end

#$drinks = drinks_arr

#for visualization
#pp drinks_arr

#for testing
#p drinks_arr[0][:flavor]

