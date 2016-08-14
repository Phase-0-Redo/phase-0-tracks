=begin
 pseudocode and write a method that takes a spy's real name
  (e.g., "Felicia Torres") and creates a fake name 
  with it by doing the following:
1. Swapping the first and last name.
2. Changing all of the vowels (a, e, i, o, or u) 
to the next vowel in 'aeiou',
 and all of the consonants (everything else besides the vowels)
  to the next consonant in the alphabet. 
  So 'a' would become 'e', 'u' would become 'a', and 'd' 
  would become 'f'
=end
require 'pp'
# Swap first and last name.
def name_swapper(first, last)
  last +" "+ first
end

=begin
changes all the letters, 
all vowels to the next vowel
all consonants to the next consonant
=end
def name_changer(name)
      
  #consonants is string of alphabet without vowels
  consonants = "bcdfghjklmnpqrstvwxyz"
  #vowels is a string of vowels
  vowels = "aeiou"
  #new name is blank string
  #new_name = ""
  #split the name into an array of substrings
  name_arr = name.chars
=begin 
  runs iteration for each letter and changes
  if letter is a consonant changes it to the next consonant
  elsif letter is a vowel changes it to the next vowel
  join the letters of the array to form 
=end
  name_arr.map! do |letter|
    #letter.next
    #if letter is included within vowels
    if vowels.include?(letter)
      # then use the index of the letter within vowels add one for the next vowel
      vowels[vowels.index(letter) + 1]
    #else if letter is included within consonants
    elsif consonants.include?(letter) 
      # then use the index of the letter within consonants add one for the next 
      consonants[consonants.index(letter) + 1]
    end
  end
  #joins the subletters together to reform the string
  new_name = name_arr.join
  new_name
end

def storing_info (key, value)
  info = {}
  info[key] = value
  info
end

puts "Whats your name?"
first_name = gets.chomp
new_first = name_changer("#{first_name}")
puts "Your civilian name #{first_name} is now #{new_first}."
puts
puts "Whats your last name?"
last_name = gets.chomp
new_last = name_changer("#{last_name}")
puts "Your civilian last name #{last_name} is now #{new_last}."
puts
old_full = first_name + " " + last_name
new_full = name_swapper("#{new_first}", "#{new_last}")

  
stored_info = {
  real_first: "#{first_name}",
  real_last: "#{last_name}",
  spy_first: "#{new_first}",
  spy_last: "#{new_last}"
}

pp stored_info

puts

valid_input = false
until valid_input 
puts
puts "Did you like your name? (yes or no or done)"
  answer = gets.chomp.downcase

  if answer == "no"
    puts
    puts "What would you like your new name first name to be?"
      new_first = gets.chomp
      stored_info[:real_first] = "#{new_first}"
      stored_info[:spy_first] = "#{name_changer("#{new_first}")}"
    puts
    puts "What you like your new last name to be?"
      new_last = gets.chomp
      stored_info[:real_last] = "#{new_last}"
      stored_info[:spy_last] = "#{name_changer("#{new_last}")}"
    
    puts
    pp stored_info

  elsif answer == "yes"
    puts
    puts "Thanks it took a lot of work."
    valid_input = true

  elsif answer == "done"
    puts
    puts "Have a nice day submitting info."
    valid_input = true
  else
    puts
    puts "Sorry what was that."
  end
end

puts
pp stored_info
puts

puts "Error"
puts "Error..."
puts "..."
puts "--Transmission Intercepted--"
puts "This is the most evil organization ever!"
puts "We know have info on  Agent #{stored_info[:spy_last]} ."

stored_info.each do |id, name|
  puts "In actuality #{id} name is #{name}."
end

