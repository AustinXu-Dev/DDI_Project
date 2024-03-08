//
//  DeliveryReadMoreView.swift
//  DDI_Project
//
//  Created by Austin Xu on 2024/3/8.
//

import SwiftUI

struct DeliveryReadMoreView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    VStack (alignment: .leading) {
                        Image("history")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        Text("CHOOSE THE DELIVERY METHOD AND FIND OUT MORE ABOUT RETURNS")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text("DELIVERY LEAD TIME AND COSTS")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.top, 20)
                            .foregroundStyle(.black.opacity(0.9))
                        
                        Text("ORDER TRACKING")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.top, 20)
                            .foregroundStyle(.black.opacity(0.9))
                        
                        Text("RETURN & EXCHANGE POLICY")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.top, 20)
                            .foregroundStyle(.black.opacity(0.9))
                        
                        Text("DELIVERY LEAD TIME AND COSTS")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                            .padding(.leading, 30)
                        
                        Text("HOME DELIVERY: COMPLIMENTARY & SECURE DELIVERY")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text("Cartier offers delivery throughout Thailand at no additional cost (except Hotel Delivery) with high standard delivery service operators.Cartier leaves a lasting impression on customers, as if they were receiving boutique service.Cartier's signature red bags will be stored in a box as well as products and wrapped with a tight strap and a Security Tag.")
                            .font(.footnote)
                            .padding(.top, 5)
                            .multilineTextAlignment(.leading)
                        
                        Text("Delivery-Time")
                            .font(.headline)
                            .bold()
                        Text("5-7 business days* (for remote areas may take up to ten days)")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Text("Please note that:")
                            .font(.headline)
                            .bold()
                        Text("We delivery in Thailand only.")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Text("We are unable to deliver to the hotel address.")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Text("ADDITIONAL LEAD TIME")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        Text("Delivery across Thailand only")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Text("Limited stock on a creation might require an additional lead-time of 5-7 days.")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Text("Certain creations may subject to customs inspection that typically requires additional 3-5 working days of delivery.")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Text("Creations that require a CITES certificate might require an additional lead time of up to 10 working days. CITES certificates are needed to import protected products by CITES (the Convention on International Trade in Endangered Species of Wild Fauna and Flora).")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Text("For more information regarding your delivery, please contact our Client Relations Centre on +662-430-4488 or by email at customerservice.th@cartier.com or Chat with our LINE ambassador")
                            .padding(.top,20)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Text("*Not applicable for Saturdays, Sundays, Public Holidays, Christmas Eve and New Year’s Eve. Delivery lead times may be extended during the festive season and affected clients will be notified promptly via email.  More details about Public Holidays")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.black)

                    }
                    .padding()
                    .padding(.bottom, 20)
                    Divider()
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
    DeliveryReadMoreView()
}
