require 'pp'
require 'sqlite3'

# array for storing drinks
drinks_arr = []

def new_drink
#each drink is hash itself
drink = {
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
  puts "Whats your name?"
  drink[:customer_name] = gets.chomp
  puts

#user input for drink type
  puts "What can I get for you?"
  drink[:drink_type] = gets.chomp
  puts

#user input for decaf
  puts "Do you want to make this decaf?"
  drink[:decaf] = gets.chomp
  puts

#user input for shots
  puts "How many shots would you like?"
  drink[:shots] = gets.to_i
  puts

#user input for flavor
  puts "Would you like any flavor?"
  answer = gets.chomp.downcase
    if answer == "yes"
      puts "What kind of flavor?"
      drink[:flavor] = gets.chomp
      puts
    elsif answer == "no"
      puts "I love the pure taste of a drink"
      drink[:flavor] = nil
      puts
    else
      puts "I am sorry that does not compute"
      puts
    end
 

#user input for amount of flavor
  if drink[:flavor] == nil
    puts "No worries"
    drink[:pumps_flavor] = 0
    puts
  elsif drink[:flavor] 
    puts "How many pumps?"
    drink[:pumps_flavor] = gets.to_i
    puts
  end

#user input for milk type
  puts "Got milk? What kind can I get you?"
  answer = gets.chomp.downcase
    if answer == "no" || "none"
      drink[:milk] = nil
    else
      drink[:milk] = answer
    end
    puts

#user input for other
  puts "Any other input?"
  answer = gets.chomp.downcase
    if answer == "no"
      drink[:other] = nil
    elsif answer == "yes"
      puts "What can we do for you?"
      drink[:other] = gets.chomp
     else 
      puts "That does not compute"
    end
  
  p drink
end

#initial drink order
drinks_arr << new_drink


  #adds into the array until user is done
  valid_input = false
  until valid_input
    puts "Do you want to place another order?"
    answer = gets.chomp.downcase
      if answer == "yes"
        drinks_arr << new_drink
      elsif answer == "no"
        valid_input = true
      else 
        puts "Well maybe another time."
      end
  end

drink_arr.each do |order|
db.execute("INSERT INTO drink_table(
    customer_name, 
    drink_type, 
    decaf, 
    shots, 
    flavor, 
    pumps_flavor, 
    milk, 
    other
  ) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [
    customer_name,
    drink_type,
    decaf,
    shots,
    flavor,
    pumps_flavor,
    milk,
    other
  ]
  )
end
#for visualization
#pp drinks_arr

#for testing
#p drinks_arr[0][:flavor]

