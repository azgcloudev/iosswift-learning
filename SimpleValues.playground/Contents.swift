import UIKit

// integers type is Int

/// floating points numbers:
// Double are 64bits
// Float are 32 bits

// simple values
42
-23
3.14159
0.1
-273.15

true
false

"hello world"
"albatross"



// constants
let theAnswerToTheUltimateQuestion = 42
let pi = 3.14159
let myName = "Aldair Zamora"

// variables (mutable)
var currentTemperatureCelsius = 27
var myAge = 27
var location = "home"


// type annotation
var restaurantRating: Double = 3

var sum = 23 + 20
let result = 32 - sum
let total = result * 5
let divide = total / 10


// operation of the same type must be
let a = 12
let b  = 12.0
let c = Double(a) + b


// compaund assigment operator
var aa = 1
aa += 1
aa -= 1


// comparison operators (evaluates if true or false)
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1


// logical operators
(1 == 1) && (2 == 2) // AND all condtions must be true
(1 == 1) && (2 != 2)
(1 == 1) || (2 == 2) // OR if one condition is true, the statement is true
(1 == 1) || (2 != 2)
(1 != 1) || (2 != 2)
!(1 == 1) // NOT reverse the evaluation


/// string operation
// concatenation
let greeting = "Good" + " morning"

let rating: Float = 3.5
var ratingResult = "The restaurant rating is " + String(rating) // string casting
// string interpolation
ratingResult = "The restaurant rating is \(rating)"

print(ratingResult)
