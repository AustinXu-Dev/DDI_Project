import SwiftUI

struct CategoryView: View {
    
    @State var categories: [CategoryModel] = CategoryData.categories
    @State var items: [ItemModel] = ItemData.items
    @State var isFavourite: Bool = false
    @State var searchText = ""
    @State var isSearching = false
    
    var filteredCategories: [CategoryModel] {
        guard !searchText.isEmpty else {return categories}
        return categories.filter {$0.name.localizedCaseInsensitiveContains(searchText)}
    }
    
    var body: some View {
        ScrollView(.vertical) {
            SearchBar(searchText: $searchText, isSearching: $isSearching)
            VStack(alignment: .center){
                LazyVGrid(columns: [GridItem(.fixed(150)), GridItem(.fixed(150))], spacing: 15) {
                    ForEach(filteredCategories, id: \.id){ category in
                        NavigationLink(value: "GoToBracelets") {
                            Rectangle()
                                .frame(width: 140, height: 150)
                                .border(.black)
                                .foregroundStyle(Color("category_item_bg"))
                                .overlay {
                                    VStack(alignment: .center){
                                        Image(category.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100)
                                        Text(category.name)
                                        Rectangle()
                                            .frame(width: 80,height: 1)
                                    }
                                }
                        }.foregroundStyle(.black)
                        
                        
                    }
                }
            }
            Spacer().frame(height: 20)
            VStack(alignment: .leading){
                
//                HStack {
                    Text("RECOMMENDED FOR YOU")
                        .frame(alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.vertical)
                        .font(.system(size: 19))
//                    Spacer()
//                }
                                
                LazyVGrid(columns: [GridItem(.fixed(150)), GridItem(.fixed(150))], spacing: 15) {
                    ForEach(items, id: \.id){ item in
                        VStack(alignment: .center){
                            ZStack{
                                Image(item.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: .infinity,height: 130)
                                    .padding(.bottom, 10)
                                Image(systemName: "heart")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15)
                                    .offset(x: 50, y: 40)
                                
                            }
                            
                            Text(item.name)
                                .font(.system(size: 10))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 10)
                            
                            Text("\(item.price.formatted(.number.precision(.fractionLength(2))))")
                                .font(.system(size: 10))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 10)
                            Spacer()
                        }.frame(width: 150, height: 200)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
        .navigationTitle("Discover a world of jewellery")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(false)
        .font(.system(size: 19))
    }
}

#Preview {
    CategoryView()
    
}
