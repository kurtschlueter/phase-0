#Ruby Introduction Notes 11/30/15

  puts 1+2 #returns nil and prints the output to the console with a new line
  p 1+3 #returns the evaluated code AND print to the console
  print 1+4 #returns nil and prints the output to the console

  #float: floating point, numbers with decimals
  #integer: number without decimals

  #When you do arithmatic with integers you will get integer answers. When the computer cannot get the right answer, it rounds down.
    puts 1+2
    puts 1.0+2.0

    puts 2*3
    puts 2.0*3.0

    puts 5-8
    puts 5.0-8.0

    puts 9/2  # = 4
    puts 9.0/2.0  # = 4.5

  #How many hours in a year? Minutes in a decade? Age in seconds? 1235 million seconds to age?

  myAge = 26.80
  secondsInMinute = 60.00
  minutesInHour = 60.00
  hoursInDay = 24.00
  daysInYear = 365.00
  yearsInDecade = 10.00
  xMillionSeconds = 1235000000.00

  hoursInYear = hoursInDay * daysInYear
  minutesInDecade = minutesInHour * hoursInDay * daysInYear * yearsInDecade
  ageInSeconds = secondsInMinute * minutesInHour * hoursInDay * daysInYear * myAge
  xMillionSecondsToAgeInYears = xMillionSeconds / secondsInMinute / minutesInHour / hoursInDay / daysInYear

  puts hoursInYear
  puts minutesInDecade
  puts ageInSeconds
  puts xMillionSecondsToAgeInYears

  # Strings and Variables
    puts 'Hello World!'
    puts 'I like ' + 'apple pie'
    puts 'blink' * 4
    puts 12 + 12
    puts '12' + '12'
    puts '12 + 12'
    puts '12' * 12
    puts 'You\'re swell!' #The backslash is the escape character
    myName = 'Kurt Schlueter'
    puts 'My name is ' + myName + ' and I am 26 years old.'

    var1 = 6 # var1 = 6 and var2 is nil
    var2 = var1 # var1 = 6 and var2 = 6
    var1 = 3 # var1 = 3 and var2 = 6

  # String Methods (just a few)
    old_string = 'Ruby is cool'
    old_string_allcaps = old_string.upcase
    new_string = old_string_allcaps.reverse

    puts old_string
    puts old_string_allcaps
    puts new_string

#Ruby Notes 12/04/15

  # To get the string version of an object (.to_s)
  # (.to_i) for integer (.to_f) for float
    var1 = 3
    var2 = '2'
    puts var1.to_s
    puts var1.to_s+var2 #32
    puts var1+var2.to_i #5
    puts ''
    puts 'Please eneter a string'
    # puts gets
    puts ''

    puts 'Hello there. What is your name'
    # name = gets
    # puts 'Your\'e name is ' + name + '? What a great name!'
    puts 'Now get lost'

    puts 'Hello there. What is your name'
    # name = gets.chomp
    # puts 'Your\'e name is ' + name + '? What a great name!'
    puts 'Now get lost'

    puts ' '
    puts 'Please input your naming credentials or so help me God.'
    puts ''
    print 'First Name: '
    # firstName = gets.chomp
    print 'Middle Name: '
    # middleName = gets.chomp
    print 'Last Name: '
    # lastName = gets.chomp
    puts ''
    # puts firstName + ' ' + middleName + ' ' + lastName + ' might just be the most ridiculous name I have ever heard.'
    # puts 'Wow. Well ' + firstName + ', what is your favorite number?'
    puts ' '
    print 'Favorite Number: '
    # favoriteNum = gets.chomp
    # betterNum = favoriteNum.to_i + 1
    puts ' '
    # puts 'I am not sure why you would pick such a loser number like ' + favoriteNum + '.'
    puts 'I am not suprised.'
    # puts betterNum.to_s + ' is one of a gazillion numbers that is better than ' + favoriteNum + '.'
    puts 'My name is BashBot and I am a complete ass.'
    puts ' '

  def print_address(name, street_address, city, state, country, zip)
    puts name
    puts street_address
    print city + ', ' + state + ' ' + country + ' ' + zip.to_s
  end

  print_address('Kurt Schlueter', '780 Cragmont Avenue', 'Berkeley', 'CA', 'USA', 94708)
  puts ' '

  # If objects are like nouns in ruby language, methods are like verbs. And just like in english. You cannot have a verb without a noun to do the verb.

  # So in english a clock tics.
  # In ruby clock.tic

  # Every method is being done by some object

  # Here are some more string methods

    var1 = 'cat'
    puts var1
    puts 'The reverse of ' + var1 + ' is ' + var1.reverse + '.'
    puts 'The length of ' + var1 + ' is ' + var1.length.to_s + '.'

    catLength = var1.length.to_s
    puts catLength

    puts var1.upcase
    puts var1.downcase
    puts var1.swapcase
    puts var1.capitalize

    lineWidth = 10
    puts var1.center(lineWidth)
    puts var1.ljust(lineWidth)
    puts var1.rjust(lineWidth)

    puts ' '

    print var1.ljust(lineWidth) + var1.center(lineWidth) + var1.rjust(lineWidth)
    puts ' '
    puts ' '

  # Making a table in command terminal with Ruby

    lineWidth = 50
    puts 'Table of Contents'.center(lineWidth)
    puts 'Chapter 1: Methods'.ljust(lineWidth/2) + 'page 1'.rjust(lineWidth/2)
    puts 'Chapter 2: Classes'.ljust(lineWidth/2) + 'page 2-5'.rjust(lineWidth/2)
    puts 'Chapter 3: Objects'.ljust(lineWidth/2) + 'page 6-8'.rjust(lineWidth/2)

    # Some math

      puts(Math::PI)
      puts(Math::E)
      puts(Math.cos(Math::PI/3))
      puts(Math.tan(Math::PI/4))
      puts(Math.log(Math::E**2))
      puts((1 + Math.sqrt(5))/2)




      puts ' '

      teststring = ''

      puts teststring

      testarray = ['a','b','c']

      puts testarray[0]

      sentenceadd = teststring + testarray[0]

      puts sentenceadd


      var1= 1
      var2 = var1 + 1
      puts ''
      puts 'var1 = ' + var1.to_s
      puts 'var2 = ' + var2.to_s
      puts''

      # :var3 = 1
      # :var4 = :var3 + 1
      # puts ':var3 = ' + :var3
      # puts ':var4 = ' + :var4

restaurant_menu = {
  "Ramen" => 3,
  "Dal Makhani" => 4,
  "Tea" => 2
}

puts restaurant_menu['Ramen']
restaurant_menu["Ramen"] = 4
puts restaurant_menu['Ramen']


restaurant_menu2 = {
  :Ramen => 3,
  :DalMakhani => 4,
  :Tea => 2
}

puts restaurant_menu2[:Ramen]
restaurant_menu2[:Ramen] = 4
puts restaurant_menu2[:Ramen]

def pl(list)
  list.each do|item|
  puts item
  end
end
pl([1,2,3])

array =['a','b','c']
array2 = array + Array.new(2, 'apple')

puts array.inspect
puts array2.inspect