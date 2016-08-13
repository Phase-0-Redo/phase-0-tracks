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

#Swap first and last name.
def name_swapper(first, last)
  p last +" "+ first
end


def name_changer(name)
  #name_length = name.length
  
  #name_arr.each {|x| p name_arr[x] }
  #counter = 0
  #letters = "bcdfghjklmnpqrstvwxyz"
  #vowels = "aeiou"
  name_arr = name.split("")
  name_arr.map! {|letter| letter.next}
  p name_arr
end

name_changer("jordan")