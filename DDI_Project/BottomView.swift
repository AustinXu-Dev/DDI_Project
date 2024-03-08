import SwiftUI

struct BottomView: View {
    var body: some View {
        VStack {
            Text("SUBSCRIBE TO OUR NEWSLETTER")
                .bold()
            
            VStack (alignment: .leading) {                
                VStack {
                      HStack {
                          Text("Email")
                              .padding()
                          
                          Spacer()
                          
                          Button(action: {
                              
                          }) {
                              Text("Subscribe")
                                  .padding()
                                  .foregroundColor(.white)
                                  .background(Color.gray)
                                  .cornerRadius(8)
                          }
                          .padding(.trailing)
                      }
                      
                      Rectangle()
                        .frame(height: 1)
                          .foregroundColor(.gray)
                  }
                  .padding()
                
                VStack (alignment: .leading) {
                    Text("CUSTOMER CARE")
                        .padding(2)
                    Text("OUR COMPANY")
                        .padding(2)

                    Text("LEGAL & PRIVACY")
                        .padding(2)
                }
                .padding([.leading, .bottom])
                
                Divider()
            }
            
            VStack  {
                Text("FOLLOW US")
                    .foregroundColor(.gray)
                    .bold()
                
                HStack {
                    Image("ig")
                    Image("fb")
                    Image("pinter")
                    Image("youtube")
                    Image("twitter")
                    Image("line")
                }
                            
                Image("conclusion")
            }
            

        }
    }
}

#Preview {
    BottomView()
}
