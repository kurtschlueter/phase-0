// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var example1 = 5;
example1 = example1 * 5;
console.log(example1);

// var faveFood = prompt('What is your favorite food?','...');
// alert('Hey! That is my favorite as well!')

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping Triangle
for (x=1; x<8; x++){
  var stringTemp = '#';
  for (y=1; y<x; y++) {
    stringTemp = stringTemp + '#'
  }
  console.log(stringTemp);
}

// FizzBuzz
for (x=1; x<=100; x++){
  if (x%3 == 0) {
    console.log('FIZZ');
  }
  else if (x%5==0 && x%3!==0) {
    console.log('BUZZ')
  }
  else {
    console.log(x);
  }
}

// Chess Board
var rowChange = 0;
var dir1 = 0;
var stringTemp = '';
for (x=1; x<=8; x++){
  if (dir1 ==0) {
    stringTemp = ' ';
    dir1 = 1;
  }
  else {
    stringTemp = '#';
    dir1 = 0;
  }
  for (y=1; y<8; y++) {

    if (dir1 == 0){

      stringTemp = stringTemp + ' '
      dir1 = 1
    }
    else {
      stringTemp = stringTemp + '#'
      dir1 = 0
    }
  }
  console.log(stringTemp);
  if (dir1 ==0) {
    dir1 = 1;
  }
  else {
    dir1 = 0;
  }
}

// Functions

// Complete the `minimum` exercise.
function minimum(x,y){
  if (x>y){
    console.log(y + ' is the minimum');
  }
  if (x<y){
    console.log(x + ' is the minimum');
  }
  if (x==y){
    console.log('Both ' + x + ' and ' + y + ' are the minimum');
  }
}
minimum(0,0);
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  firstName: 'Kurt',
  lastName: 'Schlueter',
  favFood1: 'Indian',
  favFood1: 'Mexican',
  favFood1: 'Avocados',
  quirk: 'I love avocados',
}