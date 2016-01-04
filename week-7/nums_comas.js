// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Patrick Oliphant for 1 hour

// Pseudocode

// Input: number
// Output: string with commas
// 1. Turn input number to string
// 2. Flip string
// 3. Loop through flipped string
// 4. concatenate comma after every third char
// 5. flip again
// 6. return

// Initial Solution

var numsWithCommas = function(num) {

  var numString = num.toString();
  var stringLength = numString.length;
  var stringFlipped = []

  // This is where we flip the string
  for (var x = stringLength; x >= 0 ; x--) {
    stringFlipped.push(numString[x]);
  }
  stringFlipped = stringFlipped.join('');
  // console.log(stringFlipped);

  // This is where we insert the commas
  var stringFlippedWithCommas = [];
  for (var y = 0; y < stringLength; y++) {

    if ((y % 3 === 0)&&(y !== 0)){
      stringFlippedWithCommas.push(",");
    }
    stringFlippedWithCommas.push(stringFlipped[y]);
  }
  stringFlippedWithCommas = stringFlippedWithCommas.join('');
  // console.log(stringFlippedWithCommas);

  // This is where we flip the string back around
  var finalString = [];
  var stringFlippedWithCommasLength = stringFlippedWithCommas.length;
  for (var z = stringFlippedWithCommasLength; z >= 0 ; z--) {
    finalString.push(stringFlippedWithCommas[z]);
  }
  finalString = finalString.join('');
  // console.log(finalString);
  return finalString
}

console.log(numsWithCommas(12345678));

// Refactored Solution

function separateComma(number) {
  var result = [];
  var numArray = number.toString().split("").reverse();
  for (var i = 0 ; i < numArray.length; i++) {

    if ((i % 3 === 0)&&( i !== 0)){
      result.push(",");
    }
    result.push(numArray[i]);
  }
  result = result.reverse().join('');
  // console.log(result);
  return result;
}

console.log(separateComma(123456789))


// Your Own Tests (OPTIONAL)

  // Due to time boxing, we did not complete this. Also, I personally was not able to get the earlier assignments finished before this pairing session so I am not sure what to even do.

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  // Honestly, we approached the problem the same way. We knew we want to convert the input number to a reversed string so that we could count by 3's from the end to insert the comma. I did it the same was with ruby. We created 3 for loops in our initial solution becuase we couldn't not find shorthand methods for reverse. The execution was a little different due to some struggles figuring out syntax.

// What did you learn about iterating over arrays in JavaScript?

  // I like that for loops are status quo in JS. I liked using them in Ruby but my pairs and guides did not share my enthusiasm. It just makes the most sense for me. I do not like boxing things in brackets. It's too hard to read. I like using 'end' like in Ruby.

// What was different about solving this problem in JavaScript?

  // Syntax obviously. The actual logic to solving this problem really isn't that difficult. I do not want to say anything negative about JS just because this was day 1 for me. It was a lot easier in Ruby because of familiarity but that is not fair. I'll be able to answer this better in time.

// What built-in methods did you find to incorporate in your refactored solution?

  // .split()
  // .reverse()
  // .push()
  // .length
  // .toString