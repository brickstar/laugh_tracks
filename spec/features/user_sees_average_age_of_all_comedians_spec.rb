require 'spec_helper'

describe 'User' do
  describe 'visits comedians index' do
    it 'should see average age of all comedians' do
      iliza = Comedian.create(name: "Iliza Shlesinger", age: 30)
      hannibal = Comedian.create(name: "Hannibal Buress", age: 20)

      visit '/comedians'

      # within('#average-age') do
      #   expect(page).to have_content(25)
      # end
      expect(page).to have_content(25)
    end
  end
end
