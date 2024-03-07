import SwiftUI

struct DeliveryView: View {
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.gray.opacity(0.7))
                .frame(maxWidth: .infinity)
                .frame(height: 350)
                .overlay(
                    VStack {
                        Image(systemName: "truck.box")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 10)
                        Text("COMPLENTARY DELIVERY")
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        Image(systemName: "truck.box")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 10)
                        Text("COMPLENTARY GIFT WRAPPING")
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        Image(systemName: "truck.box")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 10)
                        Text("FUSS-FREE RETURNS & EXCHANGES")
                            .foregroundColor(.white)
                            .padding(.bottom)
                    }
                )
        }
    }
}

#Preview {
    DeliveryView()
}
