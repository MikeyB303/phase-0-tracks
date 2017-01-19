# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [split the list into an array of separate words]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: set item name to hash key and optional quantity to key value
# output: print grocery list

# Method to remove an item from the list
# input: list, item name
# steps: remove the hash key
# output: new list with removed item

# Method to update the quantity of an item
# input: list, item name, quantity
# steps: update hash value with new quantity
# output: new list with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: print a wholesome message to the user
# output: pretty list

def grocery_list(items)
  list = {}
  item_list = items.split(' ')
  item_list.each do |item|
    list[item] = 0
  end
p list
end
list = grocery_list("lemonade tomatoes onions ice-cream")

def add_item(list, item, quantity = 0)
  list[item] = quantity
  p list
end


def remove_item(list, item)
  list.delete(item)
  p list
end

def update_item(list, item, quantity)
  list[item] = quantity
  p list
end

update_item(list, "lemonade", 2)
update_item(list, "tomatoes", 3)
update_item(list, "onions", 1)
update_item(list, "ice-cream", 4)
p list
remove_item(list, "lemonade")
p list
update_item(list, "ice-cream", 1)
p list


puts "Wow that's a lot of food you got there!"
list.each do |item, quantity|
  puts "#{item}: #{quantity}"
end
















