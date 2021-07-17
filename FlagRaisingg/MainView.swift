//
//  MainView.swift
//  FlagRaisingg
//
//  Created by Conqueriings on 16/6/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Flag", systemImage:"flag.fill")
                }
            FlagQuizView()
                .tabItem {
                    Text("Quiz")
                    Image(systemName: "pencil")
                }
            HightenAlert()
                .tabItem {
                    Label("Info", systemImage: "lock.shield.fill")
                }
            rickView()
                .tabItem {
                    Text("Contact")
                    Image(systemName: "person.2.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
