//: Playground - noun: a place where people can play

import Foundation

class Organisation: Decodable {
    var companyName: String
    var domain: String

    enum CodingKeys: String, CodingKey {
        case companyName = "company_name"
        case domain
    }
}

class Employee: Decodable {
    var name: String
    var role: String
    var belongsTo: Organisation?
    
    enum CodingKeys: String, CodingKey {
        case name
        case role
        case belongsTo = "organisation"
    }
    
}


do {
    guard let fileUrl = Bundle.main.url(forResource: "Employees", withExtension: "json") else { fatalError() }
    let data = try Data(contentsOf: fileUrl)

    //Decoder
    let decoder = JSONDecoder()
    if let decodedEmployee = try? decoder.decode(Employee.self, from: data) {
        print(decodedEmployee.name, decodedEmployee.role)
        print(decodedEmployee.belongsTo?.companyName, decodedEmployee.belongsTo?.domain)
    }
} catch {
    print("Exception found")
}


/*
 /*
     init(name: String, role: String, employee: Employee) {
         self.name = name
         self.role = role
         self.employee = employee
     }
 
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: EmployeeKeys.self)
 
         name = try values.decode(String.self, forKey: .name)
         role = try values.decode(String.self, forKey: .role)
         reportingTo = try values.decodeIfPresent(Employee.self, forKey: .reportingTo)
    }
 */
 */
