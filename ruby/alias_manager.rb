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
      # finds length of a string
      # name_length = name.length
      # sets counter to 0 
      # counter = 0
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
      if vowels.include?(letter)
         vowels[vowels.index(letter) + 1]
      elsif consonants.include?(letter) 
         consonants[consonants.index(letter) + 1]
      elsif letter == "z"
        letter = "b"
      elsif letter == "u"
        letter = "a"
      end
    end
  new_name = name_arr.join
  new_name
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

p old_full
p new_full

