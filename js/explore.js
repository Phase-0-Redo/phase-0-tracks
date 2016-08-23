// a function takes a string as a parameter 
//reverses the string
function reverse(string){
  //var str_length = string.length;
  var str_arr = string.split('');
  str_arr.reverse();
  str_arr.join();
  console.log(str_arr);
}

console.log(reverse("reverse"));