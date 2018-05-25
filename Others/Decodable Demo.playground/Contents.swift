//: Playground - noun: a place where people can play

import Foundation

class Employee: Decodable {
    var name: String?
    var reportingTo: Employee?

    enum EmployeeKeys: String, CodingKey {
        case name
        case reportingTo = "Employee"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: EmployeeKeys.self)
        for key in values.allKeys {
            name = try values.decode(String.self, forKey: .name)
            reportingTo = try values.decodeIfPresent(Employee.self, forKey: .reportingTo)
        }
    }
}


do {
    guard let fileUrl = Bundle.main.url(forResource: "Employees", withExtension: "json") else { fatalError() }
    var data = try Data(contentsOf: fileUrl)

    //Decoder
    let decoder = JSONDecoder()
    if let decodedEmployee = try? decoder.decode(Employee.self, from: data) {
        print(decodedEmployee.reportingTo?.reportingTo?.reportingTo?.reportingTo?.name)
    }
} catch DecodingError.keyNotFound(let key, let context) {
    print(key, context)
}
