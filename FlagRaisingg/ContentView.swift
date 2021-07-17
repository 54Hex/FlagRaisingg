//
//  ContentView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 16/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var offset: CGFloat = 20
    
    var body: some View {
        
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                //embed horizontal stack to text so it'll make a rectange
                Rectangle()
                    .frame(width: 10)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 1.5, x: -10, y: 10)
                    
                Text("🇸🇬")
                    .font(.system(size: 100))
                    .offset(x: 0, y: offset)
                    .shadow(color: .black, radius: 2, x: 5, y: 5)
                
            }
            ZStack {
                Rectangle()
                    .frame(width: 60, height: 50)
                    .cornerRadius(10)
                    .offset(y: -48)
                    .shadow(color: .black, radius: 5, x: 3, y: 3)
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.red]), startPoint: .leading, endPoint: .topTrailing)
                    .frame(width: 60, height: 50)
                    .cornerRadius(10)
                    .frame(width: 1, height: 1, alignment: .bottom)
                    .offset(y: -25)
                Button("🦁") {
                    offset -= 10
                }
                .offset(y: -50)
                .font(.title)
                .padding()
            }
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        MainView()
    }
}



