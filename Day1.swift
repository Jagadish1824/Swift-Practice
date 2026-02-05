// Variables
var name = "Jagadish"//can change
let age = 22 //cannot change


//if-else
if age >= 18 {
    print("Adult")
} else {
    print("Un Adult")
}

// loop
for i in 1...5 {
    print(i)
}

// Strong typing with different variable names
var userAge: Int = 25
var userName: String = "jagadish"
var isDeveloper: Bool = true
print("My name is \(userName)")
print(userAge)

// Example Program

var number = 7
if number % 2 == 0 {
    print("\(number) is even")
} else {
    print("\(number) is odd")
}


//Funtions

func sayHello(){
    print("Hello, welcome to shift")
}
sayHello()

//funtions with parameters

func sayHello(name: String){
    print("Hello \(name), welcome to shift")
}
sayHello(name: "jagadish")
