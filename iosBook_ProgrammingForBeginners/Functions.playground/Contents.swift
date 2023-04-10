import UIKit

//// function declaration
//func serviceCharge() {
//    let mealCost = 50
//    let serviceCharge = mealCost / 10
//    print("Service charge is \(serviceCharge)")
//}
//serviceCharge()
//
//
//// improve function with parameters and return type
//func serviceChargePar(mealCost: Int) -> Int {
//    return mealCost / 10
//}
//let serviceChargeAmount = serviceChargePar(mealCost: 50)
//print(serviceChargeAmount)


// using custom argument labels
func serviceCharge(forMealPrice mealCost: Int) -> Int { // first label then the parameter name
    return mealCost / 10
}
let serviceChargeAmount = serviceCharge(forMealPrice: 50)
print(serviceChargeAmount)



// NESTED FUNCTIONS

func calculateMonthlyPayments(carPrice: Double, downPayment: Double,
    interestRate: Double, paymentTerm: Double) -> Double {

    func loanAmount() -> Double {
        return carPrice - downPayment
    }

    func totalInterest() -> Double {
        return interestRate * paymentTerm
    }

    func numberOfMonths() -> Double {
        return paymentTerm * 12
    }

    return ((loanAmount() + (loanAmount() * totalInterest() / 100)) / numberOfMonths())
}
print(calculateMonthlyPayments(carPrice: 50000, downPayment: 5000, interestRate: 3.5, paymentTerm: 7.0))




// USING FUNCTIONS AS RETURN TYPES
func makePi() -> (() -> Double) {
    func generatePi() -> Double {
        return 22.0 / 7.0
    }
    return generatePi
}
let pi = makePi()
print(pi())



// USING FUNCTIONS AS PARAMETERS
func isThereAMath(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {

    for item in listOfNumbers {
        if condition(item) {
            return true
        }
    }
    return false
}

func oddNumber(number: Int) -> Bool {
    return (number % 2) > 0
}

var numbersList = [2, 4, 6, 7]
isThereAMath(listOfNumbers: numbersList, condition: oddNumber)



// USING GUARD TO EXIST THE FUNCTION EARLY
func buySomething(itemValueEntered itemValueField: String, cardBalance: Int) -> Int {
    guard let itemValue = Int(itemValueField) else { // guard checks if the condition is true, if not it exists the function, but the else block is execute
        print("error in item value")
        return cardBalance
    }
    let remainingBalance = cardBalance - itemValue
    return remainingBalance
}
print(buySomething(itemValueEntered: "10", cardBalance: 50))
print(buySomething(itemValueEntered: "blue", cardBalance: 50))




// UNDERSTANDING CLOSURES
// they do not have a name
// asigned to constants or variables
var numbersArray = [2, 4, 6, 7]
let myClosure = { (number: Int) -> Int in
    let result = number * number
    return result
}
let mappedNumbers = numbersArray.map(myClosure)

var testNumbers = [2, 4, 6, 7]
let mappedTestNumbers = testNumbers.map({ (number: Int) -> Int in // while map iterates through the array, each number is applied to the closure and the result is set in the new array
    return number * number
})
mappedTestNumbers

// closure can omit the type if it is known
let mappedNumbersInt = testNumbers.map({ number in
    let result = number * number
    return result
})


// single closure statements can omit the return
let mappedNumbersReturn = testNumbers.map({ number in
    number * number
})


// when closure is the only parameter in a function the parenthesis can be omitted
let mappedNumbersSingleParam = testNumbers.map { number in number * number }


// closure can use parameters by referring to the relative list index position
let mappedNumbersIndex = testNumbers.map { $0 * $0 }
