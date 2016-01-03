#Attr Methods

# I worked on this challenge by myself

# I spent [1] hours on this challenge.

class NameData
  attr_accessor :name
  def initialize
    @name = 'Kurt'
  end
end

class Greetings
  def initialize
    @nameInstance = NameData.new
  end
  def hello
    puts "Hello #{@nameInstance.name}, welcome to the world."
  end
end

greet = Greetings.new
greet.hello

# Reflection

# Release 1
  # What are these methods doing?
    # These methods are either setting instance variables (initialize), reading (what_is_...) instance variables, or writing (change_my_...) instance variables.

  # How are they modifying or returning the value of instance variables?
    # > p instance_of_profile.what_is_age returns the age because that method contains @age. So writing > p instance_of_profile.what_is_age would be the same as just writing > instance_of_profile.what_is_age is the method contained > p @age.

# Release 2
  # What changed between the last release and this release?
    # This release replaced the what_is_age method with > attr_reader :age which is a child of the class itself. We have a method called #.age which returns the value of @age, just like what_is_age did.

  # What was replaced?
    # This release replaced the what_is_age method with > attr_reader :age which is a child of the class itself. We have a method called #.age which returns the value of @age, just like what_is_age did.

  # Is this code simpler than the last?
    # Of course.

# Release 3
  # What changed between the last release and this release?
    # This release replaced the change_age method with > attr_writer :age which is a child of the class itself. We have a method called #.age which returns the value of @age or change the value of @age.

  # What was replaced?
      # This release replaced the change_age method with > attr_writer :age which is a child of the class itself. We have a method called #.age which returns the value of @age or change the value of @age.

  # Is this code simpler than the last?
    # Of course.

# Final Reflection
  # What is a reader method?
    # The reader method allows for someone to return the value of an instance variable outside of the class instance.

  # What is a writer method?
    # The writer method allows for someone to change the value of an instance variable outside of the class instance.

  # What do the attr methods do for you?
    # They can give read write permissions to users pf a class. attr_reader is read only, attr_writer is write only, and attr_accessor is read and write.

  # Should you always use an accessor to cover your bases? Why or why not?
    # No becuase you could want only read privilages in some situations or only write privilages in others. It depends what is desired.

  # What is confusing to you about these methods?
    # They make sense.