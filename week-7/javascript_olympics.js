 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up

var kobe = {
  name: 'Kobe Bryant',
  nationality: 'USA',
  event: 'NBA Title',
};

var christen = {
  name: 'Christen Press',
  nationality: 'USA',
  event: 'FIFA WWC',
};

var alexis = {
  name: 'Alexis Sanchez',
  nationality: 'Chile',
  event: 'FIFA World Cup',
};

var athletes = [alexis, kobe, christen];

// Bulk Up

function addWinProperty(athletes) {

  for (x=0; x<athletes.length; x++) {
    athletes[x].win = athletes[x].name + ' won the ' + athletes[x].event;
    console.log(athletes[x].win)
  }
}

addWinProperty(athletes)
// function declarations load before any code is executed.
// function expressions load only when the interpreter reaches that line of code.
// I used a declaration for addWinProperty although it does not really matter here

// Jumble your words

function stringReverse(stringInput) {

  var stringLength = stringInput.length;
  var stringFlipped = []

  // This is where we flip the string
  for (var x = stringLength-1; x >= 0 ; x--) {
    stringFlipped.push(stringInput[x]);
  }
  stringFlipped = stringFlipped.join('');
  console.log(stringFlipped);
}

stringReverse('abcd');

// 2,4,6,8

var numArray = [1,2,3,4,5,6,7,8,9,10];

function evenNums(arrayInput) {

  evenArray = [];
  for (var x = 0; x < arrayInput.length ; x++) {
    if(arrayInput[x]%2 == 0){
      evenArray.push(arrayInput[x]);
    }
  }
  console.log(evenArray);
  return evenArray;
}

evenNums(numArray);

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Pretty much all of it. I got more practice with making functions and manipulating objects. In the first part I created three different objects about athletes using literal notation. In the last excercise I used a constructor function. Much easier.

// What are constructor functions?

// Constructor functions are useful when you want to create more than one instance of an object. With constructor functions you define first by setting a foundation, then populate with data. The difference in syntax between literal and constructor is quite simple to see.

// How are constructors different from Ruby classes (in your research)?

// I am sure there are some functionality differences. Ruby seems more object oriented.