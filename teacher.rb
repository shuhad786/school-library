require './person'

class Teacher < Person
  def initialize(name, age, specialization, parents_permission = 'Unknown')
    @specialization = specialization
    super(name, age, parents_permission: true)
  end

  def can_use_services?
    true
  end
end
