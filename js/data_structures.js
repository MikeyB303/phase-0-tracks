var colors = ["red","orange","yellow","green"];
var horseNames = ["Tiny","Bojack","Sea Biscuit","Horesy McHorseface"]
var horses = {}
var i;
for (i = 0; i < colors.length && horseNames.length; i++) {
  horses[horseNames[i]] = colors[i];
}

console.log(horses)

function Car(make,model,year) {
  console.log("Creating a new car");
  this.make = make;
  this.model = model;
  this.year = year;
  this.honk = function() {console.log("BEEP BEEP!");};
  console.log("Enjoy your new car!")
}

var jeep = new Car("Jeep","Grand-Cherokee",2015);
console.log(jeep);
jeep.honk();