import UIKit

// this a example of simple Stack
struct Stack<T>: CustomStringConvertible {
  
  private var items: [T]
  
  var description: String {
    return "\(items)"
  }
  
  var isEmpty : Bool {
    return items.isEmpty
  }
  
  init() {
    items = []
  }
  
  mutating func pop() -> T? {
    return !isEmpty ? items.removeLast() : nil
  }
  
  mutating func push(item: T) {
    items.append(item)
  }
}

var stackOfName = Stack<String>()
stackOfName.push(item: "Mary")
stackOfName.push(item: "Susan")
stackOfName.push(item: "George")
stackOfName.push(item: "Jessica")

var stackOfNumbers = Stack<Int>()
stackOfNumbers.push(item: 25)
stackOfNumbers.push(item: 84)


while let name = stackOfName.pop() {
  print("popping name: \(name)")
}

while let item = stackOfNumbers.pop() {
  print("popping name: \(item)")
}
