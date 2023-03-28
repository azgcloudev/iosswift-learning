/// Variables and constants

// variable
var userName = "James"
print(userName)
userName = "Lars"
print(userName)


// constants
let userAge = 50
// userAge = 21     // Cannot assign to value: 'userAge' is a 'let' constant
// constants cannot be modified after initialization
let pi = 3.1415

// cannot do operations with variables of different type
// var result = userAge * pi
// build error: Binary operator '*' cannot be applied to operands of type 'Int' and 'Double'


/// DATA TYPES

// --- Strings ---
var name = "Aldair"
name.append(" Zamora") // method
print(name.uppercased())


// --- integer, double and floats ---

// integer by default
let age = 21
var year = 1995
var ageResult = age / year // result could not be a integer hence result will be unexpected
print(ageResult)

// double by default
let ageD = 21.0
var yearD = 1995.0
var ageResultD = ageD / yearD
print(ageResultD)


// boolean
var myBoolean = false
var yourBoolean = true


/// PREDEFINE VARIABLE TYPES

var yourName: String = "Connie"
let anotherNumber: Int = 21
let yetAnotherNumber: Double = 4
let yetAnotherResult: Double = Double(anotherNumber) * yetAnotherNumber // casting anotherNumber to Double
print(yetAnotherResult)


/// DEFINE A VARIABLE
// the variable is not initialize because it has no value
var definition: String
// definition.uppercased() //Variable 'definition' used before being initialized

/// INITIALIZE A VARIABLE
var initialization: String = "Hello"
definition = "defined"
