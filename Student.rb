require './Person'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
  end

  def play_hooky
    puts '¯\(ツ)/¯'
  end
end
