//
//  ListingPlaceInfoView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/7/24.
//

import SwiftUI

struct ListingPlaceInfoView: View {
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("\(listing.title)")
                .font(.title)
                .fontWeight(.semibold)

            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    RatingView(listing: listing)
                    Text(" - ")

                    Text("28 reviews")
                        .fontWeight(.semibold)
                        .underline()
                        .onTapGesture {
                            print("review button clicked")
                        }
                }
                Text("\(listing.city), \(listing.state)")
            }
            .font(.caption)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview {
    ListingPlaceInfoView(listing: DeveloperPreview.shared.listings[0])
}
