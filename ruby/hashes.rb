applicant = {
  name: nil, 
  address: nil, 
  email: nil, 
  phone: nil, 
  fave_blue: nil, 
  likes_paisley: nil, 
  likes_chevrons: nil, 
  likes_photorealistic_woods: nil, 
  likes_abstract_woods: nil, 
  ombre: nil
}

puts "Whats your name?"
applicant[:name] = gets.chomp

puts "What's your address?"
applicant[:address] = gets.chomp

puts "What's your email?"
applicant[:email] = gets.chomp

puts "What's your phone number?"
applicant[:phone] = gets.chomp

puts "What is your favorite shade of blue?"
applicant[:fave_blue] = gets.chomp

puts "Do you like paisley"
applicant[:likes_paisley] = gets.chomp







p applicant