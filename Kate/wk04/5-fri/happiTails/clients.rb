require 'pry'

class Clients
  def initialize()
    @name = ''
    @num_children = 0
    @age = 0
    @pets_owned = []
  end

  

  def add_client_details(name, age, num_children)
    @name = name
    @num_children = num_children
    @age = age
    return self
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def num_children
    return @num_children
  end

  def pets=(pet)
    @pets_owned.push(pet)
  end

  def pets
    return @pets_owned
  end

end