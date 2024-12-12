class NoGrades < StandardError; end


class Student
  attr_accessor :name, :age
  attr_reader :grades

  def initialize(name,age)
    @name = name
    @age = age
    @grades = []
  end

  def add_grade(grade)
    @grades << grade
    puts "Grade added #{grade}"
  end

  def calculate_avg
    begin
      if @grades.empty?
        raise NoGrades, "No grade added for #{self.name}"
      else
        avg = @grades.sum/@grades.length
        puts "#{self.name} average grade is #{avg}"
      end

    rescue NoGrades =>e
      puts "#{e.message}" 
    end
  end
end

student = Student.new("abc",15)
student.add_grade(45)
student.add_grade(78)
student.calculate_avg

