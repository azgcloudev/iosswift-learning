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




//// ==> FLOATING POINT NUMBERS <===
// represents signed numbers with decimals
// Doubles: 64 bits; Float: 32 bits
// double at least 15 decimal digits
// float at least 6 decimal digits

let float1: Float = 3.14159

let double1: Double = 3.1415912345378




//// ==> NUMERIC LITERALS <===

// decimals with no prefix
// binary with 0b prefix
// octal with 0o prefix
// hexadecimal with 0x prefix
let decimalNumber = 17
let binaryNumber = 0b10001
let octalNumber = 0o21
let hexadecimalNumber = 0x11




//// ==> TYPEALIAS <==
// define an alternative name for an existing type
typealias IpSample = UInt8
print(IpSample.max)
print(IpSample.min)


//// ==> BOOLEANS <==
// true or false
let isTheCarOn = true
let isSnowing = false
let isMaintenanceNeeded: Bool // declare the constant with no value, hence type annotation is needed





//// ==> TUPLES <==
// group of multiple values in a single compound
// can have multiple types
let http404Error = (404, "Not Found") // let http404Error: (Int, String)

// tuples can be decompose and assign their values to variables
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)

// values can be ignored with an underscore
let (statusCode1, _) = http404Error

// tuples can be access by ther index number position
print("The status code is \(http404Error.0)")
print("The message is \(http404Error.1)")

// naming elements in the tuple
let http202Status = (statusCode: 200, description: "OK")

// access the values with the descriptive names
print("The status code is \(http202Status.statusCode)")
print("The message is \(http202Status.description)")




//// ==> OPTIONALS <==

let possibleNumber = "12a"
let convertedNumber = Int(possibleNumber) // type is Int? - if cannot be converted nil is returned
print(convertedNumber)


var serverResponseCode: Int? = 404
//if the const or var is not optional it cannot be assigned to nil
serverResponseCode = nil

// if an optional is defined without a value, nil is assigned to it
var surveyAnswer: String?
print(surveyAnswer)


//// ==> IF STATEMENTS AND FORCE UNWRAPPING <==
// force unwrap tells that i am sure that the optional is not nil
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)") // force unwrap
}


//// ==> OPTIONAL BINDING <==
// use to check if the optional has a value using a temporary variable or constant
// can be use with if or while
if let actualNumber = Int(possibleNumber) {
    // if it has a value
    print("The string \(possibleNumber) has an integer value of \(actualNumber)")
} else {
    // if actualNumber is nil
    print("String \(possibleNumber) couldn't be converted to integer")
}





//// ==> ERROR HANDLING <==

