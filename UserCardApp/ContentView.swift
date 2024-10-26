

import SwiftUI

let secondryColor = Color(red: 0.58, green: 0.65, blue: 0.65)
let primaryColor = Color(red: 0.20, green: 0.29, blue: 0.37)

struct ContentView: View {
    var body: some View {
      
        ZStack {
            primaryColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("example").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150,height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(secondryColor, lineWidth: 2))
                Text("Muhammad Mujtaba")
                    .font(.largeTitle)
                    .bold()
                .foregroundColor(secondryColor)
                Text("Senior Mobile Enginner")
                .font(.title3)
                .bold()
            .foregroundColor(secondryColor)
               
                InfoView(text: "+971 11 11 11", imageName: "phone.fill")
                InfoView(text: "immujtaba44@gmail.com", imageName: "envelope.fill")
            }
        }
     
    }
}


#Preview {
    ContentView()
}

