import SwiftUI

struct HomeView: View {
    @State var navPath: [String] = []
    var body: some View {
        NavigationStack(path: $navPath) {
            ScrollView(showsIndicators: false) {
                CardView(image: "three", title: "THE ANNIVERSARY OF AN ICON", caption: "To celebrate 100 years of Trinity, Cartier has imagined two new, designs; simple and pure ,yet daring , along with a reissue of the XL bracelet, a cult creation, and an XL version of the iconic ring.")
                
                TrintySelectionView()
                
                NavigationLink(value: "mainToCategory") {
                    Text("Discover more")
                }
                
                CardView(image: "five", title: "CARTIER CELEBRATES ONE HUNDRED YEARS OF THE TRINITY ICON", caption: "To celebrate 100 years of Trinity, Cartier has imagined two new, designs; simple and pure ,yet daring , along with a reissue of the XL bracelet, a cult creation, and an XL version of the iconic ring.")
                    .padding()
                
                CardView(image: "six", title: "STACKING GUIDE", caption: "To celebrate 100 years of Trinity, Cartier has imagined two new, designs; simple and pure ,yet daring , along with a reissue of the XL bracelet, a cult creation, and an XL version of the iconic ring.")
                    .padding()

                CardView(image: "eight", title: "LOVE", caption: "To celebrate 100 years of Trinity, Cartier has imagined two new, designs; simple and pure ,yet daring , along with a reissue of the XL bracelet, a cult creation, and an XL version of the iconic ring.")
                    .padding()

                CardView(image: "nine", title: "CONTACT A CARTIER SAKES ADVISER", caption: "To celebrate 100 years of Trinity, Cartier has imagined two new, designs; simple and pure ,yet daring , along with a reissue of the XL bracelet, a cult creation, and an XL version of the iconic ring.")
                    .padding()

                DeliveryView()
                    .padding(.bottom)
                
                BottomView()
            }
            
            
            .navigationDestination(for: String.self) { value in
                if value == "mainToCategory"{
                    CategoryView(path: $navPath)
                }
                if value == "GoToBracelets"{
                    BraceletsCategoryView(path: $navPath)
                }
                if value == "GoToItemDetail"{
                    ItemDetailView(path: $navPath)
                }
                if value == "ReadMore"{
                    Text("Read more")
                }
                if value == "GoToCheckout"{
                    CheckoutView(path: $navPath)
                }
                if value == "FinalShopping"{
                    ShoppingBagView(path: $navPath)
                }
                if value == "ReadMore"{
                    GiftWrappingView()
                }
                if value == "DeliveryReadMore"{
                    DeliveryReadMoreView()
                }
                if value == "Success"{
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .foregroundStyle(.green)
                        .scaledToFit()
                    Text("You've successfully checkedout.")
                    Text("Thanks for your purchase")
                }

            }
            
        }
    }
}

#Preview {
    HomeView()
}

