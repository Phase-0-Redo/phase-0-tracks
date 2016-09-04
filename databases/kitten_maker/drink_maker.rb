
# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

require_relative 'drinker'

# require gems
require 'sqlite3'
require 'faker'


# create SQLite3 database
db = SQLite3::Database.new("drinks.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS drinks(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    decaf BOOlEAN,
    drink_size VARCHAR(255),
    iced BOOLEAN,
    number_of_shots INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion

def get_drink(db, name, decaf, drink_size, iced, number_of_shots)
  db.execute("INSERT INTO drinks (name, decaf, drink_size, iced, number_of_shots) VALUES (?, ?, ?, ?, ?)", [name, decaf, drink_size, iced, number_of_shots])
end

def get_name(db, name)
  db.execute("INSERT INTO drinks (name) VALUES (?)", [name])
end


def get_decaf(db, decaf)
  db.execute("INSERT INTO drinks (decaf) VALUES (?)", [decaf])
end

def get_drink_size(db, drink_size)
  db.execute("INSERT INTO drinks (name) VALUES (?)", [drink_size])
end

def get_iced(db, iced)
  db.execute("INSERT INTO drinks (name) VALUES (?)", [iced])
end

def get_number_of_shots(db, number_of_shots)
  db.execute("INSERT INTO drinks (name) VALUES (?)", [number_of_shots])
end


#3.times do
#  get_drink(db, Faker::Name.name, 'true', 'small', 'false', 2)
  #get_name(db, Faker::Name.name)
  #get_decaf(db, Faker::Boolean.boolean)
  #get_drink_size(db, Faker::Lorem.word)
  #get_iced(db, Faker::Boolean.boolean)
  #get_number_of_shots(db, Faker::Number.number(2))
#end

$drink_queue.each do |drink|
  get_name(db, drink.name)
end

#$drink_queue.each do |drink|
#  get_decaf(db, drink.decaf)
#end
#
#$drink_queue.each do |drink|
#  get_drink_size(db, drink.drink_size)
#end
#
#$drink_queue.each do |drink|
#  get_iced(db, drink.iced)
#end
#
#$drink_queue.each do |drink|
#  get_number_of_shots(db, drink.number_of_shots)
#end

# explore ORM by retrieving data
drinks = db.execute("SELECT * FROM drinks")
# drinks.each do |drink|
puts drinks
# end
p drinks.class
