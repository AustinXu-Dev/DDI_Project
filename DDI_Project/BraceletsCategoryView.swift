import SwiftUI

struct BraceletsCategoryView: View {
    
    var categories = [
        "Our Favourites", "New", "Price Low to High", "Price High to Low", "Trending Now"
    ]
    @State var bracelets: [ItemModel] = ItemData.bracelets
    @State private var selectedCategory: String = "New"
    
    var body: some View {
        
        ScrollView{
            Rectangle()
                .frame(width: 400, height: 120)
                .foregroundStyle(.gray.opacity(0.7))
                .overlay {
                    Text("NEW BRACELETS")
                        .font(.system(size: 24, weight: .semibold))
                }
            HStack{
                Rectangle()
                    .frame(width: 160, height: 50)
                    .foregroundStyle(.white)
                    .border(Color.black)
                    .overlay {
                        Picker("NEW", selection: $selectedCategory) {
                            ForEach(categories, id: \.self){ i in
                                Text(i)
                            }
                        }.tint(.black)
                    }
                    
                Rectangle()
                    .frame(width: 160, height: 50)
                    .foregroundStyle(.white)
                    .border(Color.black)
                    .overlay {
                        HStack{
                            Image("filter_icon")
                            Text("Filter")
                        }
                    }
                
                
            }
            Spacer().frame(height: 30)
            LazyVGrid(columns: [GridItem(.fixed(150)), GridItem(.fixed(150))], spacing: 15) {
                ForEach(bracelets, id: \.id){ bracelet in
                    VStack(alignment: .center){
                        ZStack{
                            Image(bracelet.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: .infinity,height: 130)
                                .padding(.bottom, 10)
                            
                        }
                        
                        Text(bracelet.name)
                            .font(.system(size: 10))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                            .lineLimit(3)
                        
                        Text("\(bracelet.price.formatted(.number.precision(.fractionLength(2))))")
                            .font(.system(size: 10, weight: .semibold))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        Spacer()
                    }.frame(width: 150, height: 230)
                }
            }
        }
        
        .padding(.vertical)
        
        
        
    }
}

#Preview {
    BraceletsCategoryView()
}
