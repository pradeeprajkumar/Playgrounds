//: Playground - noun: a place where people can play
import Foundation

let data: Data

struct Organisation {
    struct Employee: Decodable {
        var designation: String
        var tecnical: [String:String]?
        var description: String
        var inscription: String
        var materials: String
        var notice: String?
        var image: String?
    }
    var employees: [Employee]
    
    init(employees: [Employee] = []) {
        self.employees = employees
    }
}

extension Organisation: Decodable {
    struct EmployeeKey: CodingKey {
        var stringValue: String
        var intValue: Int? { return nil }
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        init?(intValue: Int) {
            return nil
        }
        static let description = EmployeeKey(stringValue: "description")
        static let tecnical = EmployeeKey(stringValue: "tecnical")
        static let inscription = EmployeeKey(stringValue: "inscription")
        static let materials = EmployeeKey(stringValue: "materials")
        static let notice = EmployeeKey(stringValue: "notice")
        static let image = EmployeeKey(stringValue: "image")
    }
    
    public init(from decoder: Decoder) throws {
        var employees = [Employee]()
        let container = try decoder.container(keyedBy: EmployeeKey.self)
        for key in container.allKeys {
            
            let employeeContainer = try container.nestedContainer(keyedBy: EmployeeKey.self, forKey: key)
            
            let description = try employeeContainer.decode(String.self, forKey: EmployeeKey.description!)
            let tecnical = try employeeContainer.decode([String: String].self, forKey: EmployeeKey.tecnical!)
            let inscription = try employeeContainer.decode(String.self, forKey: EmployeeKey.inscription!)
            let materials = try employeeContainer.decode(String.self, forKey: EmployeeKey.materials!)
            let notice = try employeeContainer.decode(String.self, forKey: EmployeeKey.notice!)
            let image = try employeeContainer.decode(String.self, forKey: EmployeeKey.image!)
            
            let employee = Employee(designation: key.stringValue, tecnical: tecnical, description: description, inscription: inscription, materials: materials, notice: notice, image: image)
            employees.append(employee)
        }
        self.init(employees: employees)
    }
}


do {
    guard let fileUrl = Bundle.main.url(forResource: "document", withExtension: "json") else { fatalError() }
    data = try Data(contentsOf: fileUrl)
    
    //Decoder
    let decoder = JSONDecoder()
    if let decodedOrganisation = try? decoder.decode(Organisation.self, from: data) {
        for employee in decodedOrganisation.employees {
            print("\n",employee.designation, "\n", employee.description, employee.inscription, "\n", employee.tecnical, "\n", employee.materials, employee.notice, employee.image)
            
        }
    }
} catch DecodingError.keyNotFound(let key, let context) {
    print(key, context)
} catch DecodingError.valueNotFound(let value, let context) {
    print(value, context)
} catch DecodingError.typeMismatch(let type, let context) {
    print(type, context)
}
