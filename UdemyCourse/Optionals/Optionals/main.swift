
// set the variable as optional
var myName: String?
var secondName: String?

myName?.uppercased()    // variable will become 'nil
print(myName)

// myName!.lowercased()

var myAge = "27"
var myWrongAge = "twenty seven"

var myInt: Int = Int(myAge)!
// '!' force-unwrap, provides an exception if operation cannot be done
print(myInt)

var myInt2: Int = Int(myWrongAge) ?? 0
// with ?? if the operation cannot be done, will do what is after the ??
print(myInt2)

// another option to display custom operation
if let myNumber = Int(myWrongAge) {
    print(myNumber)
} else {
    print("Wrong input, you did typed: \(myWrongAge)")
}
