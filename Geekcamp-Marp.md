Swift's Higher Order Functions
===

## Practical use of { map, filter and reduce }

#

#

##### Created by Vina Rianti  ( [@vinamelody](https://twitter.com/vinamelody) ) 

- It's weekend at GeekcampID, relax 😁!
- Lots of Swift code for ðŸ¤“, but fun!
- No such thing as a stupid question, ask ðŸ˜ƒ!


---

# Swift Language

Swift is a general-purpose programming language built using a modern approach to **safety**, **performance**, and **software design patterns**. (https://swift.org/about/)
 
One example of **software design patterns** is the use of closures.

---

# Functions

- Function name
- Parameter variable & type
- Return type
- Code block / implementation


```swift
func greet(name: String?) -> String {
    let greeting = "Hello, " + (name == nil ? "there" : name)! + "!"
    return greeting
}
```

## To call the function

`greet(name: "John Appleseed")`

---

# Swift Closures

- A closure is a self-contained block of code that can be passed around. 
- Declare it like a variable

```swift
var sayHelloClosure: (_ name: String?) -> String = { (name) in
    return greet(name: name)
}
```

## To call the closure

```
sayHelloClosure("Vina")
sayHelloClosure(nil)
```

---

# Map

Given an array of customers.

`let customers = ["Budi", "Joni", "Dian"]`

How to create a new array of greetings?

The usual way is ...

```swift
func greet(name: String?) -> String {
    let greeting = "Hello, " + (name == nil ? "there" : name)! + "!"
    return greeting
}
var greetings = [String]()
for customer in customers {
    greetings.append(greet(name: customer))
}
```

---

# Map

What's a better way to do this using closure?

```swift
let smartGreetings = customers.map({ (name) in
    return greet(name: name)
})
```


Even shorter...

```swift
let smarterGreetings = customers.map({ return greet(name: $0)})
```

---

# Filter

Given an array of customers with status data

```swift
let customersStatusData: [[String: String]] = [
    ["name": "Karmen", "status": "Regular"],
    ["name": "Joni", "status": "Premium"],
    ["name": "Dian", "status" : "Regular"],
    ["name": "Rangga", "status": "Regular"]]
```

How to create a new set array of customers who are Regular?

```swift
func filterRegular(customers: [[String:String]]) -> [[String:String]]?{
    var regularCustomers: [[String:String]] = [[String:String]]()
    for customer in customers {
        if (customer["status"]?.contains("Regular"))! {
            regularCustomers.append(customer)
        }
    }
    return regularCustomers
}
let regularFilter = filterRegular(customers: customersStatusData)
```

---
# Filter

What's a better way to do this using closure?

```swift
let smartRegularFilter = customersStatusData.filter({
    customer in (customer["status"]?.contains("Premium"))!
})
```

Even shorter...

```swift
let smarterRegularFilter = customersStatusData.filter({
    return ($0["status"]?.contains("Regular"))!
})
```


---


# Reduce

One last thing. Given an array of customers with status and points.

```swift
let customersData: [[String: Any]] = [
	["name": "Karmen", "status": "Regular", "points": 129], 
    ["name": "Joni", "status": "Premium", "points": 27], 
    ["name": "Dian", "status" : "Regular", "points": 119], 
    ["name": "Rangga", "status": "Regular", "points": 45]]
```

How to get total spending of all customers?

```swift
func sumTotalPoints(customers: [[String:Any]]) -> Int {
    var total: Int = 0
    for customer in customers {
        if let points = customer["points"] as? Int {
            total += points
        }
    }
    return total
}
let totalPoints = sumTotalPoints(customers: customersData)
```


---

# Reduce

What's a better way to do this using closure?

```swift
let smartReduce = customersData.map({ return $0["points"] as! Int }).reduce(0, +)
```

---

# Challenge

Up for challenge? We'll use method chaining to find out how much is the total spending for regular customers.

---

# Summary

- You can achieve what you want with or without closure
- However, closure makes your code cleaner and more readable
- There are other benefits of closure that we can explore beyond this talk


---

# Thank you!


