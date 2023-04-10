import UIKit

// CLASSES
// variables and constants in classes are called properties
// functions in classes are called methods


// creating a class
class Animal { // class name starts with a capital letter
    var name: String = ""
    var sound: String = ""
    var numberOfLegs: Int = 0
    var breathesOxygen: Bool = true

    // INITIALIZER
    init() { } // empty initializer

    init(name: String, sound: String, numberOfLegs:
            Int, breathesOxygen: Bool) {
        self.name = name
        self.sound = sound
        self.numberOfLegs = numberOfLegs
        self.breathesOxygen = breathesOxygen
    }

    func makeSound() {
        print(self.sound)
    }

    func description() -> String {
        return "name: \(self.name) sound: \(self.sound) numberOfLegs: \(numberOfLegs) breathesOxygen: \(breathesOxygen)"
    }
}

// make an instance of a class (instantiate)

let cat = Animal()
print(cat.name)
print(cat.sound)
print(cat.numberOfLegs)
print(cat.breathesOxygen)
cat.makeSound()

// asign values
cat.name = "Cat"
cat.sound = "Mew"
cat.numberOfLegs = 4
cat.breathesOxygen = true
print("\nAfter values assigned")
print(cat.name)
print(cat.sound)
print(cat.numberOfLegs)
print(cat.breathesOxygen)
cat.makeSound()


var dog = Animal(name: "Dog", sound: "wau", numberOfLegs: 4, breathesOxygen: true)
print(dog.name)
dog.makeSound()
print(dog.numberOfLegs)



// MAKING SUBCLASSES
// inherits all properties and mathods from the parent classes

class Mammal: Animal {
    var hasFurOfhair: Bool = true

    init(name: String, sound: String, numberOfLegs:
            Int, breathesOxygen: Bool, hasFurOfhair: Bool) {
        super.init(name: name, sound: sound, numberOfLegs: numberOfLegs, breathesOxygen: breathesOxygen)
        self.hasFurOfhair = hasFurOfhair
    }

    override func description() -> String {
        return super.description() + "hasFurOfHair: \(self.hasFurOfhair)"
    }
}

let cat2 = Mammal(name: "Cat Mammal", sound: "Mew", numberOfLegs: 4, breathesOxygen: true, hasFurOfhair: true)
print(cat2.name)
cat2.makeSound()
print(cat2.hasFurOfhair)

print(cat.description())
print(cat2.description())




// STRUCTURES
// Structures cannot inherit from another structure.
// Classes are reference types, while structures are value types.

// create a struc declaration
struct Reptile {

    var name: String = ""
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    let hasFurOrHair: Bool = false

    func makeSound() {
        print(self.sound)
    }

    func description() -> String {
        return "Structure: Reptile name: \(self.name) sound: \(self.sound) numberOfLegs: \(self.numberOfLegs) breathesOxygen: \(self.breathesOxygen) hasFurOrHair: \(self.hasFurOrHair)"
    }
}



// make instance from struct
var snake = Reptile(name: "Snake", sound: "Hiss", numberOfLegs: 0, breathesOxygen: true)
print(snake.description())
snake.makeSound()



// class difference vs struct
print("\nStruct Type")
struct SampleValueType {
    var sampleProperty = 10
}
var a = SampleValueType()
var b = a
b.sampleProperty = 20
print(a.sampleProperty)
print(b.sampleProperty)


print("\nClass Reference Type")
class SampleValueReferenceType {
    var sampleProperty = 10
}
var c = SampleValueReferenceType()
var d = c
d.sampleProperty = 20
print(c.sampleProperty)
print(d.sampleProperty)




// UNDERSTANDING ENUMERATIONS

// create an enumeration

enum TrafficLightColor {
    case red
    case yellow
    case green

    // can include methods
    func description() -> String {
        switch self {
        case .red:
            return "red"
        case .yellow:
            return "yellow"
        case .green:
            return "green"
        default:
            return "green"
        }
    }
}
var trafficLightColor = TrafficLightColor.red
print(trafficLightColor.description())
trafficLightColor = TrafficLightColor.green
print(trafficLightColor.description())
