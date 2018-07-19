require 'pry'

class Robot

  attr_reader :instruction_count

  def initialize
    @name_count = 0
    @instruction_count = 0
    @name = generate_name()
    2.times do 
      name()
    end
    if @name_count == random_num()
      puts 'resetting'
      reset()
      name()
      name()
    else 
      name()
    end
  end
  
  
  def name
    @name_count = @name_count + 1
    increment_instruction()
    puts @name
  end
  
  


  private
    
  
  def increment_instruction
    @instruction_count += 1
  end

  def generate_name
    ('AA000'..'ZZ999').to_a.sample
  end
  
  def random_num
    rand(0..3)
  end

  def reset
    increment_instruction()
    @name = ('AA000'..'ZZ999').to_a.sample
    @name_count = 0
  end


end

