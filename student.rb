require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, classroom, parents_permission: true)
    @classroom = classroom
    super(name, age, parents_permission: parents_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
