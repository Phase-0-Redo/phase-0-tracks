module Shout
  # some methods here
  #def self.yell_angrily(words)
  #  words + "!!!!!" + " :( "
  #end
#
  #def self.yell_happily(words)
  #  words.downcase!
  #end

  def yell_drunk(words)
    words.downcase!
    letters = words.chars
    letters.each do |letter| 
      if letters.index(letter).odd?
        letter.upcase!
      else
        letter
      end
    end
    letters.join
  end

  def whispers
    p "sssshhhhh"
  end


end

#p Shout.yell_angrily("I hate potatoes")
#p Shout.yell_happily("I love french fries")

class Rockstar
  include Shout
end

class Librarian
  include Shout
end

rockstar = Rockstar.new
p rockstar.yell_drunk("Hello, San Diego")
rockstar.whispers

librarian = Librarian.new
p librarian.yell_drunk("Good Morning Children")
librarian.whispers
