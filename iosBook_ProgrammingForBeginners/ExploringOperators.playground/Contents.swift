import UIKit


// arithmetic operators
// addition +
// subtraction -
// multiplication *
// division /

let sum = 23 + 20
let result = 32 - sum
let total = result * 5
let divide = total / 10 // result is -5.5, but divide is -5, because both operands are integers and not floating points hence an integer result


let a = 12
let b = 12.0
// let c = a + b  // error: Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
// fic, use casting
let c: Double = Double(a) + b


// COMPOUND ASSIGNMENT
// +=
// -=
// *=
// /=
// compound assignment applies an operation of the value of the variable and applies the result to the same variable

var aa = 1
aa += 2 // equivalent to a = a + 2
aa -= 1



// COMPARISON OPERATORS
// equal to ==
// not equal to !=
// greater than >
// less than <
// greater than or equal to >=
// less than or equal to <=

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

// LOGICAL OPERATORS

// && - AND operator all conditions must be true
// || - OR  operator at least one condition must be true
// ! - NOT  operator returns the opposite boolean (negates)



(1 == 1) && (2 == 2)
(1 == 1) && (2 != 2)
(1 == 1) || (2 == 2)
(1 == 1) || (2 != 2)
(1 != 1) || (2 != 2)
!(1 == 1)




// STRINGS OPERATIONS

// join to strings
let greeting = "Good" + " Morning"

// combine strings with constants and variables of other types, using casting
let rating = 3.5
var ratingResult = "The restaurant rating is " + String(rating)
//using string interpolation
ratingResult = "The restaurant rating is \(rating)"

// displaying info using print in the degub area
print(ratingResult)
