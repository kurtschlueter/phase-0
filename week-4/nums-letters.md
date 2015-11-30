## What does puts do?

- puts: returns nil and prints the output to the console with a new line
- p: returns the evaluated code AND print to the console
- print: returns nil and prints the output to the console

## What is an integer? What is a float?

- float: floating point, numbers with decimals
- integer: number without decimals

When you do arithmatic with integers you will get integer answers. When the computer cannot get the right answer, it rounds down. So for example

```ruby
puts 9/2  # = 4
puts 9.0/2.0  # = 4.5
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