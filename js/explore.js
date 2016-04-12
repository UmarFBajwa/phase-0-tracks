// Define function that takes a string as a parameter and reverse the string. 
// For example reverse('hello') should return "olleh"
// Split the string and then reverse each character then joing it back into a string


function reverse(str) {
  return str.split('').reverse().join('');
}


// DRIVER CODE:
// Call function on string "Umar"
reverse("Umar");

// Store result in variable string
var string = reverse("Umar");

// Prints variable if condition met
if (1 + 1 == 2) {
	console.log(string);
}