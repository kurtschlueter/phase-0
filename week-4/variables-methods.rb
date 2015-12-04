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