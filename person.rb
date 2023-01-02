class Person
  attr_accessor :id, :name, :age

  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
  end

  private

  def of_age?
    if @age >= 18
      return true
    else
      return false
    end
  end

  def can_use_services?
    if of_age?() || @parents_permission == true
      return true
    end
  end
end
