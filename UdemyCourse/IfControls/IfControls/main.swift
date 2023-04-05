var myAge = 32
var isValidId = true

if myAge < 30 {
    print("Minus 30")
} else if myAge == 30 {
    print("Just 30")
} else { // evaluates all the conditions not met in the 'ifs'
    print("Above 30")
}

// AND all conditions should be true
// OR one condition must be true
if myAge >= 30 && isValidId == true {
    print("Valid")
} else {
    // TODO
}

if isValidId == true || myAge > 30 {
    print("Approved")
} else {
    //TODO
}


