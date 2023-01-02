require './person'

class Student < Person
  def initialize(id, name, age, parents_permission = 'Unknown', classroom)
    @classroom = classroom
    super(id, name, age, parents_permission)
  end

  def play_hooky
    puts '¯\(ツ)/¯'
  end
end
