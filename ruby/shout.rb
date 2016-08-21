module Shout
  # some methods here
  def self.yell_angrily(words)
    words + "!!!!!" + " :( "
  end

  def self.yell_happily(words)
    words.downcase!
  end
end

p Shout.yell_angrily("I hate potatoes")
p Shout.yell_happily("I love french fries")