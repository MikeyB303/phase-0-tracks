//RELEASE 0:
//The function will check the first string in the array and use a length function to update a variable 
//for length and the associated string
//this will happen to each item in the array until there are no more
//the string associated to the biggest number will be printed

function longestString(array) {
  var string = ""
  var longest = 0 
  var i;
  for (i = 0; i < array.length; i++) {
    if (array[i].length > longest) {
      longest = array[i].length;
      string = array[i];
    } 
  }
  console.log(string)
}

var array1 = ["long phrase","longest phrase","longer phrase"]
longestString(array1)
var array2 = ["ayyy","ayyy lmao","ayyy lmao guys"]
longestString(array2)

//RELEASE 1:
//function will accept two object as parameters
//it will then cycle through the two objects checking for matching pairs
//if a matching pair is found it will return a value of true, if not false

var person1 = {name: "Mike", age: 23};
var person2 = {name: "Chase", age: 23};

function matcher(obj1,obj2) {
  var i;
  for (i = 0; i < obj1.length && obj2.length; i++) {
    if (obj1[i] == obj2[i]) {
      return true
    }else{
      return false
    } 
  }
}
matcher(person1,person2)
//this wasn't very successful, too tired to think of a solution

//RELEASE 2:
//the function will take in an integer as a parameter
//it will then use another function to generate strings
//  this functions will take length and an alphabet string
//  it will use a countdown for-loop to generate a random string
//it will then push the results from the previous function into an array 
//it will continue to loop until the initial number is 0
//

function randomStrings(num) {
  stringArray = []
  function randomString(length, chars) {
    var result = '';
    for (var i = length; i > 0; --i) {
      result = chars[Math.round(Math.random() * (chars.length - 1))];
      console.log(result)
      return result;
    }
  }
  for (var i = num; i > 0; --i) {
    stringArray.push(randomString(8,"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"))
  }
  console.log(stringArray)
}

console.log(randomStrings(8));
//will get help during office hours to fix this and make it work
