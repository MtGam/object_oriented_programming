# Person as parent class
class Person

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end

end



class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object!"
  end

end

# instance of instructor named Chris and the call to his greeting/teach
chris = Instructor.new("Chris")
chris.greeting
chris.teach

#instance of student named Cristina and the call to her greeting/learn
cristina = Student.new("Cristina")
cristina.greeting
cristina.learn
