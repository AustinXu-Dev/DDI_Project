import SwiftUI

struct ShoppingBagView: View {
    var body: some View {
        ScrollView {
            HStack{
                VStack{
                    Image("tiger")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                    Text("SHOPPING BAG\t4 Items")
                        .frame(alignment: .leading)
                }
                Spacer()
            }.padding()
            
            Rectangle()
                .frame(width: 400, height: 120)
                .foregroundStyle(.gray.opacity(0.7))
                .overlay {
                    Text("Please note that the carat weight, number of stones and product dimensions will vary based on the size of the creation you order. For detailed information please contact us.")
                        .font(.system(size: 14))
                        .foregroundStyle(.black.opacity(0.7))
                        .padding(15)
                }
            Text("Kindly note that the purchase has reached THB 100,000, therefore we are required under the law to collect additional information before the transaction can be concluded.")
                .font(.system(size: 14))
                .foregroundStyle(.black.opacity(0.7))
                .padding(15)
            
            Text("BACK TO SHOPPING")
                .font(.system(size: 13, weight: .semibold))
                
            
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading, spacing: 10) {
                        Text("DELIVERY")
                            .font(.system(size: 15, weight: .semibold))
                        Text("We provide high-standard complimentary delivery with nationwide insurance coverage.")
                            .font(.system(size: 14))
                        Text("View Delivery")
                            .font(.system(size: 15, weight: .semibold))
                    }
                    Spacer()
                }.padding()
            }
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading, spacing: 10) {
                        Text("RETURNS & EXCHANGE")
                            .font(.system(size: 15, weight: .semibold))
                        Text("Your purchase can be returned or exchanged once within 30 days at no extra cost, excluding personalized products.")
                            .font(.system(size: 14))
                        Text("Returns & Exchange Policy")
                            .font(.system(size: 15, weight: .semibold))
                        Text("100% SECURE PAYMENT")
                        
                        Image("payment")
                        
                        Text("All transaction are safe and secure.")
                            .font(.system(size: 10))
                            .foregroundStyle(.black.opacity(0.5))
                        
                    }
                    Spacer()
                }.padding()
            }
            Image("footer")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 700)

            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)

    }
}

#Preview {
    ShoppingBagView()
}
