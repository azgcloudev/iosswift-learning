import UIKit

// array
var ages = [21, 55, 19, 47, 22, 37, 88, 71] // uses type inference

// empty array needs type
var scores: [Int] = []

// length of array
ages.count


// access single value in the array (via index)
ages[3]

// get the last index
ages.last

// add new element to the array (at the end)
ages.append(99)

print(ages)

// inset at specific index
ages.insert(44, at: 0)
print(ages)

ages.sort()
print(ages)

ages.shuffle()
print(ages)
