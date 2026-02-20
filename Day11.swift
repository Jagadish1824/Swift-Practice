// Basic Protocol

protocol Shape {
    func calculateArea() -> Double
}

struct Circle: Shape {
    var radius: Double
    
    func calculateArea() -> Double {
        return 3.14 * radius * radius
    }
}

struct Rectangle: Shape {
    var width: Double
    var height: Double
    
    func calculateArea() -> Double {
        return width * height
    }
}

let circle = Circle(radius: 5)
let rectangle = Rectangle(width: 4, height: 6)

print("Circle Area:", circle.calculateArea())
print("Rectangle Area:", rectangle.calculateArea())

// Protocol with Property Requirements

protocol Employee {
    var name: String { get }
    var salary: Double { get set }
}

class Manager: Employee {
    var name: String
    var salary: Double
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
}

let manager = Manager(name: "Jagadish", salary: 80000)
print(manager.name, manager.salary)

// Protocol + Polymorphism

protocol PaymentMethod {
    func pay(amount: Double)
}

class CashPayment: PaymentMethod {
    func pay(amount: Double) {
        print("Paid ₹\(amount) using Cash")
    }
}

class CardPayment: PaymentMethod {
    func pay(amount: Double) {
        print("Paid ₹\(amount) using Card")
    }
}

func processPayment(method: PaymentMethod) {
    method.pay(amount: 1000)
}

processPayment(method: CashPayment())
processPayment(method: CardPayment())

// Protocol Extension

protocol Logger {
    func log(message: String)
}

extension Logger {
    func log(message: String) {
        print("Default Log:", message)
    }
}

class AppLogger: Logger { }

let logger = AppLogger()
logger.log(message: "Application Started")

// Protocol Inheritance

protocol Vehicle {
    func start()
}

protocol ElectricVehicle: Vehicle {
    func charge()
}

class Tesla: ElectricVehicle {
    func start() {
        print("Tesla started")
    }
    
    func charge() {
        print("Tesla charging")
    }
}

let car = Tesla()
car.start()
car.charge()

// Multiple Protocol Conformance

protocol Switchable {
    func turnOn()
    func turnOff()
}

protocol Connectable {
    func connectToWiFi()
}

class SmartTV: Switchable, Connectable {
    func turnOn() {
        print("TV turned on")
    }
    
    func turnOff() {
        print("TV turned off")
    }
    
    func connectToWiFi() {
        print("TV connected to WiFi")
    }
}

let tv = SmartTV()
tv.turnOn()
tv.connectToWiFi()

// Dependency Injection using Protocol

protocol DataService {
    func fetchData()
}

class APIService: DataService {
    func fetchData() {
        print("Fetching data from API")
    }
}

class MockService: DataService {
    func fetchData() {
        print("Fetching mock data")
    }
}

class ViewModel {
    var service: DataService
    
    init(service: DataService) {
        self.service = service
    }
    
    func load() {
        service.fetchData()
    }
}

let liveVM = ViewModel(service: APIService())
liveVM.load()

let testVM = ViewModel(service: MockService())
testVM.load()