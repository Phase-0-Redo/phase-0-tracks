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

#S wap first and last name.
def name_swapper(first, last)
  p last +" "+ first
end

=begin
changes all the letters, 
all vowels to the next vowel
all consonants to the next consonant
=end

def name_changer(name)
  name_length = name.length
  counter = 0
  letters = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"
  new_name = ""
  name_arr = name.split("")
  name_arr.map! do |letter| 
    letter.next
  end 
  name_arr.replace("aa")
  p name_arr
end

p name_changer("buzz")