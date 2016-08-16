# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # initialize empty hash
  # convert items from strings to hash 
  # set default quantity, qty 0
  # print the list to the console [can you use one of your other methods here?]
# output: hash


def create_list(str_of_items)
  grocery_hash = {}
  array_of_items = str_of_items.split(' ')
  array_of_items.each do |item|
    grocery_hash[item] = 0
  end 
  look_nice(grocery_hash)
end 


# Method to add an item to a list
# input: item name and optional quantity
# steps: check the list to see if the item is in it
#        if it is not in the list, add the item along with quantity 
# output: updated hash

def add_item(list, item, quantity=7)
  if !(list.include?(item))
    list[item] = quantity
  end
  list
end 

# Method to remove an item from the list
# input: item name
# steps: check the list to see if the item is in it
#        if it is on the list, delete the item
# output: updated hash

def remove_item(list, item)
  if list.include?(item)
    list.delete(item)
  end 
  list
end 

# Method to update the quantity of an item
# input: item name, quantity
# steps: check the list to see if the item is in it
#        if it is on the list, update the quantity of the item
# output: updated hash

def update_quantity(list, item, quantity)
  if list.include?(item)
    list[item] = quantity
  end 
  list
end 

# Method to print a list and make it look pretty
# input: updated hash
# steps: print out "GROCERY LIST" heading
#        iterate over list hash and print stylized list
# output: nicer looking hash (display) 

def look_nice(list)
  puts "GROCERY LIST:"
  list.each { |key, value| puts "#{key}  :  #{value}" }
end 


#### DRIVER CODE #####
new_list = create_list("carrots apples cereal pizza")
p new_list = add_item(new_list, "bananas", 9)
p new_list = add_item(new_list, "ice cream")
p new_list = remove_item(new_list, "bananas")
p new_list = update_quantity(new_list, "carrots", 10)
look_nice(new_list)
