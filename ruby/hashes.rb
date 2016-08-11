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

#user input for key age
puts "How old are you?"
applicant[:age] = gets.chomp

#user input for key children
puts "How many kids do you have? If none type 0"
applicant[:children] = gets.chomp

#user input for key address
puts "What's your address?"
applicant[:address] = gets.chomp

#user input for key email
puts "What's your email?"
applicant[:email] = gets.chomp

#user input for key phone
puts "What's your phone number?"
applicant[:phone] = gets.chomp

#user input for key fave blue
puts "What is your favorite shade of blue?"
applicant[:fave_blue] = gets.chomp

#user input for key decor theme
puts "What is your favorite decor theme?"
applicant[:decor_theme] = gets.chomp

#user input for paisley preference
puts "Do you like paisley?"
applicant[:likes_paisley] = gets.chomp

#user input for chevrons
puts "Do you like chevrons?"
applicant[:likes_chevrons] = gets.chomp

#user input for photorealistic
puts "Do you like likes photorealistic woods?"
applicant[:likes_photorealistic_woods] = gets.chomp

#user input for abstract woods
puts "Do you like abstract woods?"
applicant[:likes_abstract_woods] = gets.chomp

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
  puts "Would you like to update anything?"
  answer = gets.chomp

  if answer == "no"
    puts "Thanks have a nice day!"
    valid_input = true
  elsif answer == "done"
    puts "OK"
    valid_input = true
  elsif answer == "yes"
    puts "What would you like to change?"
    applicant.each_pair {|key, value| puts "#{key} is #{value}"}
    answer_to_key = gets.chomp
    puts "Ok, lets change #{answer_to_key} from #{applicant[answer_to_key.to_sym]} to"
    new_answer = gets.chomp
    applicant[answer_to_key.to_sym] = new_answer
    puts "OK CHANGED"
    puts "Type done if finished updating"
    puts
  else
    puts "Im sorry yes or no."
    puts
  end

end

p applicant