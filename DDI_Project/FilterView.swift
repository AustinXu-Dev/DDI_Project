import SwiftUI

struct FilterView: View {
    
    @State var titles = ["CATEGORY", "COMPATIBLE WITH", "METAL", "COLOUR", "COLLECTION", "THEME", "SIZE", "PRIZE"]
    
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(titles, id: \.self) { title in
                HStack {
                    Text(title)
                        .padding()
                    
                    Spacer()
                    
                    Image(systemName: "arrowtriangle.down.fill")
                }
                .padding([.leading, .trailing])
                
                  Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing])
            }
        }
        
        Spacer()
        
        HStack {
            Text("53 RESULTS")
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Apply")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(.black.opacity(0.7))
            })
        }
        .padding()
        .background(.gray)
        .padding(.bottom, 20)
    }
}

#Preview {
    FilterView()
}
