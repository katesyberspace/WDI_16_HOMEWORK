require 'pry'
require_relative 'animals'
require_relative 'clients'


$shelter = {
  :clients => [],
  :animals => []
}

def display_menu
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts '             What would you like to do?               '
  puts ''
  puts '(1) Display all animals available adoption'
  puts '(2) Display all clients of the shelter'
  puts '(3) Create a new animal for the shelter'
  puts '(4) Add a new client to the shelter'
  puts '(5) Facilitate an adoption'
  puts '(6) Surrender a pet to the shelter'
  puts '(9) Exit the shelter'
  puts ''
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
end

def display_shelter_animals
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts '       Shelter Animals Available Fur Adoption'
  $shelter[:animals].each do |animal|
    puts ''
    puts ">> #{animal.name} the #{animal.species}, gender:#{animal.gender}, age: #{animal.age}, toys: #{animal.toys.join(', ')}."
  end
  puts ''
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
end

def display_shelter_clients
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts '               Clients of the Shelter'
  puts ''
  $shelter[:clients].each do |client|
    if client.pets.length == 0
      puts "Client: #{client.name}, number of children: #{client.num_children}, age: #{client.age}."
      puts "Pets owned: none"
    elsif client.pets.length >= 1 
      puts "Client: #{client.name}, number of children: #{client.num_children}, age: #{client.age}."
      puts "Pets owned:"
      client.pets.each do |pet|
        puts ">>#{pet.name} the #{pet.species}, gender: #{pet.gender}, age:#{pet.age}, toys: #{pet.toys.join(', ')}."
      end
    end  
    puts ''  
  end
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''  
end

def run_menu 
  display_menu()
  menu_selection = gets.chomp
  if menu_selection == '1'
    display_shelter_animals()
    run_menu()
  elsif menu_selection == '2'
    display_shelter_clients()
    run_menu()
  elsif menu_selection == '3'
    add_animal_to_shelter()
  elsif menu_selection == '4'
    add_client_to_shelter()
  elsif menu_selection == '5'
    adopt_a_pet()
  elsif menu_selection == '6'
    surrender_a_pet()
  elsif menu_selection == '9'
    puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
    puts ''
    puts '           Thanks for visiting the shelter.'
    puts ''  
    puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
    exit
  else 
    puts 'You did not enter a valid option.'
    run_menu()
  end
end

def welcome
  puts '---------------------------'
  puts '- WELCOME TO THE SHELTER! -'
  puts '---------------------------'
  puts '         ,-.___,-.         '
  puts '         \_/_ _\_/         '  
  puts '           )O_O(           '
  puts '          { (_) }          ' 
  puts "           `-^-'           "
  puts "---------------------------"
  print 'Do you want to come in? (y/n)'
  continue = gets.chomp
  if continue == 'n'
    exit
  elsif continue == 'y'
    run_menu()
  else 
    puts 'You did not enter a valid option.'
    welcome()
  end
end

def create_animal
  print 'Enter animal species: '
  species = gets.chomp
  print 'Enter animal name: '
  name = gets.chomp
  while name == '' do
    puts 'Animal name required: '
    name = gets.chomp
  end 
  print 'Enter animal age: '
  age = gets.chomp
  print 'Enter animal gender (f/m): '
  gender = gets.chomp
  animal = Animals.new.add_animal_details(species, name, age, gender)
  print 'Does the animal have a toy? (y/n): '
  give_toy = gets.chomp
  if give_toy == 'y'
    add_another_toy = 'y'
    while add_another_toy == 'y'do
      print 'Enter toy: '
      toy = gets.chomp
      animal.toys = toy
      print 'Does the animal have another toy? (y/n): '
      add_another_toy = gets.chomp
    end
    return animal
  else 
    return animal
  end 
end

def add_animal_to_shelter
  $shelter[:animals].push(create_animal)
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
  puts "Thank you! Your animal has been created and is playing"
  puts '         with its new friends in the shelter.     
  puts    '
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  run_menu()
end

