//Any integers can be in the array

// var number_array = [2,6,4,5,5,1]

// Refactor

//sum refactor
function sum(number_array){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){total += number_array[i]}
  console.log(total)
  return total;
}

//average refactor
function mean(number_array){
  var total = 0;
  for (var i = 0; i < number_array.length; i++){
    total += number_array[i];
    var average = total/(i+1);
  }
  console.log(average)
  return average;
}

//median refactor
function median(number_array){
  var middle = Math.floor(number_array.length/2);
  number_array.sort( function(a,b) {return a - b;} );

  if(number_array.length % 2 == 0)
    //even
    console.log((number_array[middle-1] + number_array[middle]) / 2);
    return ((number_array[middle-1] + number_array[middle]) / 2)
  else
    //odd
    console.log(number_array[middle]);
    return number_array[middle];
}

//testing to make sure the function works

// console.log(mean(number_array))
// console.log(median(number_array))
// console.log(sum(number_array))
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// console.log(evenLengthArray)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)