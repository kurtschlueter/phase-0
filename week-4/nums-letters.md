## What does puts do?

- puts: returns nil and prints the output to the console with a new line
- p: returns the evaluated code AND print to the console
- print: returns nil and prints the output to the console

## What is an integer? What is a float?

- float: floating point, numbers with decimals
- integer: number without decimals

When you do arithmetic with integers you will get integer answers. When the computer cannot get the right answer, it rounds down. So for example

```ruby
puts 9/2  # = 4 Integer division
puts 9.0/2.0  # = 4.5 Float division
```

## How many hours in a year? Minutes in a decade? Age in seconds? 1235 million seconds to age?

```ruby
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
```

## How does Ruby handle addition, subtraction, multiplication, and division of numbers?

I guess I'm not quite sure what the question is here. Ruby handles arithmetic like a calculator for the most part. Like a calculator, you can assign the format of the variables like integer and float. I know other languages have more numeric objects like real or double.

```ruby
sum = num1 + num2
difference = num1 - num2
quotient = num1float / num2float
product = num1 * num2
modulus = num1 % num2
```
## What are strings? Why and when would you use them?

A string is a sequence of characters or sequence of bytes that represent a sequence of characters. They are objects like numbers and have their own methods that allow for modifications and manipulations. Why and when? Well that's a pretty broad question. Strings are used for so many reasons and are used all the time. Without objects like strings, there would be no programming.

## What are local variables? Why and when would you use them?

A variable is a place to store data. A local variable is a variable that exists only in the block of code that it was created (scope). They have to be created (initialized) in order to be used because they do not default to nil like global variables.

You want to use variables because they can store large amounts of data. If my name was 30 characters long, it would be a pain in the butt to have to type it out every time I want to use it. Instead, I could just assign it a variable.

## How was this challenge? Did you get a good review of some of the basics?

This challenge was straight forward. I will continue to review further.

## Below are the three ruby files.

[Exercise 1: Variables](https://raw.githubusercontent.com/kurtschlueter/phase-0/master/week-3/chrome-devtools/imgs/Exercise1.png)

[Exercise 2: Simple String Methods](https://raw.githubusercontent.com/kurtschlueter/phase-0/master/week-3/chrome-devtools/imgs/Exercise2.png)

[Exercise 3: Local Variables and Basic Arithmetical Operations](https://raw.githubusercontent.com/kurtschlueter/phase-0/master/week-3/chrome-devtools/imgs/Exercise3.png)