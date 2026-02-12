// Protocols

protocol Greetable {
    func greet()
}

// Class Conforming to Protocol

class Person: Greetable {
    func greet() {
        print("Hello!")
    }
}

let p = Person()
p.greet()


// Struct Conforming to Protocol

struct Robot: Greetable {
    func greet() {
        print("Hii")
    }
}

let r = Robot()
r.greet()

// Protocol with Properties

protocol Vehicle {
    var speed: Int { get set }
    func drive()
}

class Car: Vehicle {
    var speed: Int = 0
    
    func drive() {
        print("Car driving at \(speed) km/h")
    }
}

let car = Car()
car.speed = 100
car.drive()

// Protocol as Type

protocol Shape {
    func draw()
}

class Circle: Shape {
    func draw() {
        print("Drawing Circle")
    }
}

class Square: Shape {
    func draw() {
        print("Drawing Square")
    }
}

let shapes: [Shape] = [Circle(), Square()]

for shape in shapes {
    shape.draw()
}


// Extensions
// Extend Struct

struct Student {
    var name: String
}

extension Student {
    func introduce() {
        print("Hi, I'm \(name)")
    }
}

let s = Student(name: "Jagadish")
s.introduce()

// Extend Built-in Type

extension Int {
    func square() -> Int {
        return self * self
    }
}

print(5.square())

// Protocol + Extension

protocol Greeting {
    func sayHello()
}

extension Greeting {
    func sayHello() {
        print("Hello welcome")
    }
}

class User: Greeting { }

let u = User()
u.sayHello()
