require './rental'
require './student'
require './book'

student = Student.new('wizard', 20, true)
book = Book.new('Gone in seconds', 'Shuhad')
rental = Rental.new('20230105', book, student)

describe Rental do
  context 'When testing the rental class' do
    it 'The person should have rental added' do
      expect(student.rental).to eq rental
    end

    it 'The book should have a record of the rental instance' do
      expect(book.rentals).to eq rental
    end
  end
end
