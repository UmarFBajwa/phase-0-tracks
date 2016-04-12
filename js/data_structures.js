// RELEASE 0, 1, 2
// Creating two Arrays with colors and names
var colors = ["blue", "red", "purple", "green"];
var names = ["Zoe", "Michael", "Susan", "Casper"];

// Adding a color and name
colors.push("yellow");
names.push("Jason");

// Create empty Horse array and loop to add name and color
var horses = [];
// here's how we'd loop through each one, using i as an index
for (var i = 0; i < colors.length; i++) {
   horses.push({
    name: names[i], 
    color: colors[i]});
}
// Old Way...  
  // var horse = {};
  // horse['name'] = names[i];
  // horse['color'] = colors[i];
  // horses.push(horse); 

// RELEASE 3
// Loop through Keys and Values
for (var index = 0; index < horses.length; index++) {
  console.log("The horse " + horses[index]['name'] +" is " + horses[index].color + ".");
}

// RELEASE 2
// Create Constructor Function that builds a Car with Type, Color, and Maxspeed
function Car(type, color, maxspeed) {
  console.log("Our new car:", this);
  
  this.type = type;
  this.color = color;
  this.maxspeed = maxspeed;

// Create function Rev that prints Voom, voom...  
  this.rev = function() {console.log("Voom, voom!"); };

  console.log("Car Initialization Complete");
}

// Prompt to suggest build a car
console.log("Let's build a car...")

// Car #1
var anotherCar = new Car("Ferrari", "Red", 205);
console.log(anotherCar);
console.log("Our car can really rev:");
anotherCar.rev();
console.log("----");

// Prompt to build another car
console.log("How about we build another car...");

// Car #2
var betterCar = new Car("Lambo", "Orange", 225)
console.log(betterCar);
console.log("This car can rev even more:");
betterCar.rev();
console.log("----");