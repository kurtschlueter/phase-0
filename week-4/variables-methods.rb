puts ' '
puts 'Please input your naming credentials or so help me God.'
puts ''

print 'First Name: '
firstName = gets.chomp
fLength = firstName.length.to_s

print 'Middle Name: '
middleName = gets.chomp
mLength = middleName.length.to_s

print 'Last Name: '
lastName = gets.chomp
lLength = lastName.length.to_s

totalNameLength = fLength.to_i + mLength.to_i + lLength.to_i
totalNameLength = totalNameLength.to_s

puts ''
puts firstName + ' ' + middleName + ' ' + lastName + ' might just be the most ridiculous name I have ever heard.'
puts 'Did you also know that you have ' + totalNameLength + ' characters in your name?'
puts fLength + ' in your first. ' + mLength + ' in your middle. And ' + lLength + ' in your last.'
puts 'In case you can\'t add... ' + fLength + ' + ' + mLength + ' + ' + lLength + ' equals ' + totalNameLength + '.'
puts totalNameLength + ' is just the worst. Wow.'
puts ' '
puts 'Well ' + firstName + ', what is your favorite number?'
puts ' '

print 'Favorite Number: '
favoriteNum = gets.chomp
betterNum = favoriteNum.to_i + 1
puts ' '

puts 'I am not sure why you would pick such a loser number like ' + favoriteNum + '.'
puts 'I am not suprised.'
puts betterNum.to_s + ' is one of a gazillion numbers that is better than ' + favoriteNum + '.'
puts 'My name is BashBot and I am a complete ass.'
puts ' '

## Links
  puts 'https://github.com/kurtschlueter/phase-0/blob/master/week-4/address/my_solution.rb'

  puts 'https://github.com/kurtschlueter/phase-0/blob/master/week-4/math/my_solution.rb'

  puts 'https://github.com/kurtschlueter/phase-0/blob/master/errors.rb'

## How do you define a local variable?

  # A variable is a place to store data. A local variable is a variable that exists only in the block of code that it was created (scope). They have to be created (initialized) in order to be used because they do not default to nil like global variables.

  # You want to use variables because they can store large amounts of data. If my name was 30 characters long, it would be a pain in the butt to have to type it out every time I want to use it. Instead, I could just assign it a variable.

## How do you define a method?

  # Simply put, methods do things. If objects are like nouns in ruby language, methods are like verbs. And just like in english, you cannot have a verb without a noun to do the verb. So in english a clock tics. In ruby clock.tic. Every method is being done by some object.

## What is the difference between a local variable and a method?

  # Described above.

## How do you run a ruby program from the command line?

  # ruby xxxxx.rb

## How do you run an RSpec file from the command line?

  # rspec xxx.rb

## What was confusing about this material? What made sense?

  # Objected oriented programming is a nice concept to get used to. It keeps everything organized. Everything was pretty simple so far so not much was confusing. RSPEC is a new concept to me. I usually evaluate my code by looking at the output myself. This is interesting to say the least.
