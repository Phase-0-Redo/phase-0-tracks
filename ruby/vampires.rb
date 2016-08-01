puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
year = gets.chomp

valid_input = false
  until valid_input
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
  garlic = gets.chomp
    if garlic == "yes"
      puts "One order for #{name}"
      valid_input = true
    elsif garlic == "no"
      puts "No garlic bread for #{name}"
      valid_input = true
    else
      puts "I'm sorry yes or no"
    end
  end
    
    
valid_input = false
  until valid_input
  puts "Would you like to enroll in the company's health insurance?(yes or no)"
  insurance = gets.chomp
    if insurance == "yes"
      puts "We have great medical coverage, #{name}"
      valid_input = true
    elsif insurance == "no"
      puts "#{name}, it's cool I get it."
      valid_input = true
    else
      puts "I'm sorry yes or no"
    end
  end





p name
p age
p year
p garlic
p insurance