// optional-binding

var score: Int? = 90

if let safeScore = score {
    print("Score:", safeScore)
} else {
    print("No score available")
}

// Guard Statement

func printUsername(name: String?) {
    guard let userName = name else {
        print("Name is missing")
        return
    }

    print("Username:", userName)
}

printUsername(name: "Jagadish")

// Nil Coalescing Operator

var country: String? = nil
let finalCountry = country ?? "India"

print(finalCountry)

// Optional Chaining

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var person: Person? = Person(name: "Jagadish")

print(person?.name ?? "Unknown")

// Example Program

func login(username: String?, password: String?) {

    guard let user = username,
          let pass = password else {
        print("Missing credentials")
        return
    }

    if user == "admin" && pass == "1234" {
        print("Login Successful")
    } else {
        print("Invalid Login")
    }
}

login(username: "admin", password: "1234")

// Struct with Function

struct Rectangle {
    var length: Int
    var breadth: Int

    func area() -> Int {
        return length * breadth
    }
}

let rect = Rectangle(length: 10, breadth: 5)
print(rect.area())

// Class with Methods

class BankAccount {
    var balance: Int

    init(balance: Int) {
        self.balance = balance
    }

    func deposit(amount: Int) {
        balance += amount
    }

    func showBalance() {
        print("Balance:", balance)
    }
}

let account = BankAccount(balance: 1000)
account.deposit(amount: 500)
account.showBalance()


// Computed Property

struct Circle {
    var radius: Double

    var area: Double {
        return 3.14 * radius * radius
    }
}

let c = Circle(radius: 3)
print(c.area)


// Example program

struct Employee {
    var name: String
    var salary: Int

    func display() {
        print("Name:", name)
        print("Salary:", salary)
    }
}

let emp = Employee(name: "Jagadish", salary: 40000)
emp.display()

