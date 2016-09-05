#rb file for data
require_relative 'drinks'

#required gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("drink_table.db")
db.results_as_hash = true

#string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS drink_table(
    id INTEGER PRIMARY KEY,
    customer_name VARCHAR(255),
    drink_type VARCHAR(255),
    decaf BOOLEAN,
    shots INT,
    flavor VARCHAR(255),
    pumps_flavor INT,
    milk VARCHAR(255),
    other VARCHAR(255)
  )
SQL

#creates a drinks table
db.execute(create_table_cmd)

#adds test drink
#db.execute("INSERT INTO drink_table (customer_name) VALUES ('Bob')")


$drinks.each do |drink|
  db.execute("INSERT INTO drink_table (customer_name) VALUE (?)", drink[:customer_name])
end
#drink_arr.each do |order|
#db.execute("INSERT INTO drink_table(
#    customer_name, 
#    drink_type, 
#    decaf, 
#    shots, 
#    flavor, 
#    pumps_flavor, 
#    milk, 
#    other
#  ) 
#  VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [
#    customer_name,
#    drink_type,
#    decaf,
#    shots,
#    flavor,
#    pumps_flavor,
#    milk,
#    other
#  ]
#  )
#end





drinks = db.execute("SELECT * FROM drink_table")

drinks.each do |drink|
  puts "#{drink['customer_name']} ordered a drink."
 end