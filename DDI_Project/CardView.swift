import SwiftUI

struct CardView: View {
    var image: String
    var title: String
    var caption: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(title)
                .font(.title3)
                .bold()
                .padding(.top, 20)
            
            Text(caption)
                .font(.caption)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing], 20)
        }
    }
}

#Preview {
    CardView(image: "three", title: "THE ANNIVERSARY OF AN ICON", caption: "To celebrate 100 years of Trinity, Cartier has imagined two new, designs; simple and pure ,yet daring , along with a reissue of the XL bracelet, a cult creation, and an XL version of the iconic ring.")
}
