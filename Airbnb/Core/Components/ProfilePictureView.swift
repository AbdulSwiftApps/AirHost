//
//  ProfilePictureView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/24/24.
//

import SwiftUI

struct ProfilePictureView: View {
    let listing: Listing
    
    var body: some View {
        Image("\(listing.ownerImageUrl)")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 4)
    }
}

#Preview {
    ProfilePictureView(listing: DeveloperPreview.shared.listings[0])
}
