require ('rpg_character')

# describe means we are about to write a test, and it's about the RpgCharacter class
describe RpgCharacter do

# what is context???????????????????????????????
#when you just want a standard character with standard name and class type
#to context makes different use cases
  context 'standard' do
    #function that lets you pass params...can replace char = Rpg.Character.new
    let(:char) { RpgCharacter.new}

  # it 'is blah' ---> these are specs...can write as many as we want before the actual test
    it 'is named Gary' do
      # char = RpgCharacter.new
      expect(char.name).to eq 'Gary'
    end

    it 'is a warrior' do
      char = RpgCharacter.new
      expect(char.class_type).to eq 'warrior'
    end

    it 'has one short sword' do
      expect(char.short_swords.count).to eq 1
      # expect(char).to have(1).short_swords
    end

    it 'has gained a weapon' do
      #passing block of code into expect
      expect { char.open_treasure }.to change { char.weapons.count }.from(1).to(2)
    end

  end



  context 'custom' do

    let(:char) { 
      RpgCharacter.new({
        name: 'Baby Bop',
        class_type: 'blackmage'
      })
    }

    it 'is named Baby Bop' do
      # char = RpgCharacter.new(name: 'Baby Bop')
      expect(char.name).to eq 'Baby Bop'
    end  

    it 'is a blackmage' do
      # char = RpgCharacter.new(class_type: 'blackmage')
      expect(char.class_type).to eq 'blackmage'
    end

    it 'has one short sword' do
      expect(char.short_swords.count).to eq 1
    end

    it 'has gained a weapon' do
      expect {char.open_treasure} .to change { char.weapons.count }.from(1).to(2)
    end

  end

  #each one of these is a unit test/  one expectation per unit test



end