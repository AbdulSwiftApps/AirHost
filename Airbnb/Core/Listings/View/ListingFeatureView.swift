//
//  ListingFeatureView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/7/24.
//

import SwiftUI

struct ListingFeatureView: View {
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(listing.feature) { feature in
                HStack(spacing: 12) {
                    // logo
                    Image(systemName: "\(feature.imageName)")

                    // details
                    VStack(alignment: .leading) {
                        Text("\(feature.title)")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("\(feature.subTitle)")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    ListingFeatureView(listing: DeveloperPreview.shared.listings[0])
}
