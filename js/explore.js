// a function takes a string as a parameter 
//reverses the string
function reverse(string){
  //splits the string into an array
  //reverses the array
  //joins the array
  var str_arr = string.split('').reverse().join('');
  //logs the array to the console
  console.log(str_arr);
}


//stores function reverse into variable reverse_string
//var reverse_string = console.log(reverse("reverse"));

//reverse("reverse");
var rev_str = reverse("reverse");

//console.log(reverse_string);
//console.log(reverse_string);

if (1 == 1){
  rev_str ;
} else {
  console.log("YUP");
}