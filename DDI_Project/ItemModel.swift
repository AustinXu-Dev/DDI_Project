import Foundation

struct ItemModel: Identifiable{
    var id = UUID().uuidString
    var name: String
    var image: String
    var price: Double
    var isFavourite: Bool?
}

class ItemData{
    static var items = [
        ItemModel(name: "LEVE NECKLACE", image: "leve_necklace",price: 93000.00, isFavourite: false),
        ItemModel(name: "24K PINK GOLD EARRINGS", image: "24k_pinkgold",price: 3900.00, isFavourite: false),
        ItemModel(name: "24K PINK GOLD RING", image: "24k_pinkgold_ring",price: 7400.00, isFavourite: false),
        ItemModel(name: "CARTIER BRACELET", image: "cartier_bracelet",price: 4800.00, isFavourite: false),
        ItemModel(name: "CARTIER JUSTE UN CLOU RING", image: "cartier_juste_un",price: 93000.00, isFavourite: false),
        ItemModel(name: "CARTIER WEDDING BAND", image: "cartier_wedding",price: 93000.00, isFavourite: false),
        ItemModel(name: "CARTIER DIAMOND LOVE", image: "cartier_diamond",price: 93000.00, isFavourite: false),
        ItemModel(name: "CARTIER CHARM", image: "cartier_charm",price: 93000.00, isFavourite: false),
    ]
    
    static var bracelets = [
        ItemModel(name: "CARTIER BRACELET", image: "1", price: 4800.00),
        ItemModel(name: "TRINITY BRACELET", image: "2", price: 57000.00),
        ItemModel(name: "LOVE BRACELET-BRUSHED FINISH", image: "3", price: 12000.00),
        ItemModel(name: "JUSTE UN CLOU BRACELET, SMALL MODEL", image: "4", price: 22200.00),
        ItemModel(name: "LOVE BRACELET, 4 DIAMONDS", image: "5", price: 23000.00),
        ItemModel(name: "CARTIER D'AMOUR BRACELET", image: "6", price: 24000.00),
        ItemModel(name: "LOVE BRACELET, DIAMOND-PAVED", image: "7", price: 45000.00),
        ItemModel(name: "PANTHERE DE CARTIER BRACELET", image: "8", price: 35000.00),
        ItemModel(name: "MALLION PANTHERE THIN BRACELET, 3 DIAMOND-PAVED ROWS", image: "9", price: 45000.00),
        ItemModel(name: "JUSTE UN CLOU BRACELET, MEDIUM MODEL", image: "10", price: 45000.00),
        ItemModel(name: "TRESSAGE BRACELET", image: "11", price: 24000.00),
        ItemModel(name: "ETINCELLE DE CARTIER BRACELET", image: "12", price: 45000.00),
        ItemModel(name: "DIAMOND COLLECTION BRACELET", image: "13", price: 125000.00),
        ItemModel(name: "GRAIN DE CAFE BRACELET", image: "14", price: 88000.00),
        ItemModel(name: "PANTHERE DE CARTIER BRACELET", image: "15", price: 75000.00),
        ItemModel(name: "HIGH JEWELLERY BRACELET", image: "16", price: 66000.00),

        
    ]
}
