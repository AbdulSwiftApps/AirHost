//
//  RatingView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/24/24.
//

import SwiftUI

struct RatingView: View {
    let listing: Listing

    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text(String(format: "%.2f", listing.rating))
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView(listing: DeveloperPreview.shared.listings[0])
}
