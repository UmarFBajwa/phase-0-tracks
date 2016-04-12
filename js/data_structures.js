// RELEASE 0 & 1
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

// Listing the Array in a cleaner format
for (var index = 0; index < horses.length; index++) {
  console.log("The horse " + horses[index]['name'] +" is " + horses[index].color + ".");
}
