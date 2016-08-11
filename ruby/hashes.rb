applicant = {
  name: nil, # => String
  age: nil, # => Integer
  children: nil, # => Integer
  address: nil, # => String
  email: nil, # => String
  phone: nil, # => String
  fave_blue: nil, #=> Boolean
  decor_theme: nil,
  likes_paisley: nil, #=> Boolean
  likes_chevrons: nil, #=> Boolean
  likes_photorealistic_woods: nil, #=> Boolean 
  likes_abstract_woods: nil, #=> Boolean
  ombre: nil #=> String
}



puts "Whats your name?"
applicant[:name] = gets.chomp

puts "How old are you?"
applicant[:age] = gets.chomp

puts "How many kids do you have? If none type"
applicant[:children] = gets.chomp

puts "What's your address?"
applicant[:address] = gets.chomp

puts "What's your email?"
applicant[:email] = gets.chomp

puts "What's your phone number?"
applicant[:phone] = gets.chomp

puts "What is your favorite shade of blue?"
applicant[:fave_blue] = gets.chomp

puts "What is your favorite decor theme?"
applicant[:decor_theme] = gets.chomp

puts "Do you like paisley"
applicant[:likes_paisley] = gets.chomp

puts "Do you like chevrons"
applicant[:likes_chevrons] = gets.chomp

puts "Do you like likes photorealistic woods"
applicant[:likes_photorealistic_woods] = gets.chomp

puts "Do you like abstract woods"
applicant[:likes_abstract_woods] = gets.chomp


valid_input = false

until valid_input
  puts "Would you like to update anything?"
  answer = gets.chomp

  if answer == "no"
    puts "Thanks have a nice day!"
    valid_input = true
  elsif answer == "yes"
    puts "What would you like to change?"
    puts 
    answer_to_key = gets.chomp
    puts "Ok, lets change #{answer_to_key} from #{applicant[answer_to_key.to_sym]} to"
    new_answer = gets.chomp
    applicant[answer_to_key.to_sym] = new_answer
    puts "OK CHANGED"
    puts "Type done if finished updating"
  elsif answer == "done"
    puts "OK"
    valid_input = true
  else
    puts "Im sorry yes or no."
  end

end
p applicant