//: [Back](@previous)
/*:
 ## Reduce
 Given an array of customers with status and total spending.
 */
import Foundation
let customersData: [[String: Any]] = [
    ["name": "Karmen", "status": "Regular", "totalSpend": 129.9],
    ["name": "Joni", "status": "Premium", "totalSpend": 27.20],
    ["name": "Dian", "status" : "Regular", "totalSpend": 119.0],
    ["name": "Rangga", "status": "Regular", "totalSpend": 459.0]
]/*:
 How to get total spending of all customers?
 
 The usual way is ...
 */
func sumTotalSpend(customers: [[String:Any]]) -> Double {
    var total: Double = 0
    for customer in customers {
        if let spending = customer["totalSpend"] as? Double {
            total += spending
        }
    }
    return total
}
let totalSpend = sumTotalSpend(customers: customersData)
/*:
 What's a better way to do this using closure?
 */
let smartReduce = customersData.map({ return $0["totalSpend"] as! Double }).reduce(0, +)

/*:
 Up for challenge? We'll use method chaining to find out how much is the total spending for regular customers.
 */


//: [Next](@next)
