//the function will take in the string "hello" and split each letter into a character array. 
//The array will then be reversed 
//each letter will then be merged back into a single string.
//it will print the reversed string

function reverseString(string) {
  var letters = string.split("");
  var reverseLetters = letters.reverse()
  var reverseWord = reverseLetters.join("");
  return reverseWord

}

var result = reverseString("hello")

if (1 == 1) {
  console.log(result)
}
