// Generic Function

func swapValues<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20

swapValues(a: &x, b: &y)
print(x, y)

var name1 = "Rahul"
var name2 = "Amit"

swapValues(a: &name1, b: &name2)
print(name1, name2)

// Generic Class

class Storage<T> {
    var items: [T] = []
    
    func addItem(_ item: T) {
        items.append(item)
    }
    
    func getAllItems() -> [T] {
        return items
    }
}
var intStorage = Storage<Int>()
intStorage.addItem(10)
intStorage.addItem(20)

print(intStorage.getAllItems())

var stringStorage = Storage<String>()
stringStorage.addItem("Apple")
stringStorage.addItem("Banana")

print(stringStorage.getAllItems())

// Generic with Multiple Types

func printDetails<T, U>(value1: T, value2: U) {
    print("Value1:", value1)
    print("Value2:", value2)
}

printDetails(value1: 10, value2: "Swift")


// Generic with Constraints
func findMax<T: Comparable>(numbers: [T]) -> T? {
    if numbers.isEmpty {
        return nil
    }
    
    var max = numbers[0]
    for number in numbers {
        if number > max {
            max = number
        }
    }
    return max
}

// Generic Stack

struct Stack<T> {
    var elements: [T] = []
    
    mutating func push(_ item: T) {
        elements.append(item)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
}
var stack = Stack<Int>()
stack.push(10)
stack.push(20)

print(stack.pop()!)
print(stack.pop()!)