def create_client
  print 'Enter client name: '
  name = gets.chomp
  while name == '' do
    print 'Client name required: '
    name = gets.chomp
  end
  print 'Enter client age: '
  age = gets.chomp
  print 'Enter number of children: '
  num_children = gets.chomp
  client = Clients.new.add_client_details(name, age, num_children)
  print 'Does the client have existing pets? (y/n): '
  existing_pets = gets.chomp
  if existing_pets == 'y'
    another_existing_pet = 'y'
    while another_existing_pet == 'y' do
      client.pets= create_animal()
      print 'Does the client have another existing pet? (y/n): '
      another_existing_pet = gets.chomp
    end
    return client
  end
  return client
end

def add_client_to_shelter
  $shelter[:clients].push(create_client)
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts '' 
  puts '        Thank you! The client has been added. '
  puts ''
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
  run_menu()
end

def adopt_a_pet
  display_shelter_animals()
  display_shelter_clients()
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts '                Adoption Application'
  puts ''
  print 'Enter the client name: '
  adopter = gets.chomp
  adopter_index = $shelter[:clients].find_index {|client| client.name.downcase == adopter.downcase}
  print 'Enter the animal name: '
  animal_to_adopt = gets.chomp
  animal_to_adopt_index = $shelter[:animals].find_index {|animal| animal.name.downcase == animal_to_adopt.downcase}
  $shelter[:clients][adopter_index].pets=($shelter[:animals].slice!(animal_to_adopt_index))
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
  puts "    Thank you! Adoption completed. #{animal_to_adopt} has     "
  puts "           found its furever home with #{adopter}        "
  puts ''
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
  run_menu()
end

def surrender_a_pet
  display_shelter_animals()
  display_shelter_clients()
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts '              Pet Surrender Application'
  puts ''
  puts 'Enter the client name: '
  surrenderer = gets.chomp
  surrenderer_index = $shelter[:clients].find_index {|client| client.name.downcase == surrenderer.downcase}
  puts 'Enter the animal name: '
  animal_to_surrender = gets.chomp
  animal_to_surrender_index = $shelter[:clients][surrenderer_index].pets.find_index {|animal| animal.name.downcase == animal_to_surrender.downcase}
  $shelter[:animals].push($shelter[:clients][surrenderer_index].pets.slice!(animal_to_surrender_index))
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
  puts "    Thank you! Surrender completed. #{surrenderer} has     "
  puts "       given #{animal_to_surrender} to the shelter."
  puts ''
  puts '=^..^=   =^..^=   =^..^=    =^..^=    =^..^=    =^..^='
  puts ''
  run_menu()
end


def create_starting_shelter_db
  a1 = Animals.new
  a1.add_animal_details('cat','Bambi', 12, 'f')
  a1.toys=('string')
  a1.toys=('rubber band')
  $shelter[:animals].push(a1)


  a2 = Animals.new
  a2.add_animal_details('cat','Nala', 8, 'f')
  a2.toys=('rat')
  $shelter[:animals].push(a2)

  a3 = Animals.new
  a3.add_animal_details('dog','Buster', 6, 'm')
  a3.toys=('ball')

  a4 = Animals.new
  a4.add_animal_details('monkey','Diddy', 7, 'm')
  a4.toys=('barrel')
  $shelter[:animals].push(a4)

  a5 = Animals.new
  a5.add_animal_details('whale','Moby', 90, 'm')
  a5.toys=('seal')

  a6 = Animals.new
  a6.add_animal_details('hedgehog','Sonic', 21, 'm')
  a6.toys=('ring')
  $shelter[:animals].push(a6)

  a7 = Animals.new
  a7.add_animal_details('horse','Ed', 15, 'f')


  c1 = Clients.new
  c1.add_client_details('Kate',30,0)
  c1.pets=a5
  $shelter[:clients].push(c1)

  c2 = Clients.new
  c2.add_client_details('Ben',33,0)
  $shelter[:clients].push(c2)

  c3 = Clients.new
  c3.add_client_details('Jimmy',34,1)
  c3.pets=a3
  c3.pets=a7
  $shelter[:clients].push(c3)
end

create_starting_shelter_db()

welcome()




