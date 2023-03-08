//
//  ContentView.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import SwiftUI

// TODO: find a new API to use; preferably one that can be in the same level of "cool" as Breaking Bad and Better Call Saul; also consider just building my own (by obviously finding someone to do it for me)
struct ContentView: View {
    var body: some View {
        TabView {
            QuoteView(show: AppConstants.bbName)
                .tabItem {
                    Label(AppConstants.bbName, systemImage: "tortoise")
                }
            
            QuoteView(show: AppConstants.bcsName)
                .tabItem {
                    Label(AppConstants.bcsName, systemImage: "briefcase")
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
