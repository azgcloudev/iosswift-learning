import UIKit


// variables
// var keyword creates a new variable
var variableName = "I am a string"


// string and intgers

var str = "I am text"   // string

var age = 27            // integer
var population = 5_000_000 // under score helps to separate thousands for better reading

// variables cannot change the type; age cannot be change to string



//// multi line strings
var str2 = """
Hello World
I am a multi line string
hahahah
"""





//// DOUBLES AND BOOLEANS

// doubles are floating point numbers (fractional)
var myDouble = 3.1415

// booleans are either true or false
var isOver18 = false



// string interpolation
var score = 85
var str3 = "Your score is \(score)"
var results = "The results are here: \(str3)"



//// CONSTANTS
// canstants are inmutable, once defined the value cannot be changed
// defined with the 'let' keyword
let city = "San Jose"




//// TYPE ANOTATION
// use to specify manually the type and not use the type inference from swift
var album: String = "Black album"
var year: Int = 1995
var height: Double = 1.72
var isAlive: Bool = true



