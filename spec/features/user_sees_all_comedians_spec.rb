require 'spec_helper'

describe 'User' do
  describe 'visits comedians index' do
    it 'should see all comedians' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      hannibal = Comedian.create(name: "Hannibal Buress", age: 34)

      visit '/comedians'

      expect(page).to have_content(iliza.name)
      expect(page).to have_content(iliza.age)
      expect(page).to have_content(hannibal.name)
      expect(page).to have_content(hannibal.age)
    end
  end
end
