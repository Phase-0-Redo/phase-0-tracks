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
