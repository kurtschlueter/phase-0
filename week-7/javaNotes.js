// OBJECT LITERAL
  // creating an object and assigning values

var phase0 = {} // empty Object

var phase0v2 = {

  // properties of the object
  prop1: 1,
  prop2: 'string',
  prop3: false,
  prop4: function(){
    return 'prop four is a function'
  },
};

// to access those properties you can use bracket or dot notation

  // Let's just use dot notation for now
   console.log(phase0v2.prop1) // returns 1
   console.log(phase0v2.prop2) // returns 'string'
   console.log(phase0v2.prop3) // returns false
   console.log(phase0v2.prop4) // does not work. will print 'FUNCTION'
   console.log(phase0v2.prop4()) // need brackets in order to execute

// To iterate over an objects properties

for (i in phase0v2){
   console.log(phase0v2[i])
}

// Use properties from other objects

var phase1 = {
  valuableInfo: phase0v2.prop2,
}

console.log(phase1.valuableInfo)
console.log(phase0v2.prop2)

// Make a change
phase1.valuableInfo = 'hello world'
console.log(phase1.valuableInfo)
console.log(phase0v2.prop2)

// DOT NOTATION VERSUS BRACKET NOTATION

  // When you can, use dot notation. It is cleaner and easier to read than bracket notation.

var simpleObj = {
  key1: 'My ',
  key2: 'name ',
  key3: 'is ',
  key4: 'Kurt',
}
// Dot
console.log(simpleObj.key1 + simpleObj.key2 + simpleObj.key3 + simpleObj.key4)
// Bracket
console.log(simpleObj['key1'] + simpleObj['key2'] + simpleObj['key3'] + simpleObj['key4'])

  // Reasons to use bracket example 1
    var simpleObjV2 = {
      5: 'hello',
    }

    console.log(simpleObjV2[5]) // 'hello'
    // console.log(simpleObjV2.5) // error

  // Reasons to use bracket example 2
    var output = ''
    for (i=1; i<5; i++){
      output += (simpleObj['key' + i])
    }
    console.log(output)