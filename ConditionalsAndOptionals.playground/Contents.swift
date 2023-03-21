import UIKit

/// if statement
let isRestaurantIsOpen = false
if isRestaurantIsOpen {
    print("Restaurant is open.")
}

if isRestaurantIsOpen ==  false {
    print("Restaurant was not found")
}

let drinkingAgeLimit = 21
var customerAge = 23
if customerAge < drinkingAgeLimit {
    print("Under age limit")
} else {
    print("Over age limit")
}


/// the switch statement

// example first with an if statement
var trafficLight = "Yellow"
if trafficLight == "Yellow" {
    print("Caution")
} else if trafficLight == "Red" {
    print("Stop")
} else if trafficLight == "Green" {
    print("Go")
} else {
    print("Invalid color")
}

// switch
switch trafficLight {
case "Red":
    print("Stop")
case "Yellow":
    print("Caution")
case "Green":
    print("Go")
default:
    print("Invalid color")
}



/// OPTIONALS
var spouseName: String? // the current value is 'nil'
spouseName = "Nia"
print(spouseName ?? "No spouse name")
let greeting = "Hello , " + spouseName! // '!' checks if the variable is nil
print(greeting)

// optional binding
spouseName = nil
// print(spouseName ?? "No value in spouseName")
if let spouseNameTempVar = spouseName { // if temp var cannot be assign a value the code doesn't run
    let greeting = "Hello, " + spouseNameTempVar
    print(greeting)
}
