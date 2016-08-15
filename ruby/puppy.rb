=begin

  Species/ Class
    Bobolinkus studentus dbcus
  
  Characteristics/ Attributes
    Skills: varies
    Name: varies
    Friendly: yes
    Intelligent: yes
    Driven: yes

  Behavior/ Methods
    Design
    Code
    Sleep
    Eat

=end

class Bobolink

  def design
    puts "I can design a name. Give me a name"
    name = gets.chomp
    name.reverse.upcase
    puts "Presenting the newly designed #{name}"
  end

  def sleep
    puts "I need some sleep."
    puts "How long should I sleep for?"
    sleep = gets.to_i
    puts "zzzz" * sleep
  end

  def code
    
  end

