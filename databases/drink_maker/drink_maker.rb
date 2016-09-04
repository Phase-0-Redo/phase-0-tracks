# gems
require 'sqlite3'
require 'faker'


#create SQLITE3 database
db = SQLite3::Database.new("drinks.db")
db.results_as_hash = true

#string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS drinks(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    shots INT
  )
SQL

#create a drinks table
db.execute(create_table_cmd)

#test drink
db.execute("INSERT INTO drinks (name, shots) VALUES ('Bob', 10)")


def create_drink(db, name, age)
  db.execute("INSERT INTO drinks (name, shots) VALUES (?, ?)", [name, age])
end

10.times do
  create_drink(db, Faker::Name.name, Faker::Number.number(1))
end

drinks = db.execute("SELECT * FROM drinks")
drinks.each do |drink|
  puts "#{drink['name']} has #{drink['shots']} shots"
end


