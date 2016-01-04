// Accountability Group 12
// 7.8 JavaScript Telephone
// Due January 4, 2016

// RELEASE 1: TESTS TO USER STORIES by Jim O'Neal

// Ok, I'm going to do my best to follow the instructions and write my user
// stories without using any code language at all, although the instructions
// do say that I can use the name of the functions that the tests intend for
// us to write.  Here it goes:

// As a user, I want to perform three different mathematical operations on a
// list of numbers.  The list of numbers could be any quantity of numbers.  The
// three things are three separate operations and don't need to be done all at
// once.  I just want to be able to use whichever operation I want on any list
// of numbers.  The three things I want to be able to do are:
// 1) I want to add up (sum) the list of numbers.
// 2) I want to find the average (mean) of the list of numbers.
// 3) I want to find the middle value (median) of the list of numbers.

// RELEASE 2: USER STORIES TO PSEUDOCODE by LeeAnne Hawley

// Create a variable that takes an array of number elements (it can be contain any number of elements).
// Create three separate operations that can all be run on your list of numbers.

// Operation 1 should take all of the elements in your numbers variable and add them up to get the sum.

// Operation 2 should find the average (mean) of the numbers variable.  To do so:
  // First calculate the sum of all of the numbers.
  // Then divide the sum by the number of elements in the variable.


// Operation 3 (has two senarios depending on the number of elements in the numbers variable) you should find the middle (median) value of the elements in the numbers variable.  To do so:
  // If there is an odd number of elements in the numbers variable:
  //First order the numbers either from lowest to highest or highest to lowest.
  // Then find the middle value of the numbers variable which is the median.

  // If there is an even number of elements in the numbers variable:
  // First order the numbers either from lowest to highest or highest to lowest.
  // Find find the two middle values.
  // Add the two middle values together then divide them by two.
  // That should give you the median

// RELEASE #3: PSEUDOCODE TO CODE by Gary Wong

//Any integers can be in the array
var number_array = [2,6,4,5,5,1]

//sum
var operation_1_draft = function(){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){
    total += number_array[i];
  }
  console.log(total)
}

//average
var operation_2_draft = function(){
  var total = 0;
  var average = 0;
  for (var i = 0; i < number_array.length; i++){
  total += number_array[i];
    average = total/(i+1);
  }
  console.log(average)
}

//median
var operation_3_draft = function() {
  var median = 0;
  var middle = Math.floor(number_array.length / 2);
  if (number_array.length % 2 == 0) {
    //even
    number_array.sort(function(a,b){return a - b})
    median = (number_array[middle-1]  + number_array[middle]) /2
  }else {
    //odd
    number_array.sort(function(a,b){return a - b})
    median = number_array[middle]
  }
  console.log(median)
}

//testing to make sure the function works
// operation_1_draft()
// operation_2_draft()
// operation_3_draft()
// console.log(number_array)

// RELEASE 4: REFACTOR AND TRANSLATE TO USER STORIES by Chris Wong

//Any integers can be in the array
var number_array = [2,6,4,5,5,1]

// Refactor

//sum refactor
function sum(number_array){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){total += number_array[i]}
  return total
}

//average refactor
function mean(number_array){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){
    total += number_array[i];
    var average = total/(i+1);
  }
  return average
}

//median refactor
function median(number_array){
  var middle = Math.floor(number_array.length/2);
  number_array.sort( function(a,b) {return a - b;} );

  if(number_array.length % 2 == 0)
    //even
    return ((number_array[middle-1] + number_array[middle]) / 2);
  else
    //odd
    return number_array[middle]
}

/* User Stories
operation_1
As a user, I want to take a group of numbers and add them all together to get the total.
operation_2
As a user, I want to get the average of a group of numbers.
operation_3
As a user, I want to get the median of a group of numbers.
If the group of numbers is even, I want to get the average of the two closest numbers in the middle.
*/

// RELEASE 5: PULL IT ALL TOGETHER by Kurt Schlueter

// Thanks to everyone for being patient with me. I went ahead and refactored Chris' solution so that I could run the tests from the tests.js file. I inserted an input into each function, changed the name of each function, and returned a value in each function. Everything worked as expected. Below I took the tests.js file and summarized it so that everyone can run it on this file and see that every function is working like it is supposed to.

//testing to make sure the function works
oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

console.log(sum(oddLengthArray))
console.log('Needs to be 27')
console.log(sum(evenLengthArray))
console.log('Needs to be 43')
console.log(mean(oddLengthArray))
console.log('Needs to be 3.857142857142857')
console.log(mean(evenLengthArray))
console.log('Needs to be 5.375')
console.log(median(oddLengthArray))
console.log('Needs to be 4')
console.log(median(evenLengthArray))
console.log('Needs to be 5.5')

// Thanks everyone!