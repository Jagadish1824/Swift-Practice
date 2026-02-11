// Inheritance

class Animal {
    func makeSound() {
        print("Animal makes sound")
    }
}

class Dog: Animal {
    func bark() {
        print("Dog barks")
    }
}

let d = Dog()
d.makeSound()
d.bark()

// Method Overriding

class Animal2 {
    func makeSound() {
        print("Animal sound")
    }
}

class Cat: Animal2 {
    override func makeSound() {
        print("Cat says Meow")
    }
}

let c = Cat()
c.makeSound()


// Using super

class Animal3 {
    func makeSound() {
        print("Animal sound")
    }
}

class Lion: Animal3 {
    override func makeSound() {
        super.makeSound()
        print("Lion roars")
    }
}

let l = Lion()
l.makeSound()

// Final Keyword

final class Vehicle {
    func start() {
        print("Vehicle started")
    }
}

// Polymorphism

class Shape {
    func draw() {
        print("Drawing shape")
    }
}

class Circle: Shape {
    override func draw() {
        print("Drawing circle")
    }
}

class Square: Shape {
    override func draw() {
        print("Drawing square")
    }
}

let shapes: [Shape] = [Circle(), Square()]

for shape in shapes {
    shape.draw()
}

// Example program

class Employee {
    func salary() {
        print("Base salary")
    }
}

class Manager: Employee {
    override func salary() {
        print("Manager salary: 80000")
    }
}

class Developer: Employee {
    override func salary() {
        print("Developer salary: 60000")
    }
}

let employees: [Employee] = [Manager(), Developer()]

for emp in employees {
    emp.salary()
}


