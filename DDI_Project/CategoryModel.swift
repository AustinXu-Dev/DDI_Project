import Foundation

struct CategoryModel{
    let id = UUID().uuidString
    let name: String
    let image: String
}


struct CategoryData{
    static let categories = [
        CategoryModel(name: "NEW IN", image: "new_in"),
        CategoryModel(name: "CHARM", image: "charm"),
        CategoryModel(name: "RINGS", image: "rings"),
        CategoryModel(name: "BRACELETES", image: "bracelets"),
        CategoryModel(name: "EARRINGS", image: "earrings"),
        CategoryModel(name: "NECKLACE", image: "necklace")
    ]
}
