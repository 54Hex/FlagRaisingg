//
//  rickView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 16/6/21.
//

import SwiftUI

struct rickView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack{
            SwiftUIGIFPlayerView(gifName: "tenor")
                .scaledToFill()
                .frame(width: 200, height: 900, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: 200, height: 50)
                    .offset(x: -90, y: 270)
                Button("Click to learn more") {
                    openURL(URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
                }
                .background(Color.black)
                .frame(width: 500, height: 600)
                .font(.system(size: 22, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
                .offset(x: -90, y: 270)
                .cornerRadius(10)
                .padding()
            }
        }
        
        
    }
    
    
}


struct rickView_Previews: PreviewProvider {
    static var previews: some View {
        rickView()
    }
}
