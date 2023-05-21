import UIKit

let firstScore = 12
let secondScore = 4

// sum
let result = firstScore + secondScore

// substraction
let result2 = result - secondScore

// multiplication
let result3 = result2 * firstScore

// division
let result4 = result3 / result2


let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let devided = firstScore / secondScore
let remainder = 13 % secondScore



// modulo operator example
let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

// special function to see if a number is divided equally to another number
let number = 465
let isMultiple = number.isMultiple(of: 7)
print("")

print("=> Is number multiple of a number")
print("\(number) is multiple of 7: \(isMultiple)")
print("")
