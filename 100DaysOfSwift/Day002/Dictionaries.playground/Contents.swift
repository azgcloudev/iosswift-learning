import UIKit

// use key value pairs
// values are access by the key

let values: [String: Double] = [
    "Taylor": 1.72,
    "Carlos": 1.80,
    "Ana": 1.61,
]

values["Ana"]


// if trying to access a not valid key, return will be nil
//can provide a default value
values["Juan"]
values["Juan", default: 0]
