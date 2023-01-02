require './person'

class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
  end

  def can_use_services?
    puts true
  end
end
