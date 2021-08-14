//
//  TabBarView.swift
//  food-app-alpha
//
//  Created by Mark Martin on 7/25/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            PostView()
                .tabItem {
                    Image(systemName: "person.3")
                }
            AddView()
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            SavedView()
                .tabItem {
                    Image(systemName: "pin")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
            
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .systemBackground
        }
        .accentColor(.black)
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
