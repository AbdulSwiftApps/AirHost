//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/5/24.
//

// mock data

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Abdul Mueed Hassan",
            ownerImageUrl: "profile-picture-2",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-3", "listing-2", "listing-1", "listing-4"],
            address: "1234 Main SE Ave",
            city: "Seattle",
            state: "WA",
            title: "Seattle Villa",
            rating: 4.86,
            feature: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Md Hossain",
            ownerImageUrl: "profile-picture",
            numberOfBedrooms: 5,
            numberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 899,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-2", "listing-4", "listing-1", "listing-3"],
            address: "5678 SE Ave",
            city: "Renton",
            state: "WA",
            title: "Renton House",
            rating: 4.21,
            feature: [.selfCheckIn],
            amenities: [.wifi, .alarmSystem, .tv],
            type: .house
        )
    ]
}
