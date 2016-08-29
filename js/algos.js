//function takes an array of words
// returns the longest phrase

//sorts through the array
//organizes based on length
//organizes based upon length
//logs the longest

//function accepts an array as a parameter 
//prints the longest item in the array
function printer(array){

  //stores array as variable
  var arr = array

  //sorts over the array with the function 
  //comparing length of items
  arr.sort(function(a, b){
    return b.length - a.length;
  });

  // stores the last item of the array into variable
  var longest = arr.shift()

  //returns the the variable longest
  return longest;
}


//function takes two Objects and compares the key value pair
function compareTwo(first, second){

  var propertyFirst = Object.getOwnPropertyNames(first);
  var propertySecond = Object.getOwnPropertyNames(second);

  var stringFirst = propertyFirst.toString();
  var stringSecond = propertySecond.toString();

  //console.log(stringFirst);
  //console.log(stringSecond);

  if (stringFirst == stringSecond) {
    console.log("true");
  } else {
    console.log("false");
  }
};

//function to create a random integer ranging from 1 - 10
function randomInteger(min, max) {
    return Math.floor(Math.random() * (max - 1 + min)) + min;
};

function randomWord(){
  //var word = "";
  //var letters = "abcdefghijklmnopqrstuvwxyz"

  //starts off as an empty string;
  var word = "";
  
  //sets up variable for finding a letter  
  var letters = "abcdefghijklmnopqrstuvwxyz";
    
    //for loop that counts up to an integer, counts up by one
    for( var i=0; i <= randomInteger(1, 10); i++ )
        //word += letters.charAt(Math.floor(Math.random() * letters.length));
        //adds to var word with a string at random index from 0 to length of var letters
        word += letters.charAt(randomInteger(0, letters.length));
    
    //returns the word    
    return word;
};

//Write a function that takes an integer for length,
//builds and returns an array of strings of the given length

//user input determines array length
function randomTestData(integer){

  //creates new array
  var arr = new Array();

  //for loop counts up until it reaches the integer inputted, counts up by one
  for(var i=0; i < integer; i++)
    //each time it push a random word into the arr
    arr.push(randomWord());
  //arr.fill(randomWord);
  //console.log(arr);
  return arr;  
}

///-------------------Driver code---------------------

//adds code for testing
var words = ["long phrase","longest phrase","longer phrase"];
words.unshift("even longer phrase");
words.push("phrase");
//console.log(words);

//driver code for printer function
console.log(printer(words));

//sets up Objects
var firstObject = {name: "Steven", age: 54};
var secondObject = {name: "Tamir", age: 54};
var thirdObject = {first: "Steven", years: 54};
var fourthObject = {name: "Steven", age: 54};

compareTwo(firstObject, secondObject);
//compareTwo(firstObject, thirdObject);
//compareTwo(firstObject, fourthObject);

//compareTwo(firstObject, thirdObject);
//compareTwo(firstObject, fourthObject);



//console.log(randomInteger(1, 10));
//console.log(randomWord());

var arrayOfWords = randomTestData(randomInteger(1, 10));
console.log(arrayOfWords);


//for testing
//var we = [randomWord(), randomWord(), randomWord()];
//console.log(we);

//Add driver code that does the following 10 times: 
//generates an array, prints the array, 
//feeds the array to your "longest word" 
//function, and prints the result.

for(var i = 0; i < 10, i++)
  console.log(printer(randomTestData(randomInteger(1, 10))));


