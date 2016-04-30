console.log("scripts")

function enlargePhoto(event) {
  console.log(event); 
  console.log("YAY, clicks!"); 
  event.target.style.width = "120%"; 
}

var photo = document.getElementById("hot"); 
photo.addEventListener("click", enlargePhoto); 

  var text = document.getElementById("text"); 
  text.style.fontFamily = "Helvetica"; 

  var list = document.getElementById("list"); 
  list.style.fontSize = "18px"; 

//add an event for clicking on the hot sauce button to get an animated fire gif
//add some logic for another click to bring everything back to normal
function showGif(){
  document.getElementById('animation').style.visibility="visible";
}
 
var button = document.getElementById("myButton"); 
button.addEventListener("click", showGif);

function hideGif(){
  document.getElementById('animation').style.visibility="hidden"; 
}
var gif = document.getElementById('animation'); 
gif.addEventListener("click", hideGif); 
