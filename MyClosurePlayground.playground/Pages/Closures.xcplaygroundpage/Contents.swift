/*:
 ## Closures
 - A closure is a self-contained block of code that can be passed around.
 - Declare it like a variable
 Example
 */
var sayHelloClosure: (_ name: String?) -> String = { (name) in
    return "Hello, " + (name == nil ? "there" : name)! + "!"
}
/*:
 ### How to call the closure?
 */

//: [Next](@next)