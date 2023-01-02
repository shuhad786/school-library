class Person
  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
  end

  def id
    puts @id
  end

  def name
    puts @name
  end

  def age
    puts @age
  end

  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
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
