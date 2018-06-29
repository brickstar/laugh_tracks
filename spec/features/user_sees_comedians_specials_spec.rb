require 'spec_helper'

describe 'User' do
  describe 'visits comedians index' do
    it 'should see all comedians' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      special1 = Special.create(name: "War Paint", comedian_id: iliza.id)
      special2 = Special.create(name: "Freezing Hot", comedian_id: iliza.id)

      hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
      special3 = Special.create(name: "My Name is Hannibal", comedian_id: hannibal.id)
      special4 = Special.create(name: "Animal Furnace", comedian_id: hannibal.id)

      visit '/comedians'

      expect(page).to have_content(special1.name)
      expect(page).to have_content(special2.name)
      expect(page).to have_content(special3.name)
      expect(page).to have_content(special4.name)
    end
  end
end
