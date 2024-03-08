import SwiftUI

struct GiftWrappingView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    VStack (alignment: .leading) {
                        Image("history")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        Text("EXPERIENCE THE ART OF WRAPPING")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text("GIFT WRAPPING")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text("All Cartier designs are beautifully wrapped in signature Cartier packaging.Gift wrapping is not available for select items including refills and watch straps. Visit your local boutique or contact the Cartier Client Relations Centre to learn more.You can accompany your purchase with a personalised message on a signature Cartier card.")
                            .font(.footnote)
                            .padding(.top, 5)
                            .multilineTextAlignment(.leading)
                        
                        Text("GIFT SELECTIONS")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text("Celebrate or commemorate a special occasion with our thoughtfully curated gift selections. Visit your local boutique or contact your Cartier Client Relations Centre for inspiration in finding the perfect gift.")
                            .font(.footnote)
                            .padding(.top, 5)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding()
                    .padding(.bottom, 20)
                    
                    BottomView()
                    Image("footer")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 700)
                }
            }

        }
    }
}

#Preview {
    GiftWrappingView()
}
