puts "What is your name?"
name = gets.chomp

puts "How old are you?"
potential_age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

valid_input = false
  until valid_input
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
  garlic = gets.chomp
    if garlic == "yes"
      puts "One order for #{name}"
      garlic = true
      valid_input = true
    elsif garlic == "no"
      puts "No garlic bread for #{name}"
      garlic = false
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
      insurance = true
      valid_input = true
    elsif insurance == "no"
      puts "#{name}, it's cool I get it."
      insurance = false
      valid_input = true
    else
      puts "I'm sorry yes or no"
    end
  end

def real_age(year)
  2016 - year
end

age = nil
if real_age(year) == potential_age
  age = true
elsif real_age(year) > potential_age
  age = false
end
    

#p name
#p potential_age
#p year
#p garlic
#p insurance
#p real_age(year)
#p age

if age && (garlic || insurance)
  puts "Probably not a vampire"
elsif !age && !(garlic && insurance)
  puts "Almost certainly a vampire"
else
  puts "Probably a vampire"
end



