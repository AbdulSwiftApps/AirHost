//
//  MainTabView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/2/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView(listing2: DeveloperPreview.shared.listings[1])
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            WishListView()
                .tabItem {
                    Label("Wishlists", systemImage: "heart.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
