class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age

  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
  end

  private
  def of_age?
    if @age >= 18
      puts true
    else
      puts false
    end
  end

  def can_use_services?
    return unless @age >= 18 || @parents_permission == true

    puts true
  end
end
