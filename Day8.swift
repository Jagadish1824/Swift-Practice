// Closures

// Basic Closure

let buttonAction={
    print("Button Clicked")
}
buttonAction()

// Closure with Parameters

let calculateTotal = { (price: Double, tax: Double) -> Double in
    return price + (price * tax)
}

let total = calculateTotal(1000, 0.18)
print("Total price:", total)

// Closure with Trailing Closure Syntax

func downloadFile(completion: () -> Void) {
    print("Downloading file...")
    completion()
}

downloadFile {
    print("Download complete!")
}

// Shorthand Argument

let marks = [45, 88, 72, 30]

let sortedMarks = marks.sorted { $0 > $1 }

print(sortedMarks)

// Closure as Parameter

func login(username: String, completion: (Bool) -> Void) {
    if username == "admin" {
        completion(true)
    } else {
        completion(false)
    }
}

login(username: "admin") { success in
    if success {
        print("Login successful")
    } else {
        print("Login failed")
    }
}

// Escaping Closure

var completionHandlers: [() -> Void] = []

func fetchData(completion: @escaping () -> Void) {
    completionHandlers.append(completion)
}

fetchData {
    print("Data received")
}

completionHandlers.first?()


// Non-Escaping Closure

func processData(completion: () -> Void) {
    print("Processing...")
    completion()
}

processData {
    print("Done")
}

// Autoclosure

func logMessage(_ message: @autoclosure () -> String) {
    print("Log:", message())
}

logMessage("User logged in")

// Capturing Values

func makeCounter() -> () -> Int {
    var count = 0
    
    return {
        count += 1
        return count
    }
}

let counter = makeCounter()
print(counter()) 
print(counter()) 


// Closures in Functional Programming

// map

let prices = [100, 200, 300]

let discounted = prices.map { $0 - 10 }

print(discounted)

// filter

let numbers = [1,2,3,4,5,6]

let evenNumbers = numbers.filter { $0 % 2 == 0 }

print(evenNumbers)

// reduce

let cart = [100, 200, 300]

let cartTotal = cart.reduce(0) { $0 + $1 }

print(cartTotal)

// 