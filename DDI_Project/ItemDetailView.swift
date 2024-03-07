import SwiftUI

struct ItemDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20){
                VStack(alignment: .leading){
                    Image("leve_necklace")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 700)
                    
                    
                    Text("LEVE NECKLACE")
                        .font(.system(size: 20, weight: .semibold))
                        .padding()
                    
                    Text("LOVE necklace, 18K rose gold (750/1000). Inner diameter 8mm. Chain length: 440mm.")
                        .font(.system(size: 13))
                        .padding()
                    
                    Text("Please note that the carat weight, number of stones and product dimensions will vary based on the size of the creation you order. For detailed information please contact us.")
                        .font(.system(size: 13))
                        .padding(.horizontal)
                }
                
                HStack(spacing: 30){
                    Image("shipping_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("COMPLIMENTARY SHIPPING")
                }
                HStack(spacing: 26){
                    Image("return_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("30-DAY RETURNS & SHIPPING")
                }
                
                HStack(spacing: 20){
                    VStack{
                        Image("yellow_gold")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        Text("Yellow gold")
                            .font(.system(size: 13))
                    }
                    VStack{
                        Image("white_gold")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        Text("White gold")
                            .font(.system(size: 13))
                    }
                }
                .padding(.vertical)
                
                HStack{
                    Text("THB 93,000")
                        .font(.system(size: 20, weight: .semibold))
                    Spacer().frame(width: 30)
                    Text("including sales tax")
                        .font(.system(size: 13))
                    Spacer()
                }.padding(.leading, 20)
                
                HStack{
                    Rectangle()
                        .frame(width: 300, height: 40)
                        .foregroundStyle(.black.opacity(0.7))
                        .overlay {
                            Text("ADD TO BAG")
                                .foregroundStyle(.white)
                        }
                    Rectangle()
                        .frame(width: 50, height: 40)
                        .foregroundStyle(.white)
                        .border(Color.black)
                }
                
                HStack{
                    Image("line_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("ORDER VIA LINE")
                        .font(.system(size: 13))
                        .padding(.leading, 30)
                    Spacer()
                }.padding(.leading, 50)
                
                HStack{
                    Image("phone_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("ORDER VIA PHONE +662-430-4488")
                        .font(.system(size: 13))
                        .padding(.leading, 30)
                    Spacer()


                }.padding(.leading, 50)
                
                HStack{
                    Image("headphone_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("CONTACT AN AMBASSADOR")
                        .font(.system(size: 13))
                        .padding(.leading, 30)
                    Spacer()


                }.padding(.leading, 50)
                
                HStack{
                    Image("share_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("SHARE   |   Ref.B7212300")
                        .font(.system(size: 13))
                        .padding(.leading, 30)
                    Spacer()


                }.padding(.leading, 50)
                
                Text("RELATED CREATIONS")
                    .font(.system(size: 27, weight: .semibold))
                    .padding()
                Text("Get inspired by the other unique designs")
                    .font(.system(size: 18))
                    .padding()
                Image("related_creations")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 700)
                Text("LEVE NECKLACE DIAMONDS")
                    .font(.system(size: 20))
                Text("Rose gold, diamonds")
                    .font(.system(size: 13))
                Text("THB 181,000")
                    .font(.system(size: 13, weight: .semibold))
                
                Rectangle()
                    .frame(width: 300, height: 40)
                    .foregroundStyle(.black.opacity(0.7))
                    .overlay {
                        Text("ADD TO BAG")
                            .foregroundStyle(.white)
                    }
                Divider()
                
            }
            .frame(maxWidth: .infinity)
//            .background(.red)
        }
    }
}

#Preview {
    ItemDetailView()
}
