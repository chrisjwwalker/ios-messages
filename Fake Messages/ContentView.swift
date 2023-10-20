//
//  ContentView.swift
//  Fake Messages
//
//  Created by Chris J W Walker on 18/08/2023.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case messages
        case settings
    }
    
    @State private var selection: Tab = .messages
    
    var body: some View {
        TabView(selection: $selection) {
            Views.MessagesList()
                .badge(2)
                .tabItem {
                    Label("Messages", systemImage: "envelope")
                }
                .tag(Tab.messages)
            Views.Settings()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(Tab.settings)
        }
    }
}

#Preview {
    ContentView()
}
