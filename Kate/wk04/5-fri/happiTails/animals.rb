require 'pry'

class Animals
  def initialize()
    @species = ''
    @name = ''
    @age = 0
    @gender = ''
    @toys = []
  end

  def add_animal_details(species,name, age, gender)
    @species = species
    @name = name
    @age = age
    @gender = gender
    return self
  end

  def name 
    return @name
  end

  def age 
    return @age
  end

  def gender
    return @gender
  end

  def toys=(toy)
    @toys.push(toy)
  end

  def toys
    return @toys
  end

  def species
    return @species
  end
end


