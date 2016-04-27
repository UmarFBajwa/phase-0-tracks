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
  list.style.fontSize = "30px"; 

//add an event for clicking on the hot sauce button to get an animated fire gif
//add some logic for another click to bring everything back to normal