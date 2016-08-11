applicant = {
  name: nil,
  age: nil, 
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

puts "How old are you?"
applicant[:age] = gets.chomp

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

puts "Do you like chevrons"
applicant[:likes_chevrons] = gets.chomp

puts "Do you like likes photorealistic woods"
applicant[:likes_photorealistic_woods] = gets.chomp

puts "Do you like abstract woods"
applicant[:likes_abstract_woods] = gets.chomp

puts "Would you like to update anything?"
answer = gets.chomp




p applicant