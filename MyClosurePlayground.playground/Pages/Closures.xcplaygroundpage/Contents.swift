/*:
 ## Closures
 - A closure is a self-contained block of code that can be passed around.
 - Declare it like a variable
 
 ### Example
 */
func greet(name: String?) -> String {
    let greeting = "Hello, " + (name == nil ? "there" : name)! + "!"
    return greeting
}
var sayHelloClosure: (_ name: String?) -> String = { (name) in
    return "Hello, " + (name == nil ? "there" : name)! + "!"
//    return greet(name: name)
}
/*:
 ### How to call the closure?
 */
sayHelloClosure("Vina")
sayHelloClosure(nil)

//: [Back](@previous) [Next](@next)
