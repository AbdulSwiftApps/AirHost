//
//  WishListView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/2/24.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
       
                VStack(alignment: .leading) {
                    Text("Log in to view your wishlists.")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                
                LogInButtonView()
            }
            .padding()
            .navigationTitle("Wishlist")

            Spacer()

        }

        
    }
}

#Preview {
    WishListView()
}
