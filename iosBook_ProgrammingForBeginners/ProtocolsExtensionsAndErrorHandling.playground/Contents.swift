import UIKit

// PROTOCOLS
// creating the protocol to specify calories count
protocol CalorieCount {
    var calories: Int { get }
    func description() -> String
}

// Extensions
// provides additional capabilities to an object without modifying the original definition

// implement the protocol in the class, enum and struct using ':' column
class Burger: CalorieCount {
    let calories = 800
    func description() -> String {
        return "This burger has \(calories) calories"
    }
}

struct Fries: CalorieCount {
    let calories = 500
    func description() -> String {
        return "These fries has \(calories) calories"
    }
}

enum Sauce {
    case chili
    case tomato
}

extension Sauce: CalorieCount {
    var calories: Int {
        switch self {
        case .chili:
            return 20
        case .tomato:
            return 15
        }
    }

    func description() -> String {
        return "This sauce has \(calories) calories"
    }
}



// create an array of different type of objects
let burger = Burger()
let fries = Fries()
let sauce = Sauce.tomato
let foodArray: [CalorieCount] = [burger, fries, sauce]

// get the total food calories
var totalCalories = 0
for food in foodArray {
    totalCalories += food.calories
}
print(totalCalories)







// ERROR HANDLING
// use do-catch, and throw

enum WebsiteError: Error {
    case noInternetConnection
    case siteDown
    case wrongURL
}

func checkWebsite(siteUp: Bool) throws -> String {
    if siteUp == false {
        throw WebsiteError.siteDown
    }
    return "Site is up"
}
let siteStatus = false

do {
    print(try checkWebsite(siteUp: siteStatus))
} catch {
    print(error)
}


