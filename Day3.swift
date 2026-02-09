//operators

let price = 100
let discount = 20

let finalPrice = price - discount
print("Final Price:", finalPrice)


// Operator Overloading

struct Money {
    var amount: Int

    static func + (m1: Money, m2: Money) -> Money {
        return Money(amount: m1.amount + m2.amount)
    }
}

let wallet1 = Money(amount: 500)
let wallet2 = Money(amount: 300)

let total = wallet1 + wallet2
print("Total Money:", total.amount)

// Compound Assignment Operator

var balance = 1000

balance += 500     // add salary
balance -= 200     // shopping
balance *= 2       // bonus
balance /= 4       // split
balance %= 300     // remainder

print("Final Balance:", balance)

// Comparison Operators

let a = 10
let b = 20

print("a == b :", a == b)
print("a != b :", a != b)
print("a > b  :", a > b)
print("a < b  :", a < b)
print("a >= b :", a >= b)
print("a <= b :", a <= b)

// Combining Conditions

let accountBalance = 5000
let withdrawAmount = 3000
let pinCorrect = true

if withdrawAmount <= accountBalance && pinCorrect {
    print("Withdraw Successful")
} else {
    print("Transaction Failed")
}


// Ternary Operator

let score = 85

let grade = score >= 90 ? "A" :
            score >= 75 ? "B" :
            score >= 50 ? "C" : "Fail"

print(grade)


// Switch 

let x = 10
let y = 5
let operation = "+"

switch operation {
case "+":
    print(x + y)
case "-":
    print(x - y)
case "*":
    print(x * y)
case "/":
    print(x / y)
default:
    print("Invalid Operation")
}

// Range Operator

let age = 25

if (18...60).contains(age) {
    print("Working Age")
} else {
    print("Not Working Age")
}

// for loop

let num = 5
var factorial = 1

for i in 1...num {
    factorial *= i
}

print("Factorial:", factorial)

// another example for for-loop

let values = [12, 45, 7, 89, 23]
var maxValue = values[0]

for num in values {
    if num > maxValue {
        maxValue = num
    }
}

print("Largest:", maxValue)


// star program

let rows = 5

for i in 1...rows {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}

// while loop

var numToReverse = 1234
var reversed = 0

while numToReverse > 0 {
    let digit = numToReverse % 10
    reversed = reversed * 10 + digit
    numToReverse /= 10
}

print("Reversed:", reversed)

// prime or not

let primeCheck = 11
var i = 2
var isPrime = true

if primeCheck <= 1 {
    isPrime = false
} else {
    while i < primeCheck {
        if primeCheck % i == 0 {
            isPrime = false
            break
        }
        i += 1
    }
}

print(isPrime ? "Prime" : "Not Prime")

// repeat-while loop

var choice = 0

repeat {
    print("1. Check Balance")
    print("2. Withdraw Money")
    print("3. Exit")
    choice += 1
} while choice < 3

print("Exited Menu")


// Infinite-loop

var isConnected = false
var attempts = 0

while true {
    print("Trying to connect...")
    attempts += 1

    if attempts == 3 {
        isConnected = true
        print("Connected")
        break
    }
}

//