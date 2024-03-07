
import SwiftUI

struct CheckoutView: View {
    
    @State var titles = ["checkoutOne", "checkoutTwo"]
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        
                    Text("SHOPPING BAG (2)")
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    ForEach(titles, id: \.self) { title in
                        HStack (spacing: 20){
                            Image(title)
                            VStack (alignment : .leading) {
                                Text("LEVE NECK-LACE, 2 DIA- MONDS")
                                Text("Rose, gold, diamonds")
                                    .font(.caption)
                                Text("THB 93,000")
                            }
                        }
                    }
                    
                    HStack (spacing: 20){
                        Image("checkoutThree")
                        VStack (alignment : .leading) {
                            Text("TRINITY BRACELET")
                            Text("gold")
                                .font(.caption)
                            Text("THB 57,000")
                        }
                    }
                    Divider()
                    
                    VStack (alignment: .leading) {
                        HStack {
                            Text("SUBTOTAL")
                            Spacer()
                            Text("THB 292,800")
                                .bold()
                        }
                        .padding([.top, .leading, .trailing])
                        
                        Text("Shipping and taxes calculated at checkout")
                            .font(.caption2)
                            .foregroundColor(.gray)
                            .padding(.leading)
                    }
                    
                    Button(action: {}, label: {
                        Text("PROCEED TO CHECKOUT")
                            .padding(10)
                            .foregroundColor(.white)
                            .background(.black.opacity(0.8))
                            .padding()
                    })
                }
                
            }
        }
    }
}

#Preview {
    CheckoutView()
}
