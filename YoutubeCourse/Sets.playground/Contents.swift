import UIKit

// sets are unordered
// cannot have duplicate values

// array
var ages = [18, 32, 45, 78, 90, 17, 18, 45]

// empty set
var agesSet: Set<Int> = []

// set from an array
var agesSet2 = Set(ages) // it removes the duplicates
print(agesSet2)

agesSet2.contains(199)

// inset to set new value
agesSet2.insert(74)
agesSet2.contains(74)
