import UIKit


// closed range operator (includes first and last number)
let myRange = 10...20


// half open range operator do not include the last number
let myRange2 = 10..<20


// FOR-IN loop
for number in myRange {
    print(number)
}

for number in myRange2 {
    print(number)
}

for number in 0...5 {
    print(number)
}

//sequence in reversed order
for number in (0...5).reversed() {
    print(number)
}


// WHILE loops, run as long a condition is true
// if the first condition is false, the loop will never be run
var y = 0
while y < 50 {
    y += 5
    print("y is \(y)")
}



// REPEAT loop, runs at least once, and until condition is false

var x = 100
repeat {
    print("x is \(x)")
    x += 5
} while x < 50
