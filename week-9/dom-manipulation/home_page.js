
// DOM Manipulation Challenge

// I worked on this challenge by myself

// Add your JavaScript calls to this page:

// Release 1:

  document.getElementById("release-0").className += 'done';
  // in jquery : $('#foo').addClass('done');

// Release 2:

  document.getElementById("release-1").style.display = 'none';

// Release 3:

  document.getElementsByTagName('h1')[0].innerHTML =  "this is new text for header1";

// Release 4:

  document.getElementById('release-3').style.backgroundColor = '#955251';

// Release 5:

  var rel4class = document.getElementsByClassName('release-4');

  for (x=0; x<rel4class.length; x++){
    rel4class[x].style.fontSize = '2em';
  }

// Release 6:

  var tempHidden = document.getElementById('hidden');
  document.body.appendChild(tempHidden.content.cloneNode(true));

// Release 7:

// What did you learn about the DOM?

// The DOM or Document Object Model is the API through which JavaScript interacts within a website. The DOM has a heirarchy made up of nodes. These nodes represent certain entities within a page like elements or texts. Jquery is a library that creates shortcuts to DOM API manipulation. While jquery seems easier and more intuitive to use, it is imortant to learn the source before just using the shortcut. DOM is the foundation, jquery along with other libraries branch out from there.

// What are some useful methods to use to manipulate the DOM?

// All of the get element methods are essential. You need to id the element you want to alter first. I used .style and .innerHTML to change styling and text content. I am sure there are many more that I will want to learn.