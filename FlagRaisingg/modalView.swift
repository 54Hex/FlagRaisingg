//
//  modalView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 19/6/21.
//

import SwiftUI


struct modalView: View {
    
    var end: Bool
    
    var body: some View {
        Image(systemName: "checkmark").font(.system(size: 100))
        Text("Quiz completed").font(Font.system(size: 30))
            .padding()
    }
}

struct modalView_Previews: PreviewProvider {
    static var previews: some View {
        modalView(end: true)
        modalView(end: false)
    }
}
