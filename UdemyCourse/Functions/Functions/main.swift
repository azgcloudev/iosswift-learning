func myFunction() {
    print("I am print from a function.")
}

for i in 0..<10 {
    print("\nIteration number: \(i)")
    myFunction()
}



// function with parameters
func sumFunction(x: Int, y: Int) {
    print(x + y)
}

sumFunction(x: 3, y: 4)


// function with a return type
func add(x: Int, y: Int) -> Int {
    return x + y
}

let sumResult = add(x: 5, y: 2)
print(sumResult)

func logicFunction(b: Int, a: Int) -> Bool {
    if a > b || b > a {
        return true
    } else {
        return false
    }
}


