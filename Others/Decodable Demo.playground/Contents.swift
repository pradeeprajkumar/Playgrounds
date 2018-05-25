//: Playground - noun: a place where people can play

import Foundation

class Employee: Decodable {
    var name: String
    var role: String
    var reportingTo: Employee?

    enum EmployeeKeys: String, CodingKey {
        case name
        case role
        case reportingTo = "Employee"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: EmployeeKeys.self)
        name = try values.decode(String.self, forKey: .name)
        role = try values.decode(String.self, forKey: .role)
        reportingTo = try values.decodeIfPresent(Employee.self, forKey: .reportingTo)
    }
}


do {
    guard let fileUrl = Bundle.main.url(forResource: "Employees", withExtension: "json") else { fatalError() }
    let data = try Data(contentsOf: fileUrl)

    //Decoder
    let decoder = JSONDecoder()
    if let decodedEmployee = try? decoder.decode(Employee.self, from: data) {
        if let ceoObject = decodedEmployee.reportingTo?.reportingTo?.reportingTo?.reportingTo {
            print(ceoObject.name, "is", ceoObject.role)
        }
    }
} catch DecodingError.keyNotFound(let key, let context) {
    print(key, context)
}
