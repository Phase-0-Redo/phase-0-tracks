
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
def create_drink(db, name)
  db.execute("INSERT INTO drinks (name) VALUES (?)", [name])
end

3.times do
  create_drink(db, drink.name)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

