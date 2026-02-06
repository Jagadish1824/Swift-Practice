// Arrays

var fruits=["Apple", "Banana", "Mango"]
print(fruits)
print(fruits[0])

// Loop with Array

for fruit in fruits
{
    print(fruit)
}

// sets

var rollNumbers: Set<Int> = [101, 102, 103, 101, 104, 102]

print("All Roll Numbers:")
for roll in rollNumbers {
    print(roll)
}

// Tuple

let student = ("Jagadish", 22, true)

print("Name: \(student.0)")
print("Age: \(student.1)")
print("Passed: \(student.2)")

// Dictionaries

var studentInfo: [String: String] = [
    "name": "Jagadish",
    "course": "B.Tech",
    "city": "Chittoor"
]

print("Name: \(studentInfo["name"]!)")
print("Course: \(studentInfo["course"]!)")
print("City: \(studentInfo["city"]!)")

// Dictionaries with default values

var attendance: [String: Int] = [:]

attendance["Jagadish", default: 0] += 1
attendance["Jagadish", default: 0] += 1
attendance["Ravi", default: 0] += 1

for (name, count) in attendance {
    print("\(name) attended \(count) days")
}

// Enumerations

enum Result {
    case pass
    case fail
}

let studentResult = Result.pass

if studentResult == .pass {
    print("Student passed the exam")
} else {
    print("Student failed the exam")
}

// Enum associated values

enum LoginResult {
    case success(username: String)
    case failure(errorMessage: String)
}

let result = LoginResult.success(username: "Jagadish")

switch result {
case .success(let name):
    print("Welcome \(name)")
case .failure(let error):
    print("Login failed: \(error)")
}

// Enum raw values

enum Role: String {
    case admin = "ADMIN"
    case user = "USER"
    case guest = "GUEST"
}

let myRole = Role.admin

print("Role: \(myRole.rawValue)")