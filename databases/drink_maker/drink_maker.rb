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
#drinks.each do |drink|
#  puts "#{drink['name']} has #{drink['shots']} shots"
#end

#adds decaf preference column
db.execute("ALTER TABLE drinks ADD decaf BOOLEAN")

#updates decaf column
def update_decaf(db, decaf)
  db.execute("UPDATE drinks SET decaf='true'")
end

drinks.each do |drink|
  update_decaf(db, 'false')
end

#drinks.each do |drink|
#  boo = Faker::Boolean.boolean
#  db.execute("UPDATE drinks SET decaf = Faker::Boolean.boolean WHERE id=1")
#end

db.execute("UPDATE drinks SET decaf='false' WHERE name='Bob'")

#drinks = db.execute("SELECT * FROM drinks")
drinks.each do |drink|
  puts "#{drink['name']} has #{drink['shots']} shots"
    if drink['decaf'] = 0
      preference = false
    else
      preference = true
    end
  puts "#{drink['name']} like decaf: #{preference}"
end



