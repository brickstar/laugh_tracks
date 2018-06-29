require 'spec_helper'

describe 'User' do
  describe 'visits comedians index' do
    it 'should see all comedians of scoped age' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
      mitch = Comedian.create(name: "Mitch Hedburg", age: 34)
      hannibal = Comedian.create(name: "Hannibal Buress", age: 20)

      visit '/comedians?age=34'

      expect(page).to have_content(iliza.name)
      expect(page).to have_content(mitch.name)
      expect(page).to_not have_content(hannibal.name)
    end
  end
end
