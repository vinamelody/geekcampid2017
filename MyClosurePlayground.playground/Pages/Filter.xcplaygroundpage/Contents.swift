//: [Back](@previous)
/*:
 ## Filter
 Given an array of customers with status data
 */
import Foundation
let customersStatusData: [[String: String]] = [
    ["name": "Karmen", "status": "Regular"],
    ["name": "Joni", "status": "Premium"],
    ["name": "Dian", "status" : "Regular"],
    ["name": "Rangga", "status": "Regular"]
]
/*:
 How to create a new set array of customers who are Regular?
 
 The usual way is ...
 */
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
/*:
 What's a better way to do this using closure?
 */
let smartRegularFilter = customersStatusData.filter({
    customer in (customer["status"]?.contains("Premium"))!
})


/*:
 Even shorter...
 */
let smarterRegularFilter = customersStatusData.filter({
    return ($0["status"]?.contains("Regular"))!
})
//: [Next](@next)
