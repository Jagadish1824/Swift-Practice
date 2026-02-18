// ARC (Automatic Reference Counting)

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    
    deinit {
        print("\(name) is deinitialized")
    }
}

var p1: Person? = Person(name: "Jagadish")

p1 = nil

// Strong Reference Count Program

class Car {
    var model: String
    
    init(model: String) {
        self.model = model
        print("Car created")
    }
    
    deinit {
        print("Car destroyed")
    }
}

var car1: Car? = Car(model: "BMW")
var car2 = car1

car1 = nil
print("car1 is nil")

car2 = nil
print("car2 is nil")

// Retain Cycle Problem Program

class Teacher {
    var student: Student?
    deinit {
        print("Teacher removed")
    }
}

class Student {
    var teacher: Teacher?
    deinit {
        print("Student removed")
    }
}

var t: Teacher? = Teacher()
var s: Student? = Student()

t?.student = s
s?.teacher = t

t = nil
s = nil

// Fix Retain Cycle using weak

class Teacher2 {
    var student: Student2?
    deinit {
        print("Teacher removed")
    }
}

class Student2 {
    weak var teacher: Teacher2?
    deinit {
        print("Student removed")
    }
}

var t2: Teacher2? = Teacher2()
var s2: Student2? = Student2()

t2?.student = s2
s2?.teacher = t2

t2 = nil
s2 = nil

// unowned Program

class Customer {
    var name: String
    var card: CreditCard?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Customer removed")
    }
}

class CreditCard {
    unowned let customer: Customer
    
    init(customer: Customer) {
        self.customer = customer
    }
    
    deinit {
        print("Card removed")
    }
}

var customer: Customer? = Customer(name: "Jagadish")
customer?.card = CreditCard(customer: customer!)

customer = nil

// Closure Retain Cycle Program

class Demo {
    var name = "Swift"
    
    lazy var printName: () -> Void = {
        print(self.name)
    }
    
    deinit {
        print("Demo removed")
    }
}

var d: Demo? = Demo()
d = nil


// Fix Closure Retain Cycle

class Demo2 {
    var name = "Swift"
    
    lazy var printName: () -> Void = { [weak self] in
        print(self?.name ?? "")
    }
    
    deinit {
        print("Demo removed")
    }
}

var d2: Demo2? = Demo2()
d2 = nil

