class Course
  attr_reader :name,
              :capacity,
              :students

  def initialize(course_name, capacity)
    @name = course_name
    @capacity = capacity
    @students = []
    @full = false
  end

  def full?
    if @students.count >= 2
      @full = true
    else
      false
    end
  end

  def enroll(student)
    @students << student
  end
end
