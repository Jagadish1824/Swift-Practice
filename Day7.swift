//Encapsulation

class Student {
    private var marks: Int = 0
    
    func setMarks(_ value: Int) {
        if value >= 0 && value <= 100 {
            marks = value
        }
    }
    
    func getMarks() -> Int {
        return marks
    }
}


// Abstraction

protocol Shape {
    func area() -> Double
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
}

// Parameters

// Default Parameter Values

func greet(name: String = "Guest") {
    print("Hello \(name)")
}

greet()
greet(name: "Jagadish")

// Variadic Parameters

func sum(numbers: Int...) {
    var total = 0
    for num in numbers {
        total += num
    }
    print(total)
}

sum(numbers: 1, 2, 3, 4)

// Parameters in Classes

class StudentInfo {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let s = StudentInfo(name: "Jagadish")

// Errors

enum LoginError: Error {
    case invalidUsername
    case invalidPassword
}

// Throwing Errors

func login(username: String, password: String) throws {
    
    if username != "admin" {
        throw LoginError.invalidUsername
    }
    
    if password != "1234" {
        throw LoginError.invalidPassword
    }
    
    print("Login successful")
}

// Handling Errors (do–try–catch)

do {
    try login(username: "admin", password: "1234")
} catch LoginError.invalidUsername {
    print("Username is wrong")
} catch LoginError.invalidPassword {
    print("Password is wrong")
} catch {
    print("Unknown error")
}

// Example Program

enum MathError: Error {
    case divideByZero
}

func divide(_ a: Int, _ b: Int) throws -> Int {
    if b == 0 {
        throw MathError.divideByZero
    }
    return a / b
}

do {
    let result = try divide(10, 2)
    print(result)
} catch {
    print("Cannot divide by zero")
}

