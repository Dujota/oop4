# Both the instructor and the student have names. We know that instructors and students are both people. Create a parent Person class that contains the attribute name and an initializer to set the name.

class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

# Both the instructor and the student should also be able to do a greeting, like "Hi, my name is #{name}". Where's the best place to put this common method?
  def greeting
    puts "Hi, my name is #{name}"
  end

end



# Let's start by creating two classes: one called Student and another called Instructor.
class Instructor < Person
# The instructor class has a method called teach that returns "Everything in Ruby is an Object".

  def teach
    puts "Everything in Ruby is an Object"
  end

end



class Student < Person
# The student class has a method called learn that returns "I get it!".
  def learn
    puts "I Get it!"
  end

end

# Create an instance of Instructor whose name is "Nadia" and call her greeting.
nadia = Instructor.new("Nadia")

nadia.greeting

# Create an instance of Student whose name is "Chris" and call his greeting.
chris = Student.new("Chris")

chris.greeting

# Call the teach method on your instructor instance and call the learn method on your student. Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.

nadia = Instructor.new("Nadia").teach  # if we dont use the greeting call the way i did, then we dont have to use the instance again
chris = Student.new("Chris").learn

# we cannot call the teach method on the student becuase they are only inheriting the methods from Person. if i inherit from teacher, then it will work
