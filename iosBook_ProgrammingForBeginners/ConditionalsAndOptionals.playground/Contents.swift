import UIKit

let isRestaurantOpen = true

// if statement
if isRestaurantOpen { // if condition is true, code in block will be execute
    print("Restaurant is open.")
}


// check if condition is true, and if false process another code
let drinkingAgeLimit = 21
let customerAge = 23
if customerAge < drinkingAgeLimit {
    print("Under age limit")
} else {
    print("Over age limit")
}


// SWITCH STATEMENTS
var trafficLightColor = "Yellow"

switch trafficLightColor {
case "Red":
    print("Stop")
case "Yellow":
    print("Caution")
case "Green":
    print("Go")
default:
    print("Invalid color")
}



// OPTIONALS
//var spouseName: String = ""
// print(spouseName) // error: Variable 'spouseName' used before being initialized

var spouseName: String? // ? sets the variable as optional
print(spouseName) // warning: Expression implicitly coerced from 'String?' to 'Any' || but nil will be print


var spouseName2: String?
print(spouseName2 ?? "No value in spouseName")


// force unwrap
var spouseName3: String?
spouseName3 = "Nia"
let greeting = "Hello, " + spouseName3! // this force to allow string concatenation, but if value is nil the program will crash
print(greeting)

// optional binding to avoid the crashes because of force unwrap
print("\nOptional binding")
var spouseName4: String?
spouseName4 = nil
print(spouseName4 ?? "No value in spouseName4")
if let spouseTemp = spouseName4 {   // if the temp variable is nil, hence no process is done
    let greeting = "Hello, " + spouseTemp
    print(greeting)
}
