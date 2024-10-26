

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).fill(.white).frame(height: 40)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(primaryColor)
                Text(text).font(.title3)
                    .foregroundColor(primaryColor)
            }).padding(.all)
    }
}



struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+971 11 11 11", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
    
}
