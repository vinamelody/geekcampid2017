/*:
 ## Map
 Given an array of customers.
 */
let customers = ["Budi", "Joni", "Dian"]
/*:
 How to create a new array of greetings?
 
 The usual way is ...
 */
func greet(name: String?) -> String {
    let greeting = "Hello, " + (name == nil ? "there" : name)! + "!"
    return greeting
}
var greetings = [String]()
for customer in customers {
    greetings.append(greet(name: customer))
}
greetings
/*:
 What's a better way to do this using closure?
 */
let smartGreetings = customers.map({ (name) in
    return greet(name: name)
})


/*:
 Even shorter...
 */
let smarterGreetings = customers.map({ return greet(name: $0)})
smartGreetings
//: [Back](@previous) [Next](@next)
