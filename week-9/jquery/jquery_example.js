// U3.W9:JQuery

// I worked on this challenge [with Thomas Huang].
// This challenge took me [2] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image
  $('img').attr('src', 'dbc_logo.png');

//RELEASE 2:
  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
  $('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
  bodyElement = $('body');

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
  $("body > h1").css({
    'color': 'blue',
    'border':'2px dashed',
    'visbility':'visible'
  });

  $('.mascot > h1').html('Squirrels')

// RELEASE 5:
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://images.clipartpanda.com/squirrel-clipart-Squirrel-clip-art-hd-wallpapers.jpeg')
    $(this).css({
    'height': '150px',
    'width': '150px'
    });

  });

$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
    $(this).css({
    'height': '',
    'width': ''
    });
  });

// RELEASE 6:

$('img').mouseenter(function(){
  $(this).css({'border':'1px solid black'}).animate({
    borderWidth: 4
});
});

$('img').mouseleave(function(){
  $(this).css({'border':'1px solid black'}).animate({
    borderWidth: 0
});
});

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// REFLECT:

// What is jQuery?

// jQuery is a JavaScript library that allow for webpage handling and manipulation. For now, that is what we care about... DOM manipulation. It also has annimation effects and AJAX support.

// What does jQuery do for you?

// Like I said above, jQuery allows for easy manipulation of the DOM.

// What did you learn about the DOM while working on this challenge?

// The DOM or Document Object Model is the API through which JavaScript interacts within a website. The DOM has a heirarchy made up of nodes. These nodes represent certain entities within a page like elements or texts. Jquery is a library that creates shortcuts to DOM API manipulation. While jquery seems easier and more intuitive to use, it is imortant to learn the source before just using the shortcut. DOM is the foundation, jquery along with other libraries branch out from there.