import UIKit

let numbers: [Int] = [9, 8, 7, 6, 5, 4, 3, 2, 11]

// for loop
for item in numbers {
    print(item)
}


// iterate but only display values when there is a match
print("\n-----------")
for value in numbers where value == 11 {
    print(value)
}


print("\n------ for loop using ranges -----")
// using tanges
// from 0 to 24 = 0..<25
// from 0 to 25 = 0..25
for i in 0..<25 {
    print(i)
}


// example create an array of random numbers
var randomInts: [Int] = []

for i in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print(randomInts.sorted())
print(randomInts)
