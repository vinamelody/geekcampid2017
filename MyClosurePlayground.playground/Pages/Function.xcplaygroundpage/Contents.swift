/*:
 ### Function
 
 - Function name
 - Parameter variable name & type
 - Return type
 - Code block / implementation
 
 Example
 */
func greet(name: String?) -> String {
    let greeting = "Hello, " + (name == nil ? "there" : name)! + "!"
    return greeting
}
/*:
 ### How to call the function?
 */

//: [Back](@previous) [Next](@next)