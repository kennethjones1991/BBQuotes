//
//  ContentView.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuoteView()
                .tabItem {
                    Label("Breaking Bad", systemImage: "tortoise")
                }
            
            Text("Better Call Saul View")
                .tabItem {
                    Label("Better Call Saul", systemImage: "briefcase")
                }
        }
        .onAppear {
            UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
