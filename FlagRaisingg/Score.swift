//
//  Score.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 19/6/21.
//

import SwiftUI

struct Score: View {
    
    var score: Int
    var totalQuestions: Int
    
    var body: some View {
        
            VStack{
                circleView(progress: CGFloat(score) /
                                        CGFloat(totalQuestions))
                    .frame(width: 150, height: 150)
                
                Text("Score:").font(Font.system(size: 30))
                Text("\(score)/\(totalQuestions)").font(Font.system(size: 30))
                    .bold()
            }
            .padding()
            .opacity(0.8)
            .cornerRadius(10)
            
        
    }
}

struct Score_Previews: PreviewProvider {
    static var previews: some View {
        Score(score: 4, totalQuestions: 4)
    }
}
