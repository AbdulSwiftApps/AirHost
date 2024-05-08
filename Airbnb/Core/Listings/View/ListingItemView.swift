//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/24/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
//    var images = [
//        "listing-1",
//        "listing-2",
//        "listing-3",
//        "listing-4"
//    ]

    var body: some View {
        VStack {
            // image
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            // details and rating
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }

                Spacer()

                // rating
                RatingView(listing: listing)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[1])
}
