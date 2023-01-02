class Person
  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
  end

  def getId
    puts @id
  end

  def getName
    puts @name
  end

  def getAge
    puts @age
  end

  def setName=(name)
    @name = name
  end

  def setAge=(age)
    @age = age
  end

  private

  def is_of_age?
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
