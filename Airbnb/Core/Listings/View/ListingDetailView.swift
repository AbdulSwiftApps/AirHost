//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/24/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    let listing: Listing
    
    var body: some View {
        VStack {
            ScrollView {
                // image + back button
                ZStack(alignment: .topLeading) {
                    ListingImageCarouselView(listing: listing)
                        .frame(height: 320)
                    
                    ListingDetailBackButtonView()
                }
                
                // place info
                ListingPlaceInfoView(listing: listing)

                Divider()

                // host info
                ListingHostInfoView(listing: listing)

                Divider()
                
                // listing feature
                ListingFeatureView(listing: listing)

                Divider()
                
                // bedrooms
                ListingBedroomsView(listing: listing)
                
                Divider()
                
                // listing amenities
                ListingAmenitiesView(listing: listing)
                
                Divider()
                
                
                // map
                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll be")
                        .font(.headline)
                    
                    Map()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .padding()
                
            }
            .toolbar(.hidden, for: .tabBar)
            .ignoresSafeArea()

            // sticky view
            StickyView()
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
