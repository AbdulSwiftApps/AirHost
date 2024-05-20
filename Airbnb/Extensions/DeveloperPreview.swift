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
    
    var listings: [Listing] = 
    [
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
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            imageMessage: "listing-3",
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
            imageURLs: ["listing-33", "listing-34", "listing-35", "listing-36"],
            imageMessage: "listing-2",
            address: "5678 SE Ave",
            city: "Renton",
            state: "WA",
            title: "Renton House",
            rating: 4.21,
            feature: [.selfCheckIn],
            amenities: [.wifi, .alarmSystem, .tv],
            type: .house
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Ashly Wood",
            ownerImageUrl: "profile-picture-3",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 599,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-37", "listing-38", "listing-39", "listing-40"],
            imageMessage: "listing-4",
            address: "11825 SE Ave",
            city: "San Jose",
            state: "CA",
            title: "San Jose House",
            rating: 4.69,
            feature: [.superHost, .selfCheckIn],
            amenities: [.wifi, .alarmSystem, .tv, .balcony, .kitchen, .laundry, .pool],
            type: .house
        ),

        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Jane Smith",
            ownerImageUrl: "profile-picture-5",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 400,
            latitude: 37.7749,
            longitude: -122.4194,
            imageURLs: ["listing-9", "listing-10"],
            imageMessage: "listing-9",
            address: "4567 Market St",
            city: "San Francisco",
            state: "CA",
            title: "San Francisco Townhouse",
            rating: 4.50,
            feature: [],
            amenities: [.wifi, .tv, .balcony, .laundry],
            type: .townhouse
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Alex Johnson",
            ownerImageUrl: "profile-picture-6",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 8,
            numberOfBeds: 5,
            pricePerNight: 1200,
            latitude: 40.7128,
            longitude: -74.0060,
            imageURLs: ["listing-100", "listing-101", "listing-13", "listing-14", "listing-15"],
            imageMessage: "listing-13",
            address: "7890 Broadway",
            city: "New York",
            state: "NY",
            title: "NYC Luxury House",
            rating: 4.90,
            feature: [.superHost],
            amenities: [.wifi, .tv, .alarmSystem, .balcony, .pool, .kitchen],
            type: .house
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Emily Davis",
            ownerImageUrl: "profile-picture-7",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 300,
            latitude: 51.5074,
            longitude: -0.1278,
            imageURLs: ["listing-17", "listing-18", "listing-19", "listing-20"],
            imageMessage: "listing-17",
            address: "1234 Oxford St",
            city: "London",
            state: "UK",
            title: "London Cozy Apartment",
            rating: 4.60,
            feature: [],
            amenities: [.wifi, .kitchen],
            type: .apartment
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Michelle Brown",
            ownerImageUrl: "profile-picture-8",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 650,
            latitude: 48.8566,
            longitude: 2.3522,
            imageURLs: ["listing-21", "listing-22", "listing-23", "listing-24"],
            imageMessage: "listing-21",
            address: "5678 Champs-Élysées",
            city: "Paris",
            state: "FA",
            title: "Parisian Villa",
            rating: 4.80,
            feature: [.superHost],
            amenities: [.wifi, .alarmSystem, .tv, .kitchen],
            type: .villa
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Doe",
            ownerImageUrl: "profile-picture-4",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 5,
            numberOfBeds: 3,
            pricePerNight: 750,
            latitude: 34.0522,
            longitude: -118.2437,
            imageURLs: ["listing-5", "listing-6", "listing-7"],
            imageMessage: "listing-5",
            address: "7890 Hollywood Blvd",
            city: "Los Angeles",
            state: "CA",
            title: "Hollywood House",
            rating: 4.75,
            feature: [.selfCheckIn],
            amenities: [.wifi, .tv, .kitchen],
            type: .house
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "David Wilson",
            ownerImageUrl: "profile-picture-9",
            numberOfBedrooms: 6,
            numberOfBathrooms: 5,
            numberOfGuests: 10,
            numberOfBeds: 6,
            pricePerNight: 1500,
            latitude: 41.9028,
            longitude: 12.4964,
            imageURLs: ["listing-25", "listing-26", "listing-27", "listing-28"],
            imageMessage: "listing-25",
            address: "9012 Via Condotti",
            city: "Rome",
            state: "IT",
            title: "Roman Villa",
            rating: 4.95,
            feature: [.superHost, .selfCheckIn],
            amenities: [.wifi, .pool, .tv, .kitchen, .laundry, .balcony, .alarmSystem],
            type: .villa
        ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Sophia Martinez",
            ownerImageUrl: "profile-picture-10",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 3,
            numberOfBeds: 2,
            pricePerNight: 350,
            latitude: -33.8688,
            longitude: 151.2093,
            imageURLs: ["listing-29"],
            imageMessage: "listing-29",
            address: "3456 George St",
            city: "Sydney",
            state: "NSW",
            title: "Sydney Harbour Apartment",
            rating: 4.55,
            feature: [.selfCheckIn],
            amenities: [.wifi, .tv, .balcony],
            type: .apartment
        )
    ]
    
    var messages: [Messages] = 
    [
        .init(
            airHostMessageTitle: .closedStatus,
            airHostSupport: "AirHost Support",
            airHostMessage: "Hi, welcome to AirHost! Hope you like using our AirHost app!",
            tripStatus: .upcommingStatus,
            hostMessage: "Hi Momotaj, hope you're having fun staying here!",
            dateStayed: "3/14 - 3/17",
            dateMessaged: "Today"
        ),
        
        .init(
            airHostMessageTitle: .closedStatus,
            airHostSupport: "AirHost Support",
            airHostMessage: "Hi, welcome to AirHost! Hope you like using our AirHost app!",
            tripStatus: .upcommingStatus,
            hostMessage: "Hi Alex, hope you're having fun staying here!",
            dateStayed: "3/1 - 3/17",
            dateMessaged: "Yesterday"
        ),
        
        .init(
            airHostMessageTitle: .closedStatus,
            airHostSupport: "AirHost Support",
            airHostMessage: "Hi, welcome to AirHost! Hope you like using our AirHost app!",
            tripStatus: .upcommingStatus,
            hostMessage: "Hi David, hope you're having fun staying here!",
            dateStayed: "3/20 - 3/25",
            dateMessaged: "3/20"
        ),
        
        .init(
            airHostMessageTitle: .closedStatus,
            airHostSupport: "AirHost Support",
            airHostMessage: "Hi, welcome to AirHost! Hope you like using our AirHost app!",
            tripStatus: .upcommingStatus,
            hostMessage: "Hi Hassan, hope you're having fun staying here!",
            dateStayed: "3/14 - 3/17",
            dateMessaged: "Today"
        ),
        
        .init(
            airHostMessageTitle: .closedStatus,
            airHostSupport: "AirHost Support",
            airHostMessage: "Hi, welcome to AirHost! Hope you like using our AirHost app!",
            tripStatus: .upcommingStatus,
            hostMessage: "Hi Momotaj, hope you're having fun staying here!",
            dateStayed: "3/14 - 3/17",
            dateMessaged: "Yesterday"
        ),
        
        .init(
            airHostMessageTitle: .closedStatus,
            airHostSupport: "AirHost Support",
            airHostMessage: "Hi, welcome to AirHost! Hope you like using our AirHost app!",
            tripStatus: .upcommingStatus,
            hostMessage: "Hi Momotaj, hope you're having fun staying here!",
            dateStayed: "3/3 - 3/23",
            dateMessaged: "3/3"
        ),
    ]
}
