// Release 0: Create a function that returns the longest word within an array of words:
	//Step 1: Take the 1st word and identify the length
	//Step 2: Add it into the new array
	//Step 3: Take the 2nd word of the original array and identify the length
	//Step 3: If the length is longer than the length of the new array, store that as the value of the new array
	//Step 3: Repeat until finished testing each word in the original array

var ArrayOfWords = ["wordone", "wordtwo", "wordthree"]
var SecondArrayOfWords = ["kobe", "curry", "jordan"]

function LongestWordEver(array) {
	var longestword= "";
	for (var word = 0; word < array.length; word++) {
    	if (array[word].length > longestword.length) {
      		longestword = array[word]
    	}
  	}
  	return longestword;
}

//  Driver Code:

console.log(LongestWordEver(ArrayOfWords))
console.log(LongestWordEver(SecondArrayOfWords))

// Release 1: Create function that takes two objects and returns true if objects share one key-value pair
	//Step 1: Create function that takes first keys in the two Hashes and compares to see if true
	//Step 2: If yes, then returns true; otherwise false
	//Notes: How the hell do you do it when it could test more #s of key-value pairs?

function KVMatch(Hash1, Hash2) {
	for(var first_key in Hash1) {
    	for(var second_key in Hash2) {
    		if(Hash1[first_key] == Hash2[second_key]){
        		return true;
      		}
    	}
  	}
  	return false;
}

var HashA = {name: "Umar", age: 29};
var HashB = {name: "Erum", age: 29};
var HashC = {name: "Mom", age: 55};

// Driver Code:

console.log(KVMatch(HashA, HashB))
console.log(KVMatch(HashA, HashC))

// Release 2: Write function that takes an integer for length, and builds and returns an array fos trings of the given length

// Part 1
function blah(integer) {
	var alphabet = ["a","b","c","d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
  //console.log(alphabet[24]);
  	var some_array = [];
  	for (var i = 0; i < integer; i++) {
    	var length = Math.floor(10 * Math.random() + 1);
    	var some_random_string = "";
    //console.log(length);
    //console.log(some_random_string);
    	for (var j = 0; j < length; j++) {
      		var rand_num = Math.floor(26 * Math.random());
      //console.log(rand_num);
      	some_random_string += alphabet[rand_num];
    	}
    some_array.push(some_random_string);
  	}
  	return some_array; 
}

// Driver Code:

console.log(blah(7))
console.log(blah(4))

// Part 2
for (var i =0; i < 10; i++) {
	var finalarray = blah(7);
	console.log(finalarray);
	var answer = LongestWordEver(finalarray);
	console.log(answer);
}



