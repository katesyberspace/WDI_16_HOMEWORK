class RpgCharacter 
  def initialize(params={name: 'Gary', class_type: 'warrior'})
    @name = params[:name]
    @type = params[:class_type]
    @short_swords = ['sword']
    @weapons = ['sword']
  end


  def name
    @name
  end

  def class_type
    @type
  end

  def short_swords
    @short_swords
  end

  def open_treasure
    @weapons.push('weapon')
  end

  def weapons
    @weapons
  end

end