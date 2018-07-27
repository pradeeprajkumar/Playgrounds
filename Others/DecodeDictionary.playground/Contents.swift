import Foundation

let json = """
{
  "Banana": {
        "points": 200,
        "description": "A banana grown in Ecuador."
    },
    "Orange": {
        "points": 100
    }
}
""".data(using: .utf8)! // our data in native format

struct GroceryStore {
    struct Product {
        let name: String
        let points: Int
        let description: String?
    }
    var products: [Product]
}

extension GroceryStore: Codable {
    struct ProductKey: CodingKey {
        var stringValue: String
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        var intValue: Int? {
            return nil
        }
        init?(intValue: Int) {
            return nil
        }
        
    }
}

extension GroceryStore: Decodable {
    public init(from decoder: Decoder) throws {
        var products = [Product]()
        let container = try decoder.container(keyedBy: ProductKey)
    }
}

let decoder = JSONDecoder()
let decodedStore = try decoder.decode(GroceryStore.self, from: json)
