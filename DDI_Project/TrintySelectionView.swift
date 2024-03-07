
import SwiftUI

struct TrintySelectionView: View {
    
    let items = [
           TrintySelctionModel(imageName: "one", title: "TRINITY RING \n SMALL MODEL", caption: "White gold, rose gold, yellow gold", price: "$10"),
           TrintySelctionModel(imageName: "two", title: "TRINTY \n NECKLACE", caption: "White gold, rose gold, yellow gold", price: "$20"),
           TrintySelctionModel(imageName: "four", title: "TRINTY \n BRACELET", caption: "White gold, rose gold, yellow gold", price: "$20"),
           TrintySelctionModel(imageName: "one", title: "TRINITY RING \n SMALL MODEL", caption: "White gold, rose gold, yellow gold", price: "$10"),
           TrintySelctionModel(imageName: "two", title: "TRINTY \n NECKLACE", caption: "White gold, rose gold, yellow gold", price: "$20"),
           TrintySelctionModel(imageName: "four", title: "TRINTY \n BRACELET", caption: "White gold, rose gold, yellow gold", price: "$20")
       ]
    
    var body: some View {
        Text("TRINITY SELECTION")
            .bold()
            .padding()
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
                ForEach(items, id: \.self) { item in
                    VStack(alignment: .center) {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        Text(item.title)
                            .font(.caption)
                            .frame(alignment: .center)
                        
                        Text(item.caption)
                            .font(.caption2)
                            .frame(width: 100, height: 40, alignment: .center)
                        
                        VStack {
                            Text(item.price)
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                        }
                        .background(Color.black)
                        .cornerRadius(10)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                }
            }
            .padding([.leading, .bottom])
        }
    }
}

#Preview {
    TrintySelectionView()
}
