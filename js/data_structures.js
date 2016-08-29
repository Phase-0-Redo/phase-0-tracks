var colors = ["red", "blue", "magenta", "yellow"]
var names = ["Dan", "Dave", "Eleanor", "Rupert"]

colors.push("green")
names.push("Nathaniel")

happyHorses = {}

for (i = 0; i < names.length; i++) {
  happyHorses[names[i]] = colors[i]
}

console.log(happyHorses)

// ————————————————————————————————————————————————————————

function Car(color, manual, make) {
  console.log("Our new car:", this);

  this.color = color;
  this.manual = manual;
  this.make = make;

  this.drive = function() {console.log(this.color + " " + this.make + " went vroom!");};

  console.log("Have fun driving your new car :)")
}

var firstCar = new Car("black", true, "Honda");
var secondCar = new Car("green", false, "Toyota")
var thirdCar = new Car("silver", false, "Lexus")

console.log(Car)
firstCar.drive();
thirdCar.drive();
