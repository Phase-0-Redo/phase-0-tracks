applicant = {
  name: nil, # => String
  age: nil, # => Integer
  children: nil, # => Integer
  address: nil, # => String
  email: nil, # => String
  phone: nil, # => String
  fave_blue: nil, # => Boolean
  decor_theme: nil, # => String
  likes_paisley: nil, # => Boolean
  likes_chevrons: nil, # => Boolean
  likes_photorealistic_woods: nil, # => Boolean 
  likes_abstract_woods: nil, # => Boolean
  ombre: nil # => String
}


#user input for key name
puts "Whats your name?"
applicant[:name] = gets.chomp
puts 

#user input for key age
puts "How old are you?"
applicant[:age] = gets.chomp.to_i
puts

#user input for key children
puts "How many kids do you have? If none type 0"
applicant[:children] = gets.chomp.to_i
puts 

#user input for key address
puts "What's your address?"
applicant[:address] = gets.chomp
puts

#user input for key email
puts "What's your email?"
applicant[:email] = gets.chomp
puts

#user input for key phone
puts "What's your phone number?"
applicant[:phone] = gets.chomp
puts

#user input for key fave blue
puts "What is your favorite shade of blue?"
applicant[:fave_blue] = gets.chomp
puts

#user input for key decor theme
puts "What is your favorite decor theme?"
applicant[:decor_theme] = gets.chomp
puts

#user input for paisley preference
puts "Do you like paisley? yes or no"
paisley = gets.chomp.downcase
  if paisley == "yes"
    applicant[:likes_paisley] = true
  elsif paisley == "no"
    applicant[:likes_paisley] = false
  end
puts

#user input for chevrons
puts "Do you like chevrons? yes or no"
chevrons = gets.chomp.downcase
  if chevrons == "yes"
    applicant[:likes_chevrons] = true
  elsif paisley == "no"
    applicant[:likes_chevrons] = false
  end
puts

#user input for photorealistic
puts "Do you like likes photorealistic woods? yes or no"
photorealistic = gets.chomp.downcase
  if photorealistic == "yes"
    applicant[:likes_photorealistic_woods] = true
  elsif photorealistic == "no"
    applicant[:likes_photorealistic_woods] = false
  end
puts

#user input for abstract woods
puts "Do you like abstract woods? yes or no"
abstract = gets.chomp.downcase
  if abstract == "yes"
    applicant[:likes_abstract_woods] = true
  elsif abstract == "no"
    applicant[:likes_abstract_woods] = false
  end
puts

=begin
  asks user for input to update 
  any information of their application
  no will end the loop
  done will end the loop
  yes will follow with another question
  which 
  use an until loop to satisfy valid_input
=end

valid_input = false

until valid_input
  applicant.each_pair {|key, value| puts "#{key} is #{value}"}
  puts
  puts "Would you like to update anything?"
  answer = gets.chomp.downcase
  puts 

  if answer == "no"
    puts
    puts "Thanks have a nice day!"
    valid_input = true
    puts
  elsif answer == "done"
    puts "OK"
    valid_input = true
  elsif answer == "yes"
    applicant.each_pair {|key, value| puts "#{key} is #{value}"}
    puts
    puts "What would you like to change?"
    answer_to_key = gets.chomp
    puts "Ok, lets change #{answer_to_key} from #{applicant[answer_to_key.to_sym]} to"
    new_answer = gets.chomp
    puts
    applicant[answer_to_key.to_sym] = new_answer
    puts
    applicant.each_pair {|key, value| puts "#{key} is #{value}"}
    puts
    puts "OK CHANGED"
    puts
    puts "Type done if finished updating"
    puts
  else
    puts "Im sorry yes or no."
    puts
  end

end

p applicant[:age].class
p applicant[:children].class

