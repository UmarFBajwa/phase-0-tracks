
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Ask User for string of items
  # Convert String into Items and put into List Hash
  # Set default quantity of each to 0
  # output: prints hash 

def create(items)
  list = {}
  item_array = items.split(" ")
  item_array.each do |x|
    list[x]=1
  end  
  p list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # Ask User to provide item name and optional quantity 
  # Take Item Name and Quatity and add to Hash
  # Ask User if he/she wants to add more
    #If yes, repeat
    #If no, end loop
# output: prints updated hash

#Also can be used to update
def add(input_list, item, quantity)
  input_list[item] = quantity
end

# Method to remove an item from the list
# input: item name and optional quantity
# steps:
  # Ask User to provide item name and optional quantity 
  # Take Item Name and Quatity and remove to Hash
  # Ask User if he/she wants to delete more
    #If yes, repeat
    #If no, end loop
# output: prints updated hash

def remove(input_list, item)
  input_list.delete(item)
end

# Method to update the quantity of an item
# input: item name and quantity 
# steps:
  #Ask User to provide what item they want to change the quantity of?
  #Ask User to provide the new quantity?
  #Change quantity accordingly
# output: prints updated Hash

# Method to print a list and make it look pretty
# input: Hash keys and variables
# steps:
  #Takes Hash and converts it into a String
# output: prints converted string

def print_list(input_list)
  input_list.each {|item,quantity|
    puts "#{item} :#{quantity}"
  }
end

#Other Ways:
# Our_list.each do|x,y|
#   puts "Item: #{x}\t|\t Quantity: #{y}"
# end

# Our_list.each do|x,y|
#   puts "we need #{y} #{x}"
# end

#DRIVER CODE
  
Our_list = create("apples oranges milk")


add(Our_list, "lemonade", 2)
add(Our_list, "tomatoes", 3)
add(Our_list, "onions", 1)
add(Our_list, "icecream", 4)
remove(Our_list, "lemonade")
add(Our_list, "icecream", 1)
p Our_list
print_list(Our_list)  

#REFLECTIONS
# What did you learn about pseudocode from working on this challenge?
# Good overview before starting really makes a difference.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays don't store values.

# What does a method return?
# Last variable

# What kind of things can you pass into methods as arguments?
# Strings, Integers, Floats, Arryas, Hashes, and even other Methods

# How can you pass information between methods?
# Make the variable Global

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Passing methods through methods 
# Syntax of everything, need more practice. Mixixng it up with Classes etc.
  

  