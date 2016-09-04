# gems
require 'sqlite3'
require 'faker'


#create SQLITE3 database
db = SQLite3::Databas.new("drinks.db")
db.result_as_hash = true

#string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    shots INT
  )
SQL

#create a drinks table
db.execute(create_table_cmd)

#test drink
db.execute("INSERT INTO drinks (name, shots) VALUES ('Bob', 10)")

