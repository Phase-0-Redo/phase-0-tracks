=begin

class Coffee
  attr_reader name:,
  attr_accessor size
possible attributes
  name = string
  size => string
  iced => boolean
  decaf => boolean
  flavor => string
  pumpts of flavor => integer
  number of shots => integer
  milk type => string
  custom => string

possible methods
  size => compares a string to an array 
    if present stores size, else asks again
  iced => stores value as true or false using an until loop
  decaf => stores value as true or false using an until loop
  flavor => asks customers input for flavor and stores
  pumps => asks customers input for number of pumps and stores
  shots => asks customers input for number of shots
  milk =>asks for customers input for milk type
  custom => ask for custom inputs
=end

class Drink
  attr_reader :name, :decaf,
  attr_accessor :size, :iced, :number_of_shots, 

  def initialize(name)
    puts "Making drink..."
    @name = name
  end

  def name
    puts "Hi I'm robobarista Hal 9000.\n Can I get your name?\n"
    @name = gets.chomp
  end