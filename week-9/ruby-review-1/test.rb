#Pseudocode

# Initialize all info with instance variables
#   cities
#   students
#   name
#   p0_start_date
#   immersive_start_date
#   gradition_date
#   email_list
#   num_of_students

# add_student method with arguments of their name and city and email maybe in one object
#   have name linked to instance variable students
#   have city linked to instance variable cities
#   have email linked to instance variable email_list
#   take length of students to get num_of_students

# remove_student method with student object
#   .remove method for certain name

# currently_in_phase method with current date
#     if date1 then phase 0
#     if date2 then phase1
#     if date3 then phase2
#     if date4 then phase3

# graduated? method with current date
#       if todays date >= gradDate
#         true

# I got rid of all the dates since they are repetative for this exercise and I am out of time.

# Initial Solution

kurt = {name: 'Kurt',
  city: 'Chicago',
  email: 'kurt@gmail.com'
}

kate = {name: 'Kate',
  city: 'New York',
  email: 'kate@gmail.com'
}

thomas = {name: 'Thomas',
  city: 'San Francisco',
  email: 'thomas@gmail.com'
}

studentsHash = {kurt: kurt,
  kate: kate,
  thomas: thomas
}

class GlobalCohort
  def initialize(studentsHash, cohortName)
    @studentsHash = studentsHash
    @cohortName = cohortName
    edit_lists
  end

  def edit_lists
    @email_list = []
    @cities = []
    @students = []
    @num_of_students = []
    @studentsHash.each do |key, value|
      @students << value[:name]
      @cities << value[:city]
      @email_list << value[:email]
      @num_of_students = @students.length
    end
  end

  def add_student (student)
    @studentsHash[student[:name].downcase.to_sym] = student
    edit_lists
  end

  def remove_student (student)
    @studentsHash.delete(student[:name].downcase.to_sym)
    edit_lists
  end

  def printStudents
    puts 'Global Numbers'
    puts "student list: #{@students}"
    puts "number of students: #{@num_of_students}"
    puts ' '
  end
end

class ChicagoCohort < GlobalCohort

  def initialize(studentsHash, cohortName)
    @studentInChiHash = {}
    @studentsHash = studentsHash
    @cohortName = cohortName
  end

  def chi_student_list(student)
    @students_in_chi_num = 0
    @students_in_chi = []
    @studentsHash.each do |key, value|
        if value[:city] == 'Chicago'
          @studentInChiHash[student[:name].downcase.to_sym] = student
          @students_in_chi_num = @students_in_chi_num + 1
          @students_in_chi << value[:name]
        end
    end
  end

  def printChiStudents
    puts 'Chicago Numbers'
    puts "student list: #{@students_in_chi}"
    puts "number of students: #{@students_in_chi_num}"
    puts ' '
  end

end

y = ChicagoCohort.new(studentsHash, 'squirrels')

carly = {name: 'Carly',
  city: 'San Francisco',
  email: 'carly@gmail.com'
}

y.add_student(carly)
y.printStudents

johnny = {name: 'Johnny',
  city: 'New York',
  email: 'johnny@gmail.com'
}

y.add_student(johnny)
y.printStudents

y.remove_student(kurt)
y.printStudents

alexis = {name: 'Alexis',
  city: 'Chicago',
  email: 'alexis@gmail.com'
}

y.add_student(alexis)

y.printStudents
# y.printChiStudents

# Thomas' attempted solution

# class GlobalCohort
#   #your code here
#   attr_reader
#   def initialize (students, name, p0_start_date, immersive_start_date, graduation_date, email_list,num_of_students)
#     @students = students
#     @name = name
#     @p0_start_date = p0_start_date
#     @immersive_start_date = immersive_start_date
#     @graduation_date = graduation_date
#     @email_list = email_list
#     @num_of_students = num_of students
# end

#   def add_student(student)
#     @students << student
#   end

#   def remove_student(student)
#     @students.remove(student)
#   end

#   def currently_in_phase
#     if Date.today < immersive_start_date
#       return 0
#     elsif Date.today >= immersive_start_date && Date.today < immersave_start_date + 21
#       return 1
#       elseif Date.today  >= immersive_start_date + 21 && Date.today >= immersive_start_date + 42
#       return 2
#       elseif Date.today  >= immersive_start_date + 42 && Date.today >= immersive_start_date + 63
#       return 3
#     end
#   end

#   def graduated?
#     Date.today >= @graduation_date ? true : false
#   end

# class LocalCohort
#   #your code here
#   def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list,num_of_students, city)
#     super(students)
#     super(name)
#     super(p0_start_date)
#     super(immersive_start_date)
#     super(graduation_date)
#     super(email_list)
#     super(num_of_students)
#     @city = city
# end


# GlobalCohort.new(
#   ["james","pat","alexis"],
#   "Squirrels",
#   Date.new(2015,10,19),
#   Date.new(2016,1,18),
#   Date.new(2016,4,16)),
#   ['james@gmail.com', 'pat@gmail.com', 'alexis@gmail.com'],
#   64)
