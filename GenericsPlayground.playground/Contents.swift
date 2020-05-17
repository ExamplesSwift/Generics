import UIKit

// this a example of simple Stack
struct Stack: CustomStringConvertible {
  
  private var items: [Any]
  
  var description: String {
    return "\(items)"
  }
  
  var isEmpty : Bool {
    return items.isEmpty
  }
  
  init() {
    items = []
  }
  
  mutating func pop() -> Any? {
    return !isEmpty ? items.removeLast() : nil
  }
  
  mutating func push(item: Any) {
    items.append(item)
  }
}

var stackOfName = Stack()
stackOfName.push(item: "Mary")
stackOfName.push(item: "Susan")
stackOfName.push(item: "George")
stackOfName.push(item: "Jessica")

var stackOfNumbers = Stack()
stackOfNumbers.push(item: 14)
stackOfNumbers.push(item: "Henry AT")


while let name = stackOfName.pop() {
  print("popping name: \(name)")
}

while let item = stackOfNumbers.pop() {
  print("popping name: \(item)")
}
