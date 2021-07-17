//
//  circleView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 19/6/21.
//

import SwiftUI

struct circleView: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.gray)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: .init(lineWidth: 20.0,
                                     lineCap: .round,
                                     lineJoin: .round))
                .foregroundColor(.gray)
                .rotationEffect(Angle(degrees: 270))
        }
    }
}

struct circleView_Previews: PreviewProvider {
    static var previews: some View {
        circleView(progress: 0.25)
    }
}
