//
//  HightenAlert.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 18/6/21.
//

import SwiftUI

struct HightenAlert: View {
    
    @State var offset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Text("Info:")
                .font(.system(size: 35.0, weight: .bold, design: .rounded))
                .offset(x: -150, y: -360)
            Text("A very boring flag raising app made by wx. And also I spent few hours trying to figure how to improve this app lol. I guess what you can do here is just clicking on the 'highten' button to make it go higher. For now, its just this...I guess? 🤔")
                .font(.system(size: 25, weight: .semibold, design: .rounded))
                .frame(width: 370)
                .offset(x: 10, y: -200)
                
            Text("Heighten!")
                .foregroundColor(.white)
                .frame(width: 120, height: 55)
                .font(.system(size: 22, weight: .semibold, design: .rounded))
                .background(RoundedRectangle(cornerRadius: 10))
                .offset(x: 10, y: 300)
                .offset(x: 0, y: offset)
            
                .onTapGesture {
                    offset -= 10
                }
            
        }
    }
}

struct HightenAlert_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        HightenAlert()
    }
}
