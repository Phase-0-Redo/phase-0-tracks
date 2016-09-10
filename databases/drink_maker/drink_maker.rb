#rb file for data
require_relative 'drinks'

#required gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
$db = SQLite3::Database.new("drink_table.db")
$db.results_as_hash = true

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
$db.execute(create_table_cmd)

#adds test drink
#db.execute("INSERT INTO drink_table (customer_name) VALUES ('Bob')")


#inserts customer name, drink type, decaf, shots, flavor, pumps, milk, other into database 
$db.execute("INSERT INTO drink_table (customer_name, drink_type, decaf, shots, flavor, pumps_flavor, milk, other) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [$drink[:customer_name], $drink[:drink_type], $drink[:decaf], $drink[:shots], $drink[:flavor], $drink[:pumps_flavor], $drink[:milk], $drink[:other]])




drinks = $db.execute("SELECT * FROM drink_table")

drinks.each do |drink|
  puts "#{drink['customer_name']}  ordered a #{drink['drink_type']}."
  puts "It has #{drink['shots']} shots."
  puts "It has #{drink['flavor']} flavoring with #{drink['pumps_flavor']} pumps."
  puts "Also it has #{drink['milk']} milk"
    if "#{drink['decaf']}" == "true"
      puts "It's decaf"
    elsif "#{drink['decaf']}" == "false"
      puts "It's not decaf"
    end

    if "#{drink['other']}" == 'NULL'
      puts "You're all set."
    else
      puts "Can't forget #{drink['other']}"
    end

end

