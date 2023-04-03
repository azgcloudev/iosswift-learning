import UIKit

// define a function
func printInstructorsName(name: String) { // using parameters
    print(name)
}

// call the function
printInstructorsName(name: "Aldair Zamora")


func add(firstNumber: Int, secondNumber: Int) -> Int {  // -> Int: this defines which type the function will return
    return firstNumber + secondNumber
}


var result = add(firstNumber: 4, secondNumber: 7)
print(result)

