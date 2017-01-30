var colors = ["red","orange","yellow","green"];
var horseNames = ["Tiny","Bojack","Sea Biscuit","Horesy McHorseface"]
var horses = {}
var i;
for (i = 0; i < colors.length && horseNames.length; i++) {
  horses[horseNames[i]] = colors[i];
}

console.log(horses)