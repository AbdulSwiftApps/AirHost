//
//  ListingAmenitiesView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/7/24.
//

import SwiftUI

struct ListingAmenitiesView: View {
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            ForEach(listing.amenities) { offer in
                HStack {
                    Image(systemName: "\(offer.imageName)")
                        .frame(width: 32)
                    
                    Text("\(offer.title)")
                        .font(.footnote)
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListingAmenitiesView(listing: DeveloperPreview.shared.listings[0])
}
