require 'pry'

class Robot

  def initialize
    @name_count = 0
    @name = ('AA000'..'ZZ999').to_a.sample
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
  # binding.pry
  
  def random_num
    rand(0..3)
  end

  def name
    @name_count = @name_count + 1
    puts @name
  end



  def reset
    @name = ('AA000'..'ZZ999').to_a.sample
    @name_count = 0
  end


end

