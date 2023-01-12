class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date

    @book = book
    #book['rentals'] = self
    book.rentals << self

    @person = person
    #person['rentals'] = self
    person.rental << self
  end
end
