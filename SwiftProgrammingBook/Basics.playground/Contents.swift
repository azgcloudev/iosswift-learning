import UIKit

// --> VATIABLES AND CONSTANTS <--
// defining

let maximumNumberOfLoginAttempts = 10 // constant
var currentLoginAttempts = 0 // variable

// declaring multiple variables in a single line

var x = 0.0, y = 0.0, z = 0.0 // multiple variables separated by comma


//// ==> TYPE ANNOTATION <==
// specify the type of the variable

var welcomeMessage: String
welcomeMessage = "Hello welcome!"

var red, blue, green: String // define multiple variable in single line



//// ==> PRINTING CONSTANTS AND VARIABLES <===
let friendlyWelcome = "Bonjour"

// string interpolation
print("The current friendlyWelcome message is: \(friendlyWelcome)")
print("new line", terminator: "")   // to avoid the new line in print set an empty string in terminator parameter
print("Another print")



//// ==> INTEGERS <==
// supports multiple int size 8, 16, 32, 64 bits
// can be signed or unsigned ( only positive and 0 )
// Int is based on the processes architecure 32 bits and 64 bits

var number1: Int = 3000
var number2: UInt32 = 2000000

// max and min values
let minInt = Int.min
let maxInt = Int.max

