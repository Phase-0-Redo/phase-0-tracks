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

reverse("reverse");
reverse("forward");