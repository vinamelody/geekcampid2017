import Foundation

func greet(name: String?) -> String {
    let greeting = "Hello, " + (name == nil ? "there" : name)! + "!"
    return greeting
}

greet(name: "John Appleseed")

var sayHelloClosure: (_ name: String?) -> String = { (name) in
    return greet(name: name)
}
sayHelloClosure("Vina")
sayHelloClosure(nil)


let customers = ["Budi", "Joni", "Dian"]

var greetings = [String]()
for customer in customers {
    greetings.append(greet(name: customer))
}

let smartGreetings = customers.map({ (name) in
    return greet(name: name)
})

let smarterGreetings = customers.map({ return greet(name: $0)})
smarterGreetings

let customersStatusData: [[String: String]] = [
    ["name": "Karmen", "status": "Regular"],
    ["name": "Joni", "status": "Premium"],
    ["name": "Dian", "status" : "Regular"],
    ["name": "Rangga", "status": "Regular"]
]

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
regularFilter


let smartRegularFilter = customersStatusData.filter({
    customer in (customer["status"]?.contains("Premium"))!
})

let smarterRegularFilter = customersStatusData.filter({
    return ($0["status"]?.contains("Regular"))!
})


let customersData: [[String: Any]] = [
    ["name": "Karmen", "status": "Regular", "totalSpend": 129.9],
    ["name": "Joni", "status": "Premium", "totalSpend": 27.20],
    ["name": "Dian", "status" : "Regular", "totalSpend": 119.0],
    ["name": "Rangga", "status": "Regular", "totalSpend": 459.0]
]

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

let smartReduce = customersData.map({ return $0["totalSpend"] as! Double }).reduce(0, +)
smartReduce

