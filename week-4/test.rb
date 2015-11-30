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

# String Methods
old_string = 'Ruby is cool'
old_string_allcaps = old_string.upcase
new_string = old_string_allcaps.reverse

puts old_string
puts old_string_allcaps
puts new_string