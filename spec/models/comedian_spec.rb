RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Class Methods' do
    describe 'Comedian.average_age' do
      it 'should return average age for all comedians' do
        iliza = Comedian.create(name: "Iliza Shlesinger", age: 25)
        hannibal = Comedian.create(name: "Hannibal Buress", age: 35)
        mike = Comedian.create(name: "Mike Birbiglia", age: 30)

        expect(Comedian.average_age).to eq(30)
      end
    end
  end
end
