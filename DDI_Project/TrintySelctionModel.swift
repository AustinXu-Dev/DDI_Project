import Foundation

struct TrintySelctionModel: Identifiable, Hashable {
    var id = UUID()
    var imageName: String
    var title: String
    var caption: String
    var price: String
}
