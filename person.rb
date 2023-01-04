require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
    @rental = []
    super()
  end

  private

  def of_age?
    return true if @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parents_permission == true
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end
end
