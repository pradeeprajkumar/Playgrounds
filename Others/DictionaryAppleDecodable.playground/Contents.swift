//: Playground - noun: a place where people can play

import Foundation

let json = """
{
    "Banana": {
        "description": "A banana grown in Ecuador."
    },
    "Orange": {
        "description": "This Orange is the tastiest"
    }
}
""".data(using: .utf8)!

struct GroceryStore {
    struct Product {
        let name: String
        let points: Int
        let description: String?
    }
    
    var products: [Product]
    
    init(products: [Product] = []) {
        self.products = products
    }
}

extension GroceryStore: Encodable {
    struct ProductKey: CodingKey {
        var stringValue: String
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        
        var intValue: Int? { return nil }
        init?(intValue: Int) { return nil }
        
        static let points = ProductKey(stringValue: "points")!
        static let description = ProductKey(stringValue: "description")!
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ProductKey.self)
        
        for product in products {
            // Any product's `name` can be used as a key name.
            let nameKey = ProductKey(stringValue: product.name)!
            var productContainer = container.nestedContainer(keyedBy: ProductKey.self, forKey: nameKey)
            
            // The rest of the keys use static names defined in `ProductKey`.
            try productContainer.encode(product.points, forKey: .points)
            try productContainer.encode(product.description, forKey: .description)
        }
    }
}

extension GroceryStore: Decodable {
    public init(from decoder: Decoder) throws {
        var products = [Product]()
        let container = try decoder.container(keyedBy: ProductKey.self)
        for key in container.allKeys {
            // Note how the `key` in the loop above is used immediately to access a nested container.
            let productContainer = try container.nestedContainer(keyedBy: ProductKey.self, forKey: key)
            let points = try productContainer.decode(Int.self, forKey: .points)
            let description = try productContainer.decodeIfPresent(String.self, forKey: .description)
            
            // The key is used again here and completes the collapse of the nesting that existed in the JSON representation.
            let product = Product(name: key.stringValue, points: points, description: description)
            products.append(product)
        }
        
        self.init(products: products)
    }
}



let decoder = JSONDecoder()
let decodedStore = try decoder.decode(GroceryStore.self, from: json)

print("The store is selling the following products:")
for product in decodedStore.products {
    print("\t\(product.name) (\(product.points) points)")
    if let description = product.description {
        print("\t\t\(description)")
    }
}
