puts "Hello hiring manager, how many are processing today?"
manager_answer = gets.chomp.to_i

forms = 0

until forms == manager_answer
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

  if name == "Drake Cula"
    puts "Definitely a vampire"
  elsif name == "Tu Fang"
    puts "Definitely a vampire"
  end
  
  puts "Please list any allergies, you know for medical reasons."

  valid_input = false
  until valid_input
    allergies = gets.chomp
    if allergies == "sunshine"
      puts "I wear my sunglasses at night."
      puts "Probably a vampire"
      valid_input = true
    elsif allergies == "done"
      puts "Well lucky you"
      valid_input = true
    else 
      puts "We have great coverage are you sure?"
    end
  end
forms += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
