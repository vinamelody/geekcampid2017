//: [Back](@previous)
/*:
 ## Reduce
 Given an array of customers with status and points.
 */
import Foundation
let customersData: [[String: Any]] = [
    ["name": "Karmen", "status": "Regular", "points": 129],
    ["name": "Joni", "status": "Premium", "points": 27],
    ["name": "Dian", "status" : "Regular", "points": 119],
    ["name": "Rangga", "status": "Regular", "points": 45]
]/*:
 How to get total points of all customers?
 
 The usual way is ...
 */
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
/*:
 What's a better way to do this using closure?
 */
let smartReduce = customersData.map({ return $0["points"] as! Int }).reduce(0, +)
smartReduce
/*:
 Up for challenge? We'll use method chaining to find out how much is the total points for regular customers.
 */


//: [Next](@next)
