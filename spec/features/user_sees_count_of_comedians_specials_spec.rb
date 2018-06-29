require 'spec_helper'

describe 'User' do
  describe 'visits comedians index' do
    it 'should see all comedians' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      Special.create(name: "War Paint", comedian_id: iliza.id)
      Special.create(name: "Freezing Hot", comedian_id: iliza.id)
      Special.create(name: "Confirmed Kills", comedian_id: iliza.id)

      hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
      Special.create(name: "My Name is Hannibal", comedian_id: hannibal.id)
      Special.create(name: "Animal Furnace", comedian_id: hannibal.id)
      Special.create(name: "Live from Chicago", comedian_id: hannibal.id)
      Special.create(name: "Comedy Camisado", comedian_id: hannibal.id)
      Special.create(name: "Hannibal Takes Edinburgh", comedian_id: hannibal.id)

      mike = Comedian.create(name: "Mike Birbiglia", age: 39)
      Special.create(name: "What I Should Have Said Was Nothing", comedian_id: mike.id)
      Special.create(name: "My Girlfriiend's Boyfriend", comedian_id: mike.id)

      visit '/comedians'

      within("#specials-count-#{iliza.id}") do
        expect(page).to have_content(3)
      end

      within("#specials-count-#{hannibal.id}") do
        expect(page).to have_content(5)
      end

      within("#specials-count-#{mike.id}") do
        expect(page).to have_content(2)
      end
    end
  end
end
