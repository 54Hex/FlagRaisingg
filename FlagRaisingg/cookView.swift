//
//  cookView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 17/6/21.
//

import SwiftUI
import RealityKit

struct cookView: View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> ARView {
        
        
        let arView = ARView(frame: .zero)
        return arView
    }
    func updateUIView(_ uiView: ARView, context: Context) {
    }
}

struct cookView_Previews: PreviewProvider {
    static var previews: some View {
        cookView()
    }
}
