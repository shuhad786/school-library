class Person
  def initialize(id, name, age, parents_permission = 'Unknown')
    @id = id,
          @name = name,
          @age = age,
          @parents_permission = parents_permission
  end

  def get_id
    puts @id
  end

  def get_name
    puts @name
  end

  def get_age
    puts @age
  end

  def set_name=(name)
    @name = name
  end

  def set_age=(age)
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
