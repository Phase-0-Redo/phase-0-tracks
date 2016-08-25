//function takes an array of words
// returns the longest phrase


//sorts through the array
//organizes based on length
//organizes based upon length
//logs the longest



//function accepts an array as a paramter 
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


//adds code for testing
var words = ["long phrase","longest phrase","longer phrase"];
words.unshift("even longer phrase");
words.push("phrase");
//console.log(words);

//driver code for printer function
console.log(printer(words));

