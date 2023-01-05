require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'

class Person < Nameable
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(name, age, parents_permission: true)
    @id = Random.rand(1..1000),
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
    of_age? || @parents_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end
end
