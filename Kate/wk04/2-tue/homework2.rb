######################################
#               Arrays               #
######################################
# Starting with the following array...

planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]
# Access the second value in planeteers.

planeteers[1]

# Add "Heart" to the end of planeteers.

planeteers.push('Heart')

# Combine planeteers with 
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"] 
# and save the result in a variable called heroes.

heroes = planeteers.concat(rangers)

# Alphabetize the contents of heroes using a method. The Ruby documentation might help.

heroes.sort 

# Randomize the contents of heroes using a method. The Ruby documentation might help.

heroes.shuffle  

# Bonus
# Select a random element from heroes using a method. The Ruby documentation might help.

heroes.sample

# Select all elements in heroes that begin with "B" using a method. The Ruby documentation might help.

heroes.select {|word| word.start_with? 'B'}

#############################################
#                   Hashes                  # 
#############################################
# Initialize a hash called ninja_turtle with the properties name, weapon and radical. They should have values of "Michelangelo", "Nunchuks" and true respectively.
ninja_turtle = {
  name: 'Michelangelo',
  weapon: 'Nunchuks',
  radical: true
}

# Add a key age to ninja_turtle. Set it to whatever numerical value you'd like.
ninja_turtle[:age] = 55

# Remove the radical key-value pair from ninja_turtle.
ninja_turtle.delete(:radical)

# Add a key pizza_toppings to ninja_turtle. Set it to an array of strings (e.g., ["cheese", "pepperoni", "peppers"]).
ninja_turtle[:pizza_toppings] = ["cheese", "pepperoni", "peppers"]

# Access the first element of pizza_toppings.
ninja_turtle[:pizza_toppings].first

# Produce an array containing all of ninja_turtle's keys using a method. The Ruby documentation might help.

ninja_turtle.keys

# Bonus
# Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method. The Ruby documentation might help.

ninja_turtle.each do |key, value|
  puts "#{key} is equal to #{value}"
end

######################################################
#                Array and Hash access               #
######################################################
# A. Given the following data structure:
a = ["Anil", "Erik", "Jonathan"]

# How would you return the string "Erik"?
a[1]

# How would you add your name to the array?
a.push('your name')


# B. Given the following data structure:
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# How would you return the string "One"?
h.values[1]

# How would you return the string "Two"?
h.values[2]

# How would you return the number 2?
h.values[3]

# How would you add {3 => "Three"} to the hash?
h[3] = 'Three'

# How would you add {:four => 4} to the hash?
h[:four] = 4

# C. Given the following data structure:
is = {true => "It's true!", false => "It's false"}

# What is the return value of is[2 + 2 == 4]?
"It's true!"

# What is the return value of is["Erik" == "Jonathan"]?
"It's false"

# What is the return value of is[9 > 10]?
"It's false"

# What is the return value of is[0]?
"nil"

# What is the return value of is["Erik"]?
"nil"

# D. Given the following data structure:
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
users['Jonathan'][:twitter]

# How would you add the number 7 to Erik's favorite numbers?
users['Erik'][:favorite_numbers].push(7)

# How would you add yourself to the users hash?
users['Kate'] = {}

# How would you return the array of Erik's favorite numbers?
users['Erik'][:favorite_numbers]

# How would you return the smallest of Erik's favorite numbers?
users['Erik'][:favorite_numbers].min

# How would you return an array of Anil's favorite numbers that are also even?
users['Anil'][:favorite_numbers].select {|num| 
  num.even?
}

# How would you return an array of the favorite numbers common to all users?

# common_numbers = []
# 
# users['Jonathan'][:favorite_numbers].each do |num|
  # if (users['Erik'][:favorite_numbers].include?(num) == true) && (users['Anil'][:favorite_numbers].include?(num) == true)
    # common_numbers.push(num)
  # end
# end

(users['Jonathan'][:favorite_numbers] & users['Erik'][:favorite_numbers]) & users['Anil'][:favorite_numbers]


# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

# # [].concat(users['Jonathan'][:favorite_numbers], users['Anil'][:favorite_numbers], users['Erik'][:favorite_numbers]).sort.uniq

# (users['Jonathan'][:favorite_numbers] | users['Erik'][:favorite_numbers] | users['Anil'][:favorite_numbers]).sort

users.values.map do |hash|
  hash[:favorite_numbers]
end.flatten.uniq.sort
