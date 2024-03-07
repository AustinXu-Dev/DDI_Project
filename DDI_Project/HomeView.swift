import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
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
                    CategoryView()
                }
                if value == "GoToBracelets"{
                    BraceletsCategoryView()
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}

