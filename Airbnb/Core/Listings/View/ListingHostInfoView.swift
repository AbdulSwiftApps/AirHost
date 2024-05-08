//
//  ListingHostInfoView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/7/24.
//

import SwiftUI

struct ListingHostInfoView: View {
    let listing: Listing
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                    .font(.headline)
                    .frame(width: 250, alignment: .leading)

                HStack(spacing: 2) {
                    Text("\(listing.numberOfGuests) guests -")
                    Text("\(listing.numberOfBedrooms) bedroom -")
                    Text("\(listing.numberOfBeds) beds -")
                    Text("\(listing.numberOfBathrooms) baths")
                }
                .font(.caption)
            }
            .frame(width: 300, alignment: .leading)
            Spacer()

            ProfilePictureView(listing: listing)
        }
        .padding()
    }
}

#Preview {
    ListingHostInfoView(listing: DeveloperPreview.shared.listings[0])
}
